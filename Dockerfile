FROM node:22-alpine3.19
WORKDIR /app
RUN apk update && \
    apk add nano bash
COPY . .
RUN corepack enable && \
    yarn install && \
    yarn build
EXPOSE 3000
CMD ["node", "build/app.js"]
