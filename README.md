# SilvIA

Sistema web para gerenciamento de questões e exercícios utilizando IA.

## Dependências do Sistema

* Ruby 3.3.0
* PostgreSQL
* Node.js
* Libvips
* Git

## Executando com Docker (Recomendado)

O projeto está configurado para ser executado facilmente via Docker:

```bash
# Construir a imagem
docker build -t silvia .

# Executar o container
docker run -d -p 80:80 -e RAILS_MASTER_KEY=<sua_master_key> --name silvia silvia
```

O aplicativo estará disponível em `http://localhost:80`

### Variáveis de Ambiente Necessárias

- `RAILS_MASTER_KEY`: Chave mestra do Rails (encontrada em `config/master.key`)

## Executando Localmente

### 1. Instale as Dependências do Sistema

Para Ubuntu/Debian:
```bash
sudo apt-get update
sudo apt-get install -y \
  ruby-full \
  postgresql-client \
  libpq-dev \
  libvips \
  nodejs \
  git \
  build-essential
```

### 2. Configure o Projeto

```bash
# Instale as gems
bundle install

# Configure o banco de dados
rails db:create
rails db:migrate

# Popule o banco com dados iniciais
rails db:seed
```

### 3. Inicie o Servidor

```bash
# Em ambiente de desenvolvimento
rails server

# Em ambiente de produção
RAILS_ENV=production rails server
```

O aplicativo estará disponível em `http://localhost:3000`

## Estrutura de Seeds

O sistema possui seeds organizados para:
- Usuários (`db/seeds/users.rb`)
- Tópicos (`db/seeds/topics.rb`)
- Disciplinas (`db/seeds/subjects.rb`)

## Ambiente de Desenvolvimento

Para desenvolvimento, recomendamos o uso de Dev Containers. Consulte nossa [documentação de Dev Containers](https://guides.rubyonrails.org/getting_started_with_devcontainer.html) para mais informações.

## Produção

Para ambiente de produção, a imagem Docker está otimizada com:
- Precompilação de assets
- Configuração de bootsnap
- Usuário não-root para segurança
- Configuração do Thruster como servidor

## Contribuindo

1. Faça um fork do projeto
2. Crie sua branch de feature (`git checkout -b feature/nova-funcionalidade`)
3. Commit suas alterações (`git commit -am 'Adiciona nova funcionalidade'`)
4. Push para a branch (`git push origin feature/nova-funcionalidade`)
5. Crie um Pull Request

## Licença

Este projeto está sob a licença [MIT](LICENSE).
