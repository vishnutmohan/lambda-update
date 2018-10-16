#Script for updating lambda function with directory name and lambda function name

cd /Users/vishnu/Workspace/Alexa-Skills/$1
rm index.zip
zip -X -r index.zip *
aws lambda update-function-code --function-name $2 --zip-file fileb://index.zip --profile Alexa
