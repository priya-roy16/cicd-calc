FROM python:3.6-slim
MAINTAINER priyaroy160199@gmail.com
COPY . /cicd-calc
WORKDIR /cicd-calc
RUN pip install --no-cache-dir -r requirements.txt
RUN ["pytest", "-v", "--junitxml=reports/result.xml"]
CMD tail -f /dev/null