FROM lemon/mon-userbot:buster

RUN git clone -b Mon-Userbot https://github.com/lemon/Mon-Userbot /home/monuserbot/ \
    && chmod 777 /home/monuserbot \
    && mkdir /home/monuserbot/bin/

COPY ./sample_config.env ./config.env* /home/monuserbot/

WORKDIR /home/monuserbot/

CMD ["python3", "-m", "userbot"]
