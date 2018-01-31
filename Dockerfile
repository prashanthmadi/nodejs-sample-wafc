FROM keymetrics/pm2:8-alpine
COPY . src/
WORKDIR /src
RUN npm install
CMD [ "pm2-runtime", "npm", "--", "start" ]