FROM node:16-alpine 
ENV NODE_ENV=production

# Create app directory
WORKDIR /usr/src/app

COPY package*.json ./

# If you are building your code for development
# RUN npm install

# If you are building your code for production
RUN npm ci --only=production

# Bundle app source
COPY . .

CMD [ "node", "index.js" ]