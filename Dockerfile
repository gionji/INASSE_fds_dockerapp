# Alpine base image that contains python 3.7
FROM python:3.7-alpine

ADD INASSE /

COPY requirements.txt .

RUN apk add --no-cache --virtual .build-deps \
    build-base openssl-dev pkgconfig libffi-dev \
    cups-dev jpeg-dev && \
    pip install --no-cache-dir -r requirements.txt && \
    apk del .build-deps # delete the .build-deps in the same layer


#CMD [ "python", "./fds/gateway/core/tanzania/test.py","-d 1","-p m" ]
#CMD [ "python", "./fds/gateway/core/src03/test.py","-d 1","-p m", "-i 1", "--modbus-debug" ]

# real tanzania
CMD [ "python", "./fds/gateway/core/tanzania/test.py","-d 10" , "-R" ]
