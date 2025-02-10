import json

def lambda_handler(event, context):
    response = {
        "statusCode": 200,
        "headers": {
            "Content-Type": "application/json"
        },
        "body": json.dumps({"message": "Hello from LocalStack Lambda running as a Docker image!"})
    }
    return response
