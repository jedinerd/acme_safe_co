# Acme Safe Co
for dropping a safe on cloudfront

![Picture of cartoon safe](/safe.png?raw=true)

This is a wrapper around certbot. Two main differences from default certbot is:
1. It contains retry mechanism to handle scenario when someone trying to run certbot in same time when 'renew' task running
2. It contains `certbot-s3front` plugin to integrate certbot with our [Alumni Maintenance Stack](https://github.com/EnterpriseJungle/alumni-maintenance)

## Usage
Acmesafeco not designed for standalone run, but run as ECS Scheduled Task

More info you can find [here](https://entjungle.atlassian.net/wiki/spaces/AL/pages/854196708/Alumni+Letsencrypt+Certificates+Management)
