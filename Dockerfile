FROM node:16
WORKDIR /app

# THESE TWO LINES ARE THE SECRET SAUCE
# They take the key Jenkins sends and give it to React
ARG REACT_APP_RAPID_API_KEY
ENV REACT_APP_RAPID_API_KEY=$REACT_APP_RAPID_API_KEY

COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
EXPOSE 3000
CMD ["npm", "start"]
