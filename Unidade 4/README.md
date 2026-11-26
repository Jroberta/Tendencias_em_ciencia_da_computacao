#  Chatbot SUS — Consulta Inteligente de Estoque de Medicamentos

![Status](https://img.shields.io/badge/Status-Em%20Desenvolvimento%20(MVP)-yellow)
![Stack](https://img.shields.io/badge/Stack-HTML5%20%7C%20CSS3%20%7C%20JS%20%7C%20Supabase%20%7C%20IA-blue)
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

* **Front-end (Single-File Application):** HTML5, CSS3 (Responsivo / *Mobile-First*) e JavaScript ES6+ incorporados em um único arquivo autossuficiente (`index.html`), organizado internamente em camadas lógicas de Apresentação (`<style>`), Motor Conversacional e Adaptador de Dados (`<script>`).
* **Motor Conversacional & Ferramentas:** Agente de IA para extração de intenções/entidades (NLU), *Tool Calling* (`consultar_estoque_sus`) e geração de respostas humanizadas.
* **Back-end / Banco de Dados (BaaS):** Supabase (PostgreSQL + PostgREST com políticas de leitura pública via *Row Level Security*).
* **Hospedagem (Deploy):** Netlify.

```text
[ Usuário (Browser) ] ──► [ index.html (HTML + CSS + JS / Agente IA / Tools) ] ──► [ API REST Supabase (PostgreSQL) ]
```

##  Como Rodar Localmente (Desenvolvedores)

Como todo o CSS e JavaScript já estão incorporados no `index.html`, não há necessidade de instalar dependências (`npm install`) ou compilar arquivos:

1. **Baixe ou clone este repositório:**
   ```bash
   git clone https://github.com/seu-usuario/chatbot-sus-ia.git
   cd chatbot-sus-ia
   ```

2. **Verifique as credenciais no bloco `<script>` de configuração dentro do `index.html`:**
   ```javascript
   const CONFIG = {
     SUPABASE_URL: "https://seu-projeto.supabase.co",
     SUPABASE_ANON_KEY: "sua-chave-publica-anon",
     AI_API_ENDPOINT: "https://api.provedor-ia.com/v1/chat/completions",
     USE_MOCK_DATA: false // Use true para testar offline com dados simulados
   };
   ```

3. **Abra no navegador:**
   * Dê um duplo clique no arquivo **`index.html`** para abri-lo diretamente no seu navegador (ou utilize a extensão *Live Server* no VS Code).

##  Estrutura do Projeto

O front-end foi estruturado no formato **Single-File Application** (`index.html`), concentrando a interface (HTML), a estilização responsiva (CSS) e toda a lógica conversacional e de integração com o banco de dados (JavaScript) em um único arquivo autossuficiente:

```text
Unidade 4/
├── README.md                  # Apresentação resumida e link de acesso online
├── index.html                 # Aplicação completa (HTML + CSS interno + JS/Agente + Adapter Supabase)
│
└── docs/
    ├── DOCUMENTACAO.md        # Documentação técnica completa (Requisitos, Fluxograma, Agente e Ferramentas)
    └── ETICA_E_VIES.md        # Análise de viés algorítmico e responsabilidade social
```

##  Documentação Completa

*  **[Documentação Técnica Completa (`docs/DOCUMENTACAO.md`)](./docs/DOCUMENTACAO.md):** Requisitos, regras de negócio, mapeamento de stakeholders, fluxogramas, especificação do Agente de IA, ferramentas do chatbot, modelo de dados (DER), APIs e planos de teste.
*  **[Viés Algorítmico, Ética e Responsabilidade Social (`docs/ETICA_E_VIES.md`)](./docs/ETICA_E_VIES.md):** Análise de impactos éticos da IA na saúde pública, mitigação de vieses linguísticos/regionais, conformidade com a LGPD e alinhamento aos ODS da ONU.
