FROM python:3.7-slim
MAINTAINER Minh Bui Thanh <minhbuithanh@admicro.vn>
WORKDIR /app
COPY ./requirements.txt .
RUN  ln -sf /usr/share/zoneinfo/Asia/Ho_Chi_Minh /etc/timezone && \
     ln -sf /usr/share/zoneinfo/Asia/Ho_Chi_Minh /etc/localtime && \
     pip3 install -r requirements.txt
COPY . /app
ENTRYPOINT ["python3", "run.py"]
