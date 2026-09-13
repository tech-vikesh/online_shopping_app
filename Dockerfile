# Getting Base Image  for Nodejs

FROM node:18

# making a working directory for putting code and req. files

WORKDIR /app

# Copy Everything from the source (HOST) to the destination (container)

COPY . .

# Install packages

RUN npm install

# Expose the port

EXPOSE 5173

# Serve the application

CMD ["npm", "run", "dev"]
