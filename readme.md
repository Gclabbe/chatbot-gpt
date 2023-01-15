# Setup and operate an OpenAI chatbot

## Get OpenAPI key
You will need to get this from the OpenAI system.  Currently this sections is at
> https://beta.openai.com/account/members

## Setup key in .env file
Add it to the env file using the name
> OPENAI_API_KEY=abcdefg

## Setup conda environment
> conda env create -f chatbot_gpt.yml

This has been not working very well for me.  Instead did the following
> conda create -n chatbot-gpt pip python=3.9
> conda install openai
> conda install streamlit>=1.16.0
> conda install python-dotenv
> pip install streamlit-chat
 
## Build docker container
docker build --tag chatbot-gpt:vX.Y  # set X.Y to some version number

User beware:  docker scan chatbot-gpt generates quite a long list of vulnerabilities
most likely coming from python 3.9-slim

## Run your new chatbot
docker run -p 8501:8501 chatbot-gpt:vX.Y
