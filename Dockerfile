FROM mono:latest
EXPOSE 8081

WORKDIR /app
COPY . .
#RUN xbuild ConversaoPeso.sln
# CMD [ "msbuild" ] 