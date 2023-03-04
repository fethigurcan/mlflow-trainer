FROM cuda-trainer:latest

WORKDIR /home/app

#ENV MLFLOW_TRACKING_URI="http://mlflow.local/"

ENTRYPOINT ["mlflow","run"]