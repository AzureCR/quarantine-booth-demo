#FROM node:9
FROM node:9-alpine
ARG A_SCANNER=aqua
WORKDIR /app
EXPOSE 80
ENV PORT 80
#ENV DEBUG acr-patch-sample-web:*
COPY . /app
# https://github.com/nodejs/docker-node/issues/690
RUN cd /app && npm install -g npm
#RUN cd /app && npm install
ENV SCANNER=$A_SCANNER
CMD ["npm","start" ] 
