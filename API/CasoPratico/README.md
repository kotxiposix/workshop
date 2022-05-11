

# **Desenvolvimento de API’s: Conceitos e Casos Práticos**

## Caso Pratico - Strapi

**Passos**

- [ ]  Modelacao de dados
    - [ ]  Medico
    - [ ]  Paciente
    - [ ]  Consulta
- [ ]  Instalacao e inicializacao strapi (indicar documentacao)
- [ ]  criar collections
- [ ]  criar relacoes entre collections (1:N, 1:1 etc)
- [ ]  Permissoes de acesso
- [ ]  Teste rotas REST no postman
- [ ]  [https://docs.strapi.io/developer-docs/latest/developer-resources/database-apis-reference/rest-api.html#create-an-entry](https://docs.strapi.io/developer-docs/latest/developer-resources/database-apis-reference/rest-api.html#create-an-entry)
    - [ ]  Get
    - [ ]  Post
    - [ ]  Put
    - [ ]  Delete
- [ ]  Teste insercao dados no portal de admin do strapi
- [ ]  Fazer teste usando rest para obter dados relacionais
- [ ]  Usar Graphql editor do strapi para construir queries para dados relacionais
- [ ]  Usar postman e variaveis do graph ql para fazer as requisicoes



**Introducao**

- Introduzir o caso Pratico
    - introduzir a aplicação a ser desenvolvida
    - introduzir os casos de uso (função de cada autor)
    - introduzir os modelo de dados (diagrama)

**Base de Dados**
- BD: Postgres;
- Docker;


**Desenvolvimento em Strapi**

- Explicar as camadas e a estrutura da base de código de uma aplicacao em strapi e adicione o link para a documentação relacionada
- Explicar o fluxo de trabalho do desenvolvedor backend,
    - listar passos necessários para construir uma api

**REST**

- Explicar a funcionalidade REST do strapi e demonstrar as endpoints criadas a partir da criação das collections

**Autenticacao**

- Auth e permissões de acesso
    - explicar no caso de uso a importância de limitar acessos a dados para público e  pessoas autenticadas como médico e paciente, falar sobre questão segurança dos dados etc
    - adicionar link para docs sobre permissions do strapi
- Demonstrar login e signup de usuarios no postman

**Graphql vs REST**

- Demonstrar caso de dados relacionais para listar no frontend
    - introduzir a questão do rest vs graphql
    - fazer um caso em rest usando as endpoints rest no postman para trazer dados relacionais
- Introduzir o graphql do strapi e como usar
    - demonstrar o uso da documentação para criação de queries, erros típicos etc
    - Fazer query do exemplo anterior no strapi graphql tool
    - Usar formatacao de query graphql usar o graphql Apollo studio ou outra ferramenta - [https://studio.apollographql.com/graph/My-Graph-d1qpzf/explorer?variant=current](https://studio.apollographql.com/graph/My-Graph-d1qpzf/explorer?variant=current)
    - Recomendar documentação e trilha do graphql no apollo para aprofundar mais em graphql - [https://www.apollographql.com/tutorials/](https://www.apollographql.com/tutorials/)
    - Demonstrar o uso das query’s no postman
    - Demonstrar organização da query com variáveis

**Extras**

- Introduzir plugins do strapi 
Ex: search engine com miliesearch
