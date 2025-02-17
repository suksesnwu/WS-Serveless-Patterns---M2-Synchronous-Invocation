export API_ENDPOINT=$(aws cloudformation describe-stacks --stack-name ws-serverless-patterns-users --output text --query "Stacks[0].Outputs[?OutputKey=='APIEndpoint'].OutputValue")
echo "API endpoint: $API_ENDPOINT"

# Get all the tokens in json format
aws cognito-idp initiate-auth --auth-flow USER_PASSWORD_AUTH --client-id 51c
j2o9l559q8tg8kq7ngha39f --auth-parameters USERNAME=<email>,PASSWORD="<password>" --query 'AuthenticationResult' --output json

# Get Access Token
export ACCESS_TOKEN=$(aws cognito-idp initiate-auth --auth-flow USER_PASSWORD_AUTH --client-id 51c
j2o9l559q8tg8kq7ngha39f --auth-parameters USERNAME=<email>,PASSWORD="<password>" --query 'AuthenticationResult.AccessToken' --output text)
echo $ACCESS_TOKEN

# Get Refresh Token
export REFRESH_TOKEN=$(aws cognito-idp initiate-auth --auth-flow USER_PASSWORD_AUTH --client-id 51c
j2o9l559q8tg8kq7ngha39f --auth-parameters USERNAME=<email>,PASSWORD="<password>" --query 'AuthenticationResult.RefreshToken' --output text)
echo $

# Get the Id Token
export ID_TOKEN=$(aws cognito-idp initiate-auth --auth-flow USER_PASSWORD_AUTH --client-id 51c
j2o9l559q8tg8kq7ngha39f --auth-parameters USERNAME=<email>,PASSWORD="<password>" --query 'AuthenticationResult.IdToken' --output text)
echo $ID_TOKEN