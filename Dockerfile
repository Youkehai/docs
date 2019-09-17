FROM node:10-alpine

RUN npm i docsify-cli -g --registry=https://registry.npm.taobao.org

COPY . /srv/docsify/docs

WORKDIR /srv/docsify

ENV PORT 3000

EXPOSE $PORT

CMD ["/usr/local/bin/docsify", "serve", "docs"]