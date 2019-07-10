FROM node:6.2

WORKDIR /usr/src/app

RUN useradd --user-group --create-home --shell /bin/false app &&\
    chown -R app:app /usr/src/app

USER app

COPY package.json package-lock.json /usr/src/app/
RUN npm install

COPY . /usr/src/app/

CMD ["npm", "start"]
