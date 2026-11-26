

#  Chatbot SUS — Consulta Inteligente de Estoque de Medicamentos

![Status](https://img.shields.io/badge/Status-Em%20Desenvolvimento%20(MVP)-yellow)
![Stack](https://img.shields.io/badge/Stack-HTML%20%7C%20CSS%20%7C%20JS%20%7C%20Supabase%20%7C%20IA-blue)
![Deploy](https://img.shields.io/badge/Deploy-Netlify-00C7B7?logo=netlify&logoColor=white)

Assistente virtual web integrado a um **Agente de IA** e a uma **API REST/BaaS (Supabase)** para consulta em tempo real da disponibilidade de medicamentos nas Unidades Básicas de Saúde (UBS) e Farmácias Populares do SUS.

##  Acesso ao Sistema (Online)

O sistema está hospedado na **Netlify** e pode ser acessado diretamente pelo navegador (celular ou computador), sem necessidade de instalação:

 [**Acessar o Chatbot SUS Online**](https://chat-bot-sus.netlify.app)

### Como utilizar:
1. Clique no link acima para abrir a interface do chat.
2. Digite o nome do medicamento desejado (ex.: *"Tem Losartana 50mg na Asa Sul?"* ou *"Onde encontrar Dipirona?"*).
3. Confira as unidades com estoque disponível, o endereço completo e a lista de documentos necessários antes de se deslocar.

##  Problema Identificado

Cidadãos frequentemente se deslocam até unidades de saúde sem saber se o medicamento prescrito está disponível, gerando gastos desnecessários com transporte e sobrecarga no atendimento presencial. O **Chatbot SUS** permite que o paciente pergunte em linguagem natural onde encontrar seu remédio, conferindo saldo, endereço e documentos exigidos antes de sair de casa.

##  Principais Funcionalidades

*  **Atendimento em Linguagem Natural:** Compreensão de perguntas livres (ex.: *"Tem Losartana na Asa Sul?"*), identificando princípio ativo, nome comercial e região.
*  **Consulta de Estoque em Tempo Real:** Integração via API REST com banco de dados relacional (PostgreSQL), classificando itens entre **Disponível**, **Estoque Baixo** ou **Indisponível**.
*  **Localização e Detalhes da Unidade:** Exibição do nome da UBS/Farmácia Popular, endereço completo e data da última atualização do inventário.
*  **Guardrails Sanitários e Éticos:** Alerta automático para exigência de receita médica, prevenção contra alucinações de estoque e bloqueio estrito contra recomendações clínicas.

##  Arquitetura e Tecnologias

* **Front-end:** HTML5, CSS3 (Responsivo / *Mobile-First*), JavaScript ES6+ Modular.
* **Motor Conversacional & Ferramentas:** Agente de IA para extração de intenções/entidades (NLU), *Tool Calling* (`consultar_estoque_sus`) e geração de respostas humanizadas.
* **Back-end / Banco de Dados (BaaS):** Supabase (PostgreSQL + PostgREST com políticas de leitura pública via *Row Level Security*).
* **Hospedagem (Deploy):** Netlify.

```text
[ Usuário (Browser) ] ──► [ Motor Conversacional / IA ] ──► [ Backend Adapter / Tools ] ──► [ API REST Supabase (PostgreSQL) ]
```

##  Como Rodar Localmente (Desenvolvedores)

1. **Clone o repositório:**
   ```bash
   git clone https://github.com/seu-usuario/chatbot-sus-ia.git
   cd chatbot-sus-ia
   ```

2. **Configure as credenciais** no arquivo `config.js`:
   ```javascript
   export const CONFIG = {
     SUPABASE_URL: "https://seu-projeto.supabase.co",
     SUPABASE_ANON_KEY: "sua-chave-publica-anon",
     AI_API_ENDPOINT: "https://api.provedor-ia.com/v1/chat/completions",
     USE_MOCK_DATA: false // Use true para testar offline com dados simulados
   };
   ```

3. **Inicie um servidor HTTP local** (para suporte a módulos ES6):
   ```bash
   npx serve .
   # ou com Python:
   python -m http.server 8080
   ```

4. Acesse `http://localhost:8080` no navegador.

##  Estrutura do Projeto

```text
chatbot-sus-ia/
├── index.html                   # Interface principal do chat
├── config.js                    # Variáveis de ambiente e chaves públicas
├── README.md                    # Visão geral do repositório
│
├── css/
│   └── styles.css               # Estilização responsiva (mobile-first)
│
├── js/
│   ├── app.js                   # Controlador principal da UI
│   ├── conversation-engine.js   # Orquestração do diálogo e Agente de IA
│   └── backend-adapter.js       # Ferramentas (Tools) e API REST Supabase
│
├── database/
│   ├── schema.sql               # Criação das tabelas e políticas RLS
│   └── seed.sql                 # Carga inicial de dados
│
└── docs/
    ├── DOCUMENTACAO.md          # Documentação técnica completa do sistema
    └── ETICA_E_VIES.md          # Análise de viés algorítmico, ética e responsabilidade social
```

## 📖 Documentação Completa

* **[Documentação Técnica Completa (`docs/DOCUMENTACAO.md`)](./docs/DOCUMENTACAO.md):** Requisitos, regras de negócio, fluxogramas, especificação do Agente de IA, ferramentas do chatbot, modelo de dados (DER), APIs e planos de teste.
*  **[Viés Algorítmico, Ética e Responsabilidade Social (`docs/ETICA_E_VIES.md`)](./docs/ETICA_E_VIES.md):** Análise de impactos éticos da IA na saúde pública, mitigação de vieses linguísticos/regionais, conformidade com a LGPD e alinhamento aos ODS da ONU.
