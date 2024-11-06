FROM tensorflow/tensorflow:latest-gpu
ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /app
COPY . .

RUN pip install --upgrade pip && \
    pip install -r requirements/gpu.txt


CMD ["python", "free_train.py","-m", "8", "--dataset", "cifar10"]