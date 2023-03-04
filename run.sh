#!/bin/sh
mlflow run $@ 2>&1 | tee -a logs.txt