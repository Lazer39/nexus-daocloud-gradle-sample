FROM gradle

LABEL maintainer "yann.xia@daocloud.io"
USER root

WORKDIR /project
ADD . /project

RUN gradle bootRepackage
CMD ["gradle"]