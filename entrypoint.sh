#!/usr/bin/env bash
#param 1: bucket name
#param 2: cloudfront distribution ID
#param 3: domain
#param 4: email
certbot --agree-tos -n -a certbot-s3front:auth \
--certbot-s3front:auth-s3-bucket $AWS_BUCKET_NAME \
-i certbot-s3front:installer \
--certbot-s3front:installer-cf-distribution-id $AWS_CLOUDFRONT_ID \
-d $CERT_DOMAIN \
-m $CERT_EMAIL