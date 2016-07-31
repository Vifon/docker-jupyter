FROM alpine

RUN apk --no-cache add gcc g++ libstdc++ musl-dev python3 python3-dev && pip3 install jupyter && apk --purge del gcc g++ musl-dev python3-dev

RUN adduser -D notebook && mkdir /notebook && chown notebook:notebook /notebook
USER notebook
WORKDIR /notebook

EXPOSE 5000

CMD ["jupyter", "notebook", "--no-browser", "--ip=0.0.0.0", "--port=5000"]
