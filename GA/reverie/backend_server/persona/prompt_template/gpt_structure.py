"""
Author: Joon Sung Park (joonspk@stanford.edu)

File: gpt_structure.py
Description: Wrapper functions for calling OpenAI APIs.
"""
import json
import random
from openai import OpenAI
import time

from langchain.output_parsers import PydanticOutputParser
from langchain_core.prompts import PromptTemplate
from langchain_core.pydantic_v1 import BaseModel, Field, validator
from langchain_openai import ChatOpenAI

from utils import *

import inspect
from metrics import metrics
from pool import get_embedding_pool, update_embedding_pool

model_to_run = ChatOpenAI(temperature=0, api_key=openai_api_key, model="gpt-3.5-turbo-0125")

openai_client = OpenAI(
    # This is the default and can be omitted
    # base_url=base_api_url,
    api_key=openai_api_key,
)

client = openai_client

def get_caller_function_names():
    stack = inspect.stack()
    caller_names = [frame.function for frame in stack][2:]
    return '.'.join(caller_names)


def temp_sleep(seconds=0.1):
    if seconds <= 0:
        return
    time.sleep(seconds)


def ChatGPT_single_request(prompt, time_sleep_second=0.1):
    temp_sleep(time_sleep_second)

    start_time = time.time()
    model_name = "gpt-3.5-turbo-0125"

    if key_type == 'azure':
        completion = client.chat.completions.create(
            api_type=openai_api_type,
            api_version=openai_api_version,
            api_base=openai_api_base,
            api_key=openai_api_key,
            engine=model_name,
            messages=[{"role": "user", "content": prompt}]
        )
        message = completion.choices[0].message.content
    elif key_type == 'llama':
        model_name = 'llama-7B'
        completion = client.chat.completions.create(
            api_type=openai_api_type,
            api_version=openai_api_version,
            api_base=openai_api_base,
            api_key=openai_api_key,
            engine=model_name,
            messages=[{"role": "user", "content": prompt}]
        )
        message = completion.choices[0].message.content
    else:
        completion = client.chat.completions.create(
            model=model_name,
            messages=[{"role": "user", "content": prompt}]
        )
        message = completion.choices[0].message.content
    function_name = get_caller_function_names()
    total_token = completion.usage.total_tokens
    time_use = time.time() - start_time
    metrics.call_record(function_name, model_name, total_token, time_use)
    return message


# ============================================================================
# #####################[SECTION 1: CHATGPT-3 STRUCTURE] ######################
# ============================================================================

def GPT4_request(prompt):
    """
  Given a prompt and a dictionary of GPT parameters, make a request to OpenAI
  server and returns the response. 
  ARGS:
    prompt: a str prompt
    gpt_parameter: a python dictionary with the keys indicating the names of  
                   the parameter and the values indicating the parameter 
                   values.   
  RETURNS: 
    a str of GPT-3's response. 
  """
    temp_sleep()

    try:
        completion = client.chat.completions.create(
            model="gpt-3.5-turbo-0125",
            messages=[{"role": "user", "content": prompt}]
        )
        return completion.choices[0].message.content

    except Exception as e:
        metrics.fail_record(e)
        print("ChatGPT ERROR")
        return "ChatGPT ERROR"


def ChatGPT_request(prompt):
    """
  Given a prompt and a dictionary of GPT parameters, make a request to OpenAI
  server and returns the response. 
  ARGS:
    prompt: a str prompt
    gpt_parameter: a python dictionary with the keys indicating the names of  
                   the parameter and the values indicating the parameter 
                   values.   
  RETURNS: 
    a str of GPT-3's response. 
  """
    # temp_sleep()
    try:
        return ChatGPT_single_request(prompt, time_sleep_second=0)
    except Exception as e:
        metrics.fail_record(e)
        print("ChatGPT ERROR")
        return "ChatGPT ERROR"


