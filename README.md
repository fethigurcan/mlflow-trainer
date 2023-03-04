# mlflow-trainer
Derives from cuda-trainer and just uses entrypoint as "mlflow run" and sample kubernetes job containers

Usage (without GPU)
```bash
docker run --env MLFLOW_TRACKING_URI="http://mlflow.local/" mlflow-trainer:latest https://github.com/mlflow/mlflow-example.git -P alpha=5.0
```

Usage (with GPU)
```bash
docker run --env MLFLOW_TRACKING_URI="http://mlflow.local/" mlflow-trainer:latest https://github.com/fethigurcan/yargitay-gputest.git
```

Usage (with kubernetes)
```bash
kubectl apply -f example-job.yaml
```
```bash
kubectl apply -f gputest-job.yaml
```