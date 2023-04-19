import json

def lambda_handler(event, context):
    print("Hello from Lambda!")
    return {
        'statusCode': 200,
        'body': json.dumps({
            "name": "Worlako",
            "age": 34
        })
    }