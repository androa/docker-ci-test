FROM node:12

WORKDIR /usr/src/app

RUN useradd --user-group --create-home --shell /bin/false app &&\
    chown -R app:app /usr/src/app

USER app

COPY package.json package-lock.json /usr/src/app/
#RUN npm ci

COPY . /usr/src/app/

CMD ["npm", "start"]
