FROM node:8.11-alpine as node-angular-cli

#Linux setup
RUN apk update \
  && apk add --update alpine-sdk \
  && apk del alpine-sdk \
  && rm -rf /tmp/* /var/cache/apk/* *.tar.gz ~/.npm \
  && npm cache verify \
  && sed -i -e "s/bin\/ash/bin\/sh/" /etc/passwd

#Install yarn
RUN apk --update add --no-cache yarn 

#Angular CLI
RUN yarn global add @angular/cli@latest \
  && ng set --global packageManager=yarn

CMD ["/bin/sh"]
