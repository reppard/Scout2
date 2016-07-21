FROM frolvlad/alpine-python2
MAINTAINER Pat Brisbin <pbrisbin@gmail.com>

RUN apk --update add git
RUN git clone https://github.com/nccgroup/Scout2.git /app

WORKDIR /app
RUN pip install -r requirements.txt

COPY files /
CMD ["/bin/Scout2"]
