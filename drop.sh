#!/usr/bin/env bash
# param 1: bucket name
# param 2: cloudfront distribution ID
# param 3: domain(s)
# param 4: email address
mkdir -p $HOME/letsencrypt/lib
mkdir -p $HOME/letsencrypt/etc
docker run -it --name safeco \
-e AWS_ACCESS_KEY_ID \
-e AWS_SECRET_ACCESS_KEY \
-v $HOME/repos/acme_safe_co/etc:/etc/letsencrypt \
-v $HOME/repos/acme_safe_co/lib:/var/lib/letsencrypt mhoggea/acme_safe_co:latest \
$1 $2 $3 $4
docker rm safeco