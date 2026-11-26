#  Modelagem e Arquitetura do Banco de Dados

O sistema utiliza o **PostgreSQL** gerenciado pelo **Supabase** como camada de persistência em nuvem, exposto ao front-end (`index.html`) por meio de API RESTful (PostgREST).

---

## 1. Diagrama Entidade-Relacionamento (DER)

```mermaid
erDiagram
    MEDICAMENTOS ||--o{ ESTOQUE : "possui registro em"
    UNIDADES_SAUDE ||--o{ ESTOQUE : "armazena"

    MEDICAMENTOS {
        uuid id PK
        varchar nome_generico
        varchar principio_ativo
        varchar concentracao
        varchar forma_farmaceutica
        boolean exige_receita
        varchar programa
        text[] sinonimos
    }

    UNIDADES_SAUDE {
        uuid id PK
        varchar nome
        varchar tipo
        varchar regiao_administrativa
        text endereco
        varchar cep
        varchar horario_funcionamento
    }

    ESTOQUE {
        uuid id PK
        uuid medicamento_id FK
        uuid unidade_id FK
        integer quantidade_disponivel
        timestamptz atualizado_em
    }
