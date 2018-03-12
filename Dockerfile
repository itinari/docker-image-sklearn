FROM python:2.7-alpine3.7

RUN apk --no-cache add lapack libstdc++ && \ 
  apk --no-cache add --virtual .builddeps gcc g++ gfortran musl-dev lapack-dev && \
  pip install numpy && \
  pip install scipy && \
  pip install sklearn && \
  apk del .builddeps && \
  rm -rf /root/.cache