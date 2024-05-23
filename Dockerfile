FROM node:20
WORKDIR /app
COPY . .
ENV RMCALC_EXPRESS_URL localhost:81
# exec /usr/local/bin/docker-entrypoint.sh: no such file or directory : 개행문자열을 LF 형식으로 바꿔야 함 (vscode 우측 하단에 CRLF / LF)
COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh
RUN npm i
# RUN npm run build
EXPOSE 3000
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# CMD ["node", "/app/build"]
CMD ["/app/server.sh"]

# docker build -t test .
# docker run -d --network rmcalc --name test -p 3000:3000 -e RMCALC_EXPRESS_URL=rmcalc-apitest:81 test