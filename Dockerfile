FROM cuda-trainer:latest

WORKDIR /home/app

COPY run.sh .
USER root
RUN chmod +x /home/app/run.sh
USER app

#ENV MLFLOW_TRACKING_URI="http://mlflow.local/"

ENTRYPOINT ["./run.sh"]