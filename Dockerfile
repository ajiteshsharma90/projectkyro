# 
FROM python:3.9

# 
WORKDIR /code

# 
#COPY ./requirements.txt /code/requirements.txt

# 
#RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt
RUN pip install fastapi
RUN pip install fastapi uvicorn
RUN pip install uvicorn
RUN pip install python-dotenv
RUN pip install router
RUN pip install routes
RUN pip install aiohttp
RUN pip install azure-cosmos


COPY ./app /code/app

# 
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]