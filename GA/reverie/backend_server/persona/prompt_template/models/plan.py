import re
from typing import List
from langchain_core.pydantic_v1 import BaseModel, Field, validator

class Plan(BaseModel):
    activity: str = Field(description='The activity that the character wants to do at the specified time. It should be a string.') 
    start: str = Field(description="time should be in the 'xx:xx AM' or 'xx:xx PM' format, and it is in a 12-hour system, which means the hour should not exceed 12")
    end: str = Field(description="time should be in the 'xx:xx AM' or 'xx:xx PM' format, and it is in a 12-hour system, which means the hour should not exceed 12")

    # validate the time format
    @validator("start")
    def validate_start_time(cls, field):
        if not re.match(r"^(0[1-9]|1[0-2]):[0-5][0-9] (AM|PM)$", field):
            raise ValueError("Invalid time format")
        return field
    
    @validator("end")
    def validate_end_time(cls, field):
        if not re.match(r"^(0[1-9]|1[0-2]):[0-5][0-9] (AM|PM)$", field):
            raise ValueError("Invalid time format")
        return field

class Plans(BaseModel):
    plans: List[Plan]   


class SubPlan(BaseModel):
    activity: str = Field(description='The activity that the character wants to do at the specified time. It should be a string.') 
    duration: int = Field(description="time in minutes that the character wants to spend on the activity")

class SubPlans(BaseModel):
    subplans: List[SubPlan]