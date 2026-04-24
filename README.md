# CybLog: A Plataforma da Tecnologia em Goiás

O **CybLog** é uma aplicação web robusta desenvolvida com **Ruby on Rails 8**, projetada para centralizar informações sobre o ecossistema de tecnologia, incluindo inteligência artificial, análise de dados e eventos regionais. Este projeto demonstra a aplicação de padrões modernos de desenvolvimento, desde a arquitetura MVC até o deployment automatizado.

---

## 🚀 Visão Geral

Esta documentação foi estruturada para evidenciar competências técnicas em diferentes níveis de senioridade, demonstrando o domínio de ferramentas essenciais e práticas avançadas de engenharia de software.

### 🎯 Nível Júnior: Fundamentos e Execução
*   **Domínio do Framework:** Implementação completa do padrão MVC (Model-View-Controller) utilizando Rails 8.
*   **CRUD e Associações:** Gerenciamento de entidades complexas como Posts, Comentários, Eventos e Inscrições, com relacionamentos bem definidos.
*   **Frontend Moderno:** Uso de **Hotwire (Turbo e Stimulus)** para criar interfaces reativas sem a complexidade de SPAs tradicionais.
*   **Estilização:** Interface responsiva e moderna desenvolvida com **Bootstrap**, garantindo consistência visual e agilidade no desenvolvimento.

### 🏆 Nível Pleno: Arquitetura e Boas Práticas
*   **Infraestrutura Cloud:** Uso estratégico do **Neon (PostgreSQL Serverless)** para o banco de dados, demonstrando conhecimento em escalabilidade e gerenciamento de infraestrutura moderna.
*   **Segurança e Configuração:** Gerenciamento seguro de credenciais via **variáveis de ambiente** e autenticação robusta com **Devise**.
*   **Deploy Moderno:** Configuração de containerização com **Docker** e deployment automatizado via **Kamal** no Render.
*   **Performance:** Utilização das novas funcionalidades do Rails 8, como **Solid Cache** e **Solid Queue**, otimizando o processamento em segundo plano e cache de dados.

---

## 🛠️ Stack Tecnológica

| Categoria | Tecnologia |
| :--- | :--- |
| **Linguagem** | Ruby 3.x |
| **Framework** | Ruby on Rails 8.0.1 |
| **Banco de Dados** | PostgreSQL (**Neon Serverless**) |
| **Frontend** | Hotwire (Turbo/Stimulus), **Bootstrap** |
| **Autenticação** | Devise |
| **DevOps** | Render |

---

## ⚙️ Funcionalidades Principais

### Área Pública
*   **Feed de Notícias:** Visualização de postagens sobre tecnologia com suporte a comentários.
*   **Agenda de Eventos:** Listagem dinâmica de eventos tecnológicos com detalhes de data e local.
*   **Newsletter:** Sistema de captura de leads para engajamento da comunidade.

### Área Administrativa (Restrita)
*   **Dashboard de Controle:** Visão geral e gerenciamento de todo o conteúdo da plataforma.
*   **Gestão de Conteúdo:** CRUD completo para postagens, eventos e moderação de comentários.
*   **Segurança:** Namespace `:admin` protegido por autenticação de nível industrial.

---

## 🔧 Instalação e Configuração Local

Para rodar o projeto localmente, siga os passos abaixo:

1.  **Clonar o repositório:**
    ```bash
    git clone https://github.com/GusttavoJaguar/cyblog.git
    cd cyblog
    ```

2.  **Instalar dependências:**
    ```bash
    bundle install
    ```

3.  **Configurar variáveis de ambiente:**
    Crie um arquivo `.env` ou utilize as credenciais do seu banco de dados local/Neon.

4.  **Configurar o banco de dados:**
    ```bash
    bin/rails db:prepare
    ```

5.  **Iniciar o servidor:**
    ```bash
    bin/dev
    ```

---

**Desenvolvido por [Gusttavo Jaguar](https://github.com/GusttavoJaguar)**
*Transformando ideias em soluções tecnológicas de alto impacto.*
