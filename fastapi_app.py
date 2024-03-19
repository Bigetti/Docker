import json
import os
from fastapi import FastAPI
import requests


app = FastAPI()

@app.on_event("startup")
async def startup_event():
    print("Hello World")

@app.post('/greetings')
async def say_hello(input_data: dict):
    return {'hello_string': f'{input_data.get("name")}, your env is {os.getenv("MY_ENV")}'}

@app.get('/actuator/health')
async def health():
    return 'I am working'



# def create_api():
#     print("Hello World")
#     app = FastAPI()

#     @app.post('/greetings')
#     async def say_hello(input_data: dict):
#         return {'hello_string': f'{input_data["name"]}, your env is  {os.getenv("MY_ENV")}'}
    

#     @app.get('/actuator/health')
#     assync def health():
#         return 'I am working'