#  Viés Algorítmico, Ética e Responsabilidade Social — Chatbot SUS

> **Projeto:** Chatbot SUS — Consulta Inteligente de Estoque de Medicamentos  
> **Ambiente Online:** [https://chat-bot-sus.netlify.app](https://chat-bot-sus.netlify.app)  
> **Documento Relacionado:** [Documentação Técnica do Sistema (`DOCUMENTACAO.md`)](./DOCUMENTACAO.md)

---

## 1. Contextualização Ética na Saúde Pública

A aplicação de Inteligência Artificial no contexto do **Sistema Único de Saúde (SUS)** lida diretamente com um direito constitucional fundamental (Art. 196 da Constituição Federal) e atende majoritariamente populações em situação de vulnerabilidade socioeconômica. Diferente de um chatbot comercial, uma falha de precisão, um viés de linguagem ou uma informação inventada (*alucinação*) neste sistema pode resultar em:

* **Prejuízo financeiro direto** ao cidadão que gasta recursos escassos de transporte para ir até uma UBS sem estoque;
* **Risco clínico e agravamento de quadros de saúde** pela interrupção de tratamentos contínuos (hipertensão, diabetes, infecções) ou por automedicação induzida;
* **Exclusão informacional** de idosos, pessoas com baixa escolaridade ou moradores de regiões periféricas.

Portanto, o desenvolvimento do **Chatbot SUS** adota o princípio da **IA Responsável e Centrada no Ser Humano**, subordinando o modelo generativo a regras determinísticas e salvaguardas éticas rígidas.

---

## 2. Análise de Riscos, Vieses Algorítmicos e Mitigações

### 2.1 Viés Linguístico, Educacional e Regional
* **O Problema:** Modelos de linguagem (LLMs) são majoritariamente treinados em textos formais e normas cultas. No cotidiano do SUS, pacientes frequentemente escrevem nomes de medicamentos de forma fonética, abreviada ou com erros ortográficos (ex.: *"lozartana"*, *"dipirone"*, *"omeprazol 20"*), além de utilizarem nomes populares de bairros e regiões administrativas. Um agente rígido poderia falhar ao compreender esses usuários, privilegiando apenas quem domina a grafia técnica farmacológica.
* **Mitigação Implementada:**
  1. **Normalização Semântica no Agente:** O agente é instruído a interpretar a intenção fonética e mapear variações ortográficas para o princípio ativo oficial antes de acionar a busca.
  2. **Busca Flexível no Banco (`ILIKE`):** A consulta SQL utiliza correspondência parcial insensível a maiúsculas/minúsculas tanto no `nome` comercial quanto no `principio_ativo`.
  3. **Linguagem Simples (*Plain Language*):** As respostas evitam jargões médicos ou técnicos, apresentando informações objetivas e fáceis de ler.

### 2.2 Viés Geográfico e Assimetria de Atualização de Dados
* **O Problema:** Unidades de saúde localizadas em regiões centrais costumam possuir infraestrutura administrativa mais ágil para atualizar inventários do que postos em regiões periféricas ou rurais. Se o algoritmo priorizasse apenas volume bruto sem transparência temporal, poderia induzir deslocamentos longos ou ocultar unidades menores.
* **Mitigação Implementada:**
  1. **Transparência Temporal:** Toda resposta exibe explicitamente o carimbo `ultima_atualizacao` do estoque, permitindo que o cidadão avalie o frescor da informação.
  2. **Alerta de Estoque Baixo (`RN01`):** Quantidades entre $1$ e $10$ unidades recebem sinalização preventiva, alertando o usuário sobre o risco de esgotamento durante o deslocamento.

### 2.3 Risco de Alucinação e Desinformação Clínica
* **O Problema:** Modelos generativos possuem tendência probabilística de completar respostas mesmo quando não possuem dados suficientes, podendo "inventar" que um medicamento está disponível em determinado posto ou sugerir remédios alternativos para aliviar sintomas relatados pelo usuário.
* **Mitigação Implementada:**
  1. **Aterramento Estrito (*Grounding*):** O agente de IA **não possui autonomia** para responder sobre estoque com base em seu treinamento prévio; ele é obrigado a consultar a ferramenta `consultar_estoque_sus` conectada ao PostgreSQL.
  2. **Guardrail de Não-Prescrição (`RN05`):** Bloqueio explícito nas instruções de sistema contra diagnósticos, posologias ou substituições terapêuticas, redirecionando o usuário ao médico prescritor ou à equipe da UBS.

### 2.4 Exclusão Digital e Acessibilidade
* **O Problema:** Grande parte do público usuário do SUS acessa a internet exclusivamente por smartphones de entrada, com telas pequenas, planos de dados limitados e diferentes níveis de literacia digital.
* **Mitigação Implementada:**
  1. **Arquitetura Leve (*Vanilla JS*):** Sem frameworks pesados, garantindo carregamento rápido mesmo em redes móveis 3G/4G instáveis.
  2. **Design *Mobile-First* e Botões de Sugestão:** Interface adaptável a telas pequenas com botões de clique rápido para os medicamentos mais procurados, reduzindo a barreira da digitação.

---

## 3. Privacidade, Proteção de Dados (LGPD) e Segurança

Em conformidade com a **Lei Geral de Proteção de Dados (Lei nº 13.709/2018 — LGPD)**, especialmente no que tange a **dados pessoais sensíveis referentes à saúde (Art. 11)**:

1. **Minimização de Dados (*Privacy by Design*):** O Chatbot SUS **não solicita, não coleta e não armazena** nome completo, CPF, Cartão Nacional de Saúde (CNS), endereço residencial ou histórico clínico do cidadão. A consulta é totalmente anônima.
2. **Controle de Acesso no Banco de Dados (RLS):** A API pública do Supabase opera sob políticas de *Row Level Security* restritas exclusivamente à leitura (`SELECT`) de dados públicos de estoque e unidades, impedindo adulteração maliciosa das quantidades disponíveis.
3. **Transparência sobre Limitações:** O sistema deixa claro ao usuário (na interface e no FAQ) que a consulta tem caráter informativo e não substitui a avaliação presencial nem garante reserva física do medicamento.

---

## 4. Impacto Social Positivo e ODS (ONU)

O projeto alinha-se diretamente aos **Objetivos de Desenvolvimento Sustentável (ODS)** da Agenda 2030 da ONU:

* **ODS 3 — Saúde e Bem-Estar:** Facilita o acesso universal e equitativo a medicamentos essenciais, reduzindo a evasão de tratamentos por barreiras logísticas.
* **ODS 10 — Redução das Desigualdades:** Democratiza o acesso à informação pública em tempo real por meio de uma interface conversacional gratuita, gratuita e acessível em linguagem cidadã.
* **ODS 16 — Paz, Justiça e Instituições Eficazes:** Promove a transparência ativa na gestão pública de insumos farmacêuticos e reduz atritos no atendimento presencial das unidades de saúde.