def GPT4_safe_generate_response(prompt,
                                example_output,
                                special_instruction,
                                repeat=3,
                                fail_safe_response="error",
                                func_validate=None,
                                func_clean_up=None,
                                verbose=False):
    prompt = 'GPT-3 Prompt:\n"""\n' + prompt + '\n"""\n'
    prompt += f"Output the response to the prompt above in json. {special_instruction}\n"
    prompt += "Example output json:\n"
    prompt += '{"output": "' + str(example_output) + '"}'

    if verbose:
        print("CHAT GPT PROMPT")
        print(prompt)

    for i in range(repeat):

        try:
            curr_gpt_response = GPT4_request(prompt).strip()
            end_index = curr_gpt_response.rfind('}') + 1
            curr_gpt_response = curr_gpt_response[:end_index]
            curr_gpt_response = json.loads(curr_gpt_response)["output"]

            if func_validate(curr_gpt_response, prompt=prompt):
                return func_clean_up(curr_gpt_response, prompt=prompt)

            if verbose:
                print("---- repeat count: \n", i, curr_gpt_response)
                print(curr_gpt_response)
                print("~~~~")

        except Exception as e:
            metrics.fail_record(e)
            pass

    return False


def ChatGPT_safe_generate_response(prompt,
                                   example_output,
                                   special_instruction,
                                   repeat=3,
                                   fail_safe_response="error",
                                   func_validate=None,
                                   func_clean_up=None,
                                   verbose=False):
    # prompt = 'GPT-3 Prompt:\n"""\n' + prompt + '\n"""\n'
    prompt = '"""\n' + prompt + '\n"""\n'
    prompt += f"Output the response to the prompt above in json. {special_instruction}\n"
    prompt += "Example output json:\n"
    prompt += '{"output": "' + str(example_output) + '"}'

    if verbose:
        print("CHAT GPT PROMPT")
        print(prompt)

    for i in range(repeat):

        try:
            curr_gpt_response = ChatGPT_request(prompt).strip()
            end_index = curr_gpt_response.rfind('}') + 1
            curr_gpt_response = curr_gpt_response[:end_index]
            curr_gpt_response = json.loads(curr_gpt_response)["output"]

            # print ("---ashdfaf")
            # print (curr_gpt_response)
            # print ("000asdfhia")

            if func_validate(curr_gpt_response, prompt=prompt):
                return func_clean_up(curr_gpt_response, prompt=prompt)

            if verbose:
                print("---- repeat count: \n", i, curr_gpt_response)
                print(curr_gpt_response)
                print("~~~~")

        except Exception as e:
            metrics.fail_record(e)

    return False


def ChatGPT_safe_generate_response_OLD(prompt,
                                       repeat=3,
                                       fail_safe_response="error",
                                       func_validate=None,
                                       func_clean_up=None,
                                       verbose=False):
    if verbose:
        print("CHAT GPT PROMPT")
        print(prompt)

    for i in range(repeat):
        try:
            curr_gpt_response = ChatGPT_request(prompt).strip()
            if func_validate(curr_gpt_response, prompt=prompt):
                return func_clean_up(curr_gpt_response, prompt=prompt)
            if verbose:
                print(f"---- repeat count: {i}")
                print(curr_gpt_response)
                print("~~~~")

        except Exception as e:
            metrics.fail_record(e)
            pass
    print("FAIL SAFE TRIGGERED")
    return fail_safe_response


# ============================================================================
# ###################[SECTION 2: ORIGINAL GPT-3 STRUCTURE] ###################
# ============================================================================

def gpt_request_all_version(prompt, gpt_parameter):
    start_time = time.time()
    response = client.chat.completions.create(
        model=gpt_parameter["engine"],
        messages=[{"role": "user", "content": prompt}],
        temperature=gpt_parameter["temperature"],
        max_tokens=gpt_parameter["max_tokens"],
        top_p=gpt_parameter["top_p"],
        frequency_penalty=gpt_parameter["frequency_penalty"],
        presence_penalty=gpt_parameter["presence_penalty"],
        stream=gpt_parameter["stream"],
        stop=gpt_parameter["stop"], )

    function_name = get_caller_function_names()
    total_token = response.usage.total_tokens
    time_use = time.time() - start_time
    metrics.call_record(
        function_name, gpt_parameter["engine"], total_token, time_use)
    return response


