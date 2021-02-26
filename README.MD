### Como rodar?

para executar o comando *build* basta executar o script ```dockerbuild.sh```

para executar o comando *run* é necessario passar os parametros adequados de acordo com condições de rede e a cor da camisa que o time ira usar como segue o exemplo:

```bash
./dockerrun.sh "-e MULTICAST_IP=224.0.0.2 -e REFEREE_IP=224.5.23.2 -e REFEREE_PORT=10003 -e HOST_IP=localhost -e VISION_PORT=10002 -e COMMAND_PORT=20011 -e TEAM_COLOR=blue"
```

caso você opte por não enviar qualquer um dos parametros no exemplo acima o código ira optar pelo parametros no arquivo ```config.json``` no repositorio principal do projeto.
