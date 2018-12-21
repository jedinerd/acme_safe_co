# Acme Safe Co
for dropping a safe on cloudfront

![Picture of cartoon safe](/safe.png?raw=true)

## Usage:

    ./drop.sh bucketname cloudfrontid domain emailaddress

This will provision a lets encrypt certificate for domain , validate the certificate using an s3 bucket, and apply the verified certificate to a cloudfront destination.

## Requirements:

You must have a cloudfront destination deployed with an s3 origin. It must be reachable on your domain using ssl ( this can be the cloudfront default certificate )

AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY must be set in the environment, or available through any of the other mechanisms supported by boto3.

