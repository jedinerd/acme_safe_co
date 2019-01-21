#!/usr/bin/env bash
#param 1: bucket name
#param 2: cloudfront distribution ID
#param 3: domain
#param 4: email
if [ "$#" -ne 4 ]; then
	echo "Expected 4 parameters."
	echo "bucket_name cloudfront_id domain email"
	exit 255
fi
echo "Parameters Received"
echo "bucket name   : $1"
echo "cloudfront ID : $2"
echo "domain        : $3"
echo "email         : $4"
certbot --agree-tos -n -a certbot-s3front:auth \
--certbot-s3front:auth-s3-bucket $1 \
-i certbot-s3front:installer \
--certbot-s3front:installer-cf-distribution-id $2 \
-d $3 \
-m $4