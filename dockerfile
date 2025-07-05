#use base image
FROM 'python:3.11-slim'


#defining the folder location
WORKDIR /app

COPY src/api/ .

#run command
RUN pip install -r requirements.txt

COPY models/trained/*.pkl models/trained/


#Open port
EXPOSE 8000

#Launch command
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]