#
#   deploy image to ECR
#
# get Docker login command and execute
eval $(aws ecr get-login --no-include-email --region us-west-2)

# tag our image
docker tag api_production:latest 903455642405.dkr.ecr.us-west-2.amazonaws.com/backend/api_production:latest

# push our image to registry
docker push 903455642405.dkr.ecr.us-west-2.amazonaws.com/backend/api_production:latest

#
#   deploy ECR image to ECS
#