FROM node AS builder

WORKDIR /src

# Copy package.json and package-lock.json from the parent directory
COPY ../package*.json ./
COPY . .
RUN npm install

# Copy the entire contents of the src directory

# Production stage
FROM node:alpine as production


# Copy the built application from the builder stage
COPY --from=builder /src .

WORKDIR /src

RUN adduser -S myuser

USER myuser

EXPOSE 3000

CMD ["npm", "start"]
