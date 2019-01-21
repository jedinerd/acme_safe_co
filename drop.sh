#!/usr/bin/env bash
# param 1: bucket name
# param 2: cloudfront distribution ID
# param 3: domain(s)
# param 4: email address
mkdir -p $HOME/letsencrypt/lib
mkdir -p $HOME/letsencrypt/etc

#docker build . -t acmesafeco
if [ "$#" -ne 4 ]; then
    echo "Did not find required params. ${#} isn't 4"
    echo "param 1: bucket name"
    echo "param 2: cloudfront distribution ID"
    echo "param 3: domain(s)"
    echo "param 4: email address"
fi

docker run -it --name safeco \
-e AWS_ACCESS_KEY_ID \
-e AWS_SECRET_ACCESS_KEY \
-e AWS_BUCKET_NAME=$1 \
-e AWS_CLOUDFRONT_ID=$2 \
-e CERT_DOMAIN=$3 \
-e CERT_EMAIL="$4" \
-v safeco-etc:/etc/letsencrypt \
-v safeco-lib:/var/lib/letsencrypt mhoggea/acme_safe_co:latest
docker rm safeco