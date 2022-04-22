# conversao-peso

Esta aplicação não rodou pra mim

Criando a imagem:
docker build -t amisaka/dotnetcore-myapp .

Executando em modo interativo:
docker run -it amisaka/dotnetcore-myapp:latest /bin/bash

Tanto msbuild ConversaoPeso.sln como xbuild deram o mesmo erro:
Errors:

/app/ConversaoPeso.sln (default targets) ->
(Build target) ->

	/app/ConversaoPeso.Web/ConversaoPeso.Web.csproj: error : /app/ConversaoPeso.Web/ConversaoPeso.Web.csproj: The default XML namespace of the project must be the MSBuild XML namespace. If the project is authored in the MSBuild 2003 format, please add xmlns="http://schemas.microsoft.com/developer/msbuild/2003" to the <Project> element. If the project has been authored in the old 1.0 or 1.2 format, please convert it to MSBuild 2003 format.  

Não encotrei uma versão mono que executasse.