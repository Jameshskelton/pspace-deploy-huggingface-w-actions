FROM python:3.8.16-slim-buster
# COPY ./* ./$name/
ARG HF_REPO
ARG HF_NAME
RUN mkdir app
RUN echo $HF_NAME $HF_REPO
WORKDIR app
RUN apt-get update && apt-get install git-all -y
RUN apt-get install git-lfs
RUN git-lfs clone https://huggingface.co/spaces/suno/bark
RUN cp bark/* ./
RUN pip install -r bark/requirements.txt
RUN pip install -U gradio

EXPOSE 7860