def GPT_request(prompt, gpt_parameter):
    """
  Given a prompt and a dictionary of GPT parameters, make a request to OpenAI
  server and returns the response. 
  ARGS:
    prompt: a str prompt
    gpt_parameter: a python dictionary with the keys indicating the names of  
                   the parameter and the values indicating the parameter 
                   values.   
  RETURNS: 
    a str of GPT-3's response. 
  """
    temp_sleep()
    try:
        response = gpt_request_all_version(prompt, gpt_parameter)

        return response.choices[0].message.content
    except Exception as e:
        metrics.fail_record(e)
        print("TOKEN LIMIT EXCEEDED")
        return "TOKEN LIMIT EXCEEDED"


def generate_prompt(curr_input, prompt_lib_file):
    """
  Takes in the current input (e.g. comment that you want to classifiy) and 
  the path to a prompt file. The prompt file contains the raw str prompt that
  will be used, which contains the following substr: !<INPUT>! -- this 
  function replaces this substr with the actual curr_input to produce the 
  final promopt that will be sent to the GPT3 server. 
  ARGS:
    curr_input: the input we want to feed in (IF THERE ARE MORE THAN ONE
                INPUT, THIS CAN BE A LIST.)
    prompt_lib_file: the path to the promopt file. 
  RETURNS: 
    a str prompt that will be sent to OpenAI's GPT server.  
  """
    if type(curr_input) == type("string"):
        curr_input = [curr_input]
    curr_input = [str(i) for i in curr_input]

    f = open(prompt_lib_file, "r")
    prompt = f.read()
    f.close()
    for count, i in enumerate(curr_input):
        prompt = prompt.replace(f"!<INPUT {count}>!", i)
    if "<commentblockmarker>###</commentblockmarker>" in prompt:
        prompt = prompt.split(
            "<commentblockmarker>###</commentblockmarker>")[1]
    return prompt.strip()


def safe_generate_response(prompt,
                           gpt_parameter,
                           repeat=5,
                           fail_safe_response="error",
                           func_validate=None,
                           func_clean_up=None,
                           verbose=False):
    if verbose:
        print(prompt)

    for i in range(repeat):
        curr_gpt_response = GPT_request(prompt, gpt_parameter)
        if func_validate(curr_gpt_response, prompt=prompt):
            return func_clean_up(curr_gpt_response, prompt=prompt)
        if verbose:
            print("---- repeat count: ", i, curr_gpt_response)
            print(curr_gpt_response)
            print("~~~~")
    return fail_safe_response


def get_embedding(text, model="text-embedding-ada-002"):
    text = text.replace("\n", " ")
    if not text:
        text = "this is blank"

    exist_embedding = get_embedding_pool(text)
    if exist_embedding is not None:
        return exist_embedding

    start_time = time.time()
    if key_type == 'azure':
        response = client.embeddings.create(
            api_base=openai_api_base,
            api_key=openai_api_key,
            api_type=openai_api_type,
            api_version=openai_api_version,
            input=[text],
            engine=model)
    else:
        response = client.embeddings.create(
            input=[text], model=model)

    function_name = get_caller_function_names()
    total_token = response.usage.total_tokens
    time_use = time.time() - start_time
    metrics.call_record(function_name, model, total_token, time_use)

    update_embedding_pool(text, response.data[0].embedding)
    return response.data[0].embedding


if __name__ == '__main__':
    gpt_parameter = {"engine": "text-davinci-003", "max_tokens": 50,
                     "temperature": 0, "top_p": 1, "stream": False,
                     "frequency_penalty": 0, "presence_penalty": 0,
                     "stop": ['"']}
    curr_input = ["driving to a friend's house"]
    prompt_lib_file = "prompt_template/test_prompt_July5.txt"
    prompt = generate_prompt(curr_input, prompt_lib_file)

    def __func_validate(gpt_response):
        if len(gpt_response.strip()) <= 1:
            return False
        if len(gpt_response.strip().split(" ")) > 1:
            return False
        return True

    def __func_clean_up(gpt_response):
        cleaned_response = gpt_response.strip()
        return cleaned_response

    output = safe_generate_response(prompt,
                                    gpt_parameter,
                                    5,
                                    "rest",
                                    __func_validate,
                                    __func_clean_up,
                                    True)

    print(output)
