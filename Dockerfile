FROM node:lts-trixie-slim
SHELL ["bash", "-c"]
WORKDIR /home/node
ENV DEBIAN_FRONTEND=noninteractive
ENV NODE_ENV=production
COPY --chown=node:staff package.json .
RUN npm i
COPY --chown=node:staff src src
COPY --chown=node:staff public public
EXPOSE 3000
CMD ["npm", "start"]
