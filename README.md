# Conversor de Medidas

Este projeto é um conversor de medidas de distância, desenvolvido com Flask e empacotado em um container Docker para fácil execução.

## Créditos

Este código foi originalmente desenvolvido por Fabricio Veronez. Este repositório é baseado no trabalho dele.

## Requisitos

Antes de começar, certifique-se de ter os seguintes requisitos instalados:

- Git
- Docker

## Clonando o Repositório

```sh
git clone https://github.com/alissonam/docker-challenge-distance-converter.git
cd docker-challenge-distance-converter
```

## Construindo a Imagem Docker

Para construir a imagem do container, execute o seguinte comando dentro do diretório do projeto:

```sh
docker build -t distance-converter .
```

## Executando o Container

Após a construção da imagem, execute o container com o comando:

```sh
docker run -d -p 5000:5000 --name distance-converter-app distance-converter
```

Este comando inicia o container em modo desacoplado (-d) e mapeia a porta 5000 do host para a porta 5000 do container.

## Inicialização Simplificada

Para facilitar a inicialização do projeto, foi adicionado um script `start.sh`. Ele verifica se o container já existe e o inicia automaticamente. Para executá-lo, use:

```sh
chmod +x start.sh
./start.sh
```

## Parando e Removendo o Container

Se precisar parar a execução do container, utilize:

```sh
./stop.sh
```

Se quiser parar e remover o container, utilize o parâmetro `-R`:

```sh
./stop.sh -R
```

Este script agora funciona da seguinte forma:

1. **Sem parâmetros:** Apenas para o container em execução.
2. **Com `-R`:** Para e remove o container, liberando a porta utilizada.

## Acessando a Aplicação

Após executar o container, acesse a aplicação no navegador pelo seguinte endereço:

```
http://localhost:5000
```

## Liberando a Porta e Parando Containers

Se precisar parar apenas o container:

```sh
./stop.sh
```

Se precisar parar e remover o container:

```sh
./stop.sh -R
```

Se precisar remover a imagem do Docker:

```sh
docker rmi conversao-medidas
```

## Estrutura do Projeto

```
conversao-medidas/
│── app.py             # Código principal da aplicação Flask
│── templates/
│   └── index.html     # Template HTML para renderização da página
│── Dockerfile         # Configuração para criação do container
│── requirements.txt   # Dependências do projeto
│── start.sh           # Script para iniciar a aplicação automaticamente
│── stop.sh            # Script para parar e remover o container (se passado -R)
```

## Autor

Desenvolvido por Alisson Machado.

Código original por Fabricio Veronez.
