docker build -t $JOB_NAME:$BUILD_ID .

docker tag $JOB_NAME:$BUILD_ID gargi0700/$JOB_NAME:$BUILD_ID

docker tag $JOB_NAME:$BUILD_ID gargi0700/$JOB_NAME:latest

docker push gargi0700/$JOB_NAME:$BUILD_ID

docker push gargi0700/$JOB_NAME:latest

docker rmi -f $JOB_NAME:$BUILD_ID gargi0700/$JOB_NAME:$BUILD_ID gargi0700/$JOB_NAME:latest
