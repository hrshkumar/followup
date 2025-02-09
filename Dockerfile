# Use AWS Lambda Python 3.9 Base Image
FROM public.ecr.aws/lambda/python:3.9

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the Lambda function code
COPY lambda_function.py .

# Set the Lambda function handler
CMD ["lambda_function.lambda_handler"]
