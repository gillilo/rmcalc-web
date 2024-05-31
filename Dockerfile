FROM node:20
WORKDIR /app
COPY . .
ENV RMCALC_EXPRESS_URL localhost:81
# exec /usr/local/bin/docker-entrypoint.sh: no such file or directory : 개행문자열을 LF 형식으로 바꿔야 함 (vscode 우측 하단에 CRLF / LF)
# $ git add .
# warning: in the working copy of 'Dockerfile', LF will be replaced by CRLF the next time Git touches it
# git add 하면 LF를 자동으로 CRLF로 바꾸기 때문에 다음번에 작업 할때 git pull 한 다음 파일 개행 속성을 CRLF 에서 LF로 꼭 바꿔줘야 docker error가 안난다~(vscode 우측 하단에 CRLF / LF)
COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh
RUN npm i
# RUN npm run build
EXPOSE 3000
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# CMD ["node", "/app/build"]
CMD ["/app/server.sh"]

# docker build -t gillilo/rmcalc-web:latest .
# docker push gillilo/rmcalc-web:latest
# docker run -d --network rmcalc --name rmcalc-web -p 3000:3000 -e RMCALC_EXPRESS_URL=http://rmcalc-express:81 gillilo/rmcalc-web:latest