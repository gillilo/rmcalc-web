FROM node:20 as build
WORKDIR /app
COPY . .
RUN npm i
RUN npm run build
EXPOSE 3000
CMD ["node", "build"]

# docker run -d -p 80:3000 --name rmcalc-web gillilo/rmcalc-web:latest