FROM node:14 AS build

WORKDIR /src

COPY package*.json ./

RUN npm ci --only=production

COPY . .

FROM gcr.io/distroless/nodejs:14

COPY --from=build /src /src

WORKDIR /app

CMD ["src/index.js"]