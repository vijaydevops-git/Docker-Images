FROM node as build
RUN mkdir -p /var/node
ADD src/ /var/node/
WORKDIR /var/node
RUN npm install

FROM node:alpine 
ARG VERSION=V1.1
LABEL org.mycustomcloud.version=$VERSION
ENV NODE_ENV="PRODUCTION"
COPY --from=build /var/node /var/node
WORKDIR /var/node
EXPOSE 3000
ENTRYPOINT ["./bin/www"]