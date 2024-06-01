import re
from typing import List
from langchain_core.pydantic_v1 import BaseModel, Field, validator
import datetime

class Plan(BaseModel):
    activity: str = Field(description='The activity that the character wants to do at the specified time.') 
    start: str = Field(description="Provide the start time of the activity in the 'hh AM/PM' format. Ensure it strictly adheres to this 12-hour time format.")
    end: str = Field(description="Provide the end time of the activity in the 'hh AM/PM' format. Ensure it strictly adheres to this 12-hour time format.")

    # validate the time format
    @validator("start")
    def validate_start_time(cls, field):
        # if not re.match(r"^(0[1-9]|1[0-2]):[0-5][0-9] (AM|PM)$", field):
        #     raise ValueError("Invalid time format")
        # return field
        try: 
            start_time = datetime.datetime.strptime(field, '%I:%M %p')
            return field
        except:
            raise ValueError("Invalid time format")
    
    @validator("end")
    def validate_end_time(cls, field):
        # if not re.match(r"^(0[1-9]|1[0-2]):[0-5][0-9] (AM|PM)$", field):
        #     raise ValueError("Invalid time format")
        # return field
        try: 
            start_time = datetime.datetime.strptime(field, '%I:%M %p')
            return field
        except:
            raise ValueError("Invalid time format")

class Plans(BaseModel):
    plans: List[Plan]   


class SubPlan(BaseModel):
    activity: str = Field(description='The activity that the character wants to do at the specified time.') 
    duration: int = Field(description="time in minutes that the character wants to spend on the activity")

class SubPlans(BaseModel):
    subplans: List[SubPlan]