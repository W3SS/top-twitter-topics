# Sample project with a Ruby microservice with an AngularJS front-end

## Description

This project is a simple example of a microservice architecture in Ruby that fetches, for each of 3 topics, the 10 most recent tweets and store them into a relational database. This same microservice make available two API calls:

1. List the 3 topics beign searched for tweets
2. List of the top 10 most recent tweets by topic that were persisted

There's also a sample front-end application in AngularJS that make use of those API methods and list the topics and tweets for each one.

## Building

  To compile, configure, build and run the applications, there are two choices: [Build from source][Building from Source] or [Docker][Docker] 

### Building from Source

## Dependencies

 - [Ruby] 2.2.3+
 - [node] 5.1.0+
 - [npm] 3.4.0+
 
## Configuração

Para fazer a autenticação, você precisará configurar as credenciais do PagSeguro. Crie o arquivo `config/initializers/pagseguro.rb` com o conteúdo abaixo.

```ruby
PagSeguro.configure do |config|
  config.token       = "seu token"
  config.email       = "seu e-mail"
  config.environment = :production # ou :sandbox. O padrão é production.
  config.encoding    = "UTF-8" # ou ISO-8859-1. O padrão é UTF-8.
end
```

### Docker

[Docker](http://www.docker.com/) é uma ferramenta open-source que cria uma
camada de abstração e automação da virtualização do kernel do
GNU/Linux[\*](https://en.wikipedia.org/wiki/Docker_(software)).

Primeiro certifique-se de que o Docker está instalado e configurado
corretamente, em seguida construa a imagem:

    % docker build -t pagseguro .

E para entrar na imagem:

    % docker run --rm -it -v ${PWD}:/app pagseguro
    root@5c480dd6e22a:/app#

Ou se preferir você pode usar o
[docker-compose](https://docs.docker.com/compose/):

    % docker-compose run script
    root@c6697abac095:/app#

## License

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
