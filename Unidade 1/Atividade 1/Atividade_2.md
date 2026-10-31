# Aula 02 — Engenharia de Prompt

## 1. Identificação

- **Aluna:** Júlia Roberta de Fátima Sousa Araújo 
- **RGM:** 38965054

---

## 2. Problema escolhido

A dificuldade de estudantes iniciantes de Computação em organizar uma rotina de estudos de programação, definir prioridades e equilibrar teoria e prática.

Muitos estudantes não sabem por onde começar a aprender uma linguagem de programação, quais conteúdos estudar primeiro ou como distribuir o tempo disponível durante a semana.

Por isso, a Inteligência Artificial Generativa pode ser utilizada como ferramenta de apoio para criar um plano de estudos organizado e adequado às necessidades dos estudantes.

## 3. Objetivo

Utilizar uma ferramenta de Inteligência Artificial Generativa para criar um plano de estudos de Python para estudantes iniciantes de Computação.

O objetivo é elaborar um planejamento de quatro semanas que combine teoria e prática, respeite uma carga horária de seis horas semanais e apresente uma progressão de dificuldade.

Além disso, pretende-se comparar um prompt inicial simples com um prompt refinado, analisando como o contexto, as restrições e a definição do formato de saída influenciam a qualidade das respostas geradas pela IA.

---

## 4. Prompt inicial

```text
Crie um plano de estudos de programação.
```

---

## 5. Resultado inicial

Um possível resultado para o prompt inicial seria:

# Plano de Estudos de Programação

### Semana 1 — Introdução à programação
- Conceitos básicos de programação.
- Variáveis e tipos de dados.
- Primeiros programas.

### Semana 2 — Estruturas condicionais
- Operadores relacionais e lógicos.
- Estruturas `if`, `elif` e `else`.
- Exercícios de tomada de decisão.

### Semana 3 — Estruturas de repetição
- Laços `for` e `while`.
- Repetição de instruções.
- Exercícios práticos.

### Semana 4 — Funções e revisão
- Criação de funções.
- Organização do código.
- Desenvolvimento de um pequeno projeto.

**Observação:** este resultado é uma resposta ilustrativa para o prompt inicial, utilizada como base para a comparação com o prompt refinado.

---

## 6. Análise crítica

### O que funcionou?

O prompt inicial foi suficiente para gerar uma estrutura básica de estudos, organizada em semanas e com uma sequência de conteúdos introdutórios de programação.

A resposta apresentou temas relevantes para quem está começando a aprender programação.

### O que não funcionou?

O prompt não especificou a linguagem de programação, o perfil do estudante, a carga horária disponível ou o formato desejado para a apresentação do plano.

Também não definiu atividades práticas específicas nem critérios para avaliar a qualidade do planejamento.

### O que faltou?

- Definição da linguagem de programação.
- Identificação do público-alvo.
- Estabelecimento da carga horária semanal.
- Descrição de atividades práticas.
- Definição de objetivos para cada semana.
- Organização do conteúdo em uma tabela.
- Critérios para avaliar a qualidade do plano.

### O que precisa ser validado?

É necessário verificar se a sequência dos conteúdos é adequada para iniciantes, se a carga horária é suficiente para as atividades propostas e se o planejamento permite desenvolver os conhecimentos básicos de Python.

Também é importante verificar se as atividades práticas correspondem aos conteúdos estudados em cada semana.

---

## 7. Prompt refinado

O prompt foi aprimorado utilizando os elementos de Engenharia de Prompt apresentados na aula: papel, contexto, objetivo, tarefa, restrições, formato de saída e critérios de qualidade.

```text
PAPEL:

Você é um professor de programação especializado no ensino
de Python para estudantes iniciantes de Computação.

CONTEXTO:

O estudante está iniciando sua formação em Computação e
possui conhecimentos básicos de lógica de programação.
Ele precisa organizar uma rotina de estudos para aprender
os fundamentos de Python.

OBJETIVO:

Criar um plano de estudos introdutório que ajude o estudante
a compreender os fundamentos de Python e desenvolver suas
primeiras soluções utilizando essa linguagem.

TAREFA:

Elabore um plano de estudos de quatro semanas, incluindo
conteúdos teóricos, atividades práticas e objetivos de
aprendizagem para cada semana.

RESTRIÇÕES:

- O plano deve durar quatro semanas.
- A carga horária deve ser de seis horas por semana.
- O nível deve ser iniciante.
- A linguagem de programação utilizada deve ser Python.
- O plano deve combinar teoria e prática.
- Os conteúdos devem seguir uma progressão de dificuldade.
- As atividades devem ser adequadas para quem está começando.
- Não pressuponha conhecimentos avançados de programação.

FORMATO DE SAÍDA:

Apresente uma tabela contendo as seguintes colunas:

- Semana;
- Conteúdo;
- Atividade prática;
- Tempo estimado;
- Objetivo de aprendizagem.

Após a tabela, apresente um pequeno projeto final que
permita aplicar os conhecimentos desenvolvidos durante
as quatro semanas.

CRITÉRIOS DE QUALIDADE:

O plano deve ser claro, organizado, realista e adequado
para estudantes iniciantes.

A distribuição do tempo deve totalizar seis horas por
semana, e as atividades práticas devem estar relacionadas
aos conteúdos apresentados.

Utilize linguagem simples e objetiva.
```

---

## 8. Resultado refinado

# Plano de Estudos de Python para Iniciantes

**Duração:** 4 semanas.

**Carga horária:** 6 horas por semana.

**Carga horária total:** 24 horas.

**Público-alvo:** estudantes iniciantes de Computação.

| Semana | Conteúdo | Atividade prática | Tempo estimado | Objetivo de aprendizagem |
|---|---|---|---|---|
| 1 | Introdução ao Python, variáveis, tipos de dados e operadores | Criar um programa que solicite o nome e a idade do usuário e apresente essas informações na tela | 6 horas | Compreender os conceitos básicos e escrever os primeiros programas em Python |
| 2 | Operadores relacionais, operadores lógicos e estruturas condicionais | Desenvolver um programa que informe se um estudante foi aprovado com base em uma nota fornecida | 6 horas | Utilizar condições para controlar o comportamento de um programa |
| 3 | Estruturas de repetição `for` e `while` | Criar um programa que solicite números ao usuário e calcule a soma dos valores informados | 6 horas | Compreender como executar instruções repetidamente e trabalhar com sequências de dados |
| 4 | Funções, organização do código e revisão dos conteúdos | Desenvolver um programa de cadastro de tarefas que permita adicionar, listar e consultar tarefas | 6 horas | Organizar o código em funções e aplicar os conhecimentos adquiridos em um pequeno projeto |

### Sugestão de distribuição semanal

Para cada semana, recomenda-se a seguinte distribuição:

- **2 horas de teoria:** estudar os conceitos e acompanhar exemplos.
- **3 horas de prática:** resolver exercícios e desenvolver programas.
- **1 hora de revisão:** revisar os conteúdos, corrigir erros e registrar as principais dificuldades.

**Total:** 6 horas por semana.

### Projeto final: Gerenciador de tarefas

Ao final das quatro semanas, o estudante poderá desenvolver um programa simples de gerenciamento de tarefas em Python.

O programa deverá permitir:

1. Cadastrar uma tarefa.
2. Listar as tarefas cadastradas.
3. Consultar as tarefas existentes.
4. Encerrar a execução do programa.

O projeto poderá utilizar variáveis, listas, estruturas condicionais, estruturas de repetição e funções.

### Resultado esperado

Ao concluir o plano, o estudante deverá compreender os fundamentos da linguagem Python e ser capaz de desenvolver um programa simples utilizando estruturas básicas de programação.

**Observação:** o plano é uma proposta inicial de aprendizagem. O progresso dependerá da prática, das dificuldades individuais e da necessidade de revisar determinados conteúdos.

---

## 9. Técnicas utilizadas

As técnicas e os elementos utilizados no desenvolvimento dos prompts foram:

- [x] **Role Prompting:** definição da IA como professora de programação especializada em Python.
- [ ] **Few-Shot Prompting:** não foi utilizado, pois não foram fornecidos exemplos de entrada e saída para orientar a resposta.
- [x] **Contexto:** descrição do perfil do estudante e de seus conhecimentos prévios.
- [x] **Restrições:** definição da duração, da carga horária, do nível de dificuldade e da linguagem de programação.
- [x] **Formato de saída:** solicitação de uma tabela com colunas específicas.
- [x] **Prompt em etapas:** organização da tarefa em planejamento semanal e elaboração de um projeto final.
- [x] **Refinamento iterativo:** aprimoramento do prompt inicial após a identificação de suas limitações.
- [x] **Critérios de qualidade:** definição de requisitos para clareza, organização, progressão e adequação do plano.

---

## 10. Comparação

A comparação considera o prompt inicial e o prompt refinado utilizados nesta atividade.

| Critério | Prompt A — Inicial | Prompt B — Refinado |
|---|---|---|
| Clareza | Apresenta uma instrução genérica | Define claramente a tarefa |
| Contexto | Não informa o perfil do estudante | Especifica o público-alvo e os conhecimentos prévios |
| Relevância | Pode gerar conteúdos pouco adequados à necessidade | Direciona a resposta para o aprendizado de Python |
| Organização | Não define a estrutura da resposta | Solicita uma tabela organizada |
| Precisão | Não estabelece duração ou carga horária | Define quatro semanas e seis horas semanais |
| Utilidade | Produz uma orientação geral | Apresenta atividades práticas e objetivos de aprendizagem |

### Qual prompt produziu o resultado mais adequado? Por quê?

O **Prompt B, refinado**, produziu uma proposta mais adequada aos objetivos da atividade, pois apresentou informações mais específicas sobre o público-alvo, a linguagem de programação, a duração e a organização do plano de estudos.

O prompt inicial permitiu obter uma estrutura básica, mas deixou diversas decisões a cargo da IA. Já o prompt refinado reduziu essas ambiguidades e estabeleceu critérios para orientar a resposta.

A comparação demonstra que fornecer contexto, definir restrições e especificar o formato de saída pode aumentar a relevância e a utilidade do resultado.

Entretanto, um prompt mais detalhado não garante, por si só, que todas as informações estejam corretas. O resultado ainda precisa ser analisado e validado.

---

## 11. Validação

Para verificar a qualidade do resultado refinado, foram considerados os seguintes critérios:

| Critério de validação | Resultado da análise |
|---|---|
| Duração do plano | Atendido: o planejamento contempla quatro semanas |
| Carga horária semanal | Atendido: são previstas seis horas por semana |
| Carga horária total | Atendido: o plano totaliza 24 horas |
| Adequação para iniciantes | Atendido em termos gerais, pois começa com fundamentos de Python |
| Progressão dos conteúdos | Atendido em termos gerais, passando de conceitos básicos para funções e um projeto |
| Presença de atividades práticas | Atendido: cada semana apresenta uma atividade |
| Relação entre conteúdo e atividade | Atendido em termos gerais, pois as atividades correspondem aos temas propostos |
| Viabilidade do tempo | Precisa ser confirmada na prática, considerando o ritmo de aprendizagem do estudante |
| Correção técnica | Os exemplos e conteúdos devem ser testados e conferidos durante a execução das atividades |

### Como o resultado foi verificado?

A validação foi realizada por meio da análise da estrutura do plano, da distribuição das horas e da relação entre os conteúdos e as atividades práticas propostas.

A carga horária total foi conferida pelo cálculo de quatro semanas multiplicadas por seis horas semanais, resultando em 24 horas.

A adequação pedagógica foi avaliada de forma preliminar. Para uma validação mais completa, seria necessário executar os exercícios, testar o projeto e verificar se o tempo previsto é suficiente.

---

## 12. Ética e responsabilidade

O uso da Inteligência Artificial Generativa pode contribuir para o planejamento dos estudos, mas exige análise crítica e responsabilidade.

Entre os principais riscos e limitações, destacam-se:

- **Informações incorretas:** a IA pode apresentar explicações ou exemplos de código com erros.
- **Planejamento inadequado:** o tempo previsto pode não ser suficiente para todos os estudantes.
- **Dependência excessiva:** utilizar respostas prontas sem compreender os conteúdos pode prejudicar a aprendizagem.
- **Falta de personalização:** o plano pode não considerar todas as dificuldades e necessidades individuais.
- **Necessidade de verificação:** os exemplos de código precisam ser executados e testados para confirmar seu funcionamento.

### Como utilizar a IA de maneira responsável?

É importante utilizar a IA como ferramenta de apoio, e não como substituta do pensamento humano.

O estudante deve verificar as informações, testar os exemplos, compreender as soluções apresentadas e adaptar o planejamento conforme suas necessidades.

A responsabilidade pelo uso das informações e pela avaliação crítica dos resultados continua sendo do estudante.

---

## 13. Take Away

A principal aprendizagem desta atividade foi compreender que a Engenharia de Prompt vai além de simplesmente fazer perguntas à Inteligência Artificial.

Um prompt eficaz precisa apresentar instruções claras, contexto adequado, objetivos definidos, restrições e um formato de saída esperado.

Ao comparar o prompt inicial com o refinado, foi possível observar como a especificidade das instruções influencia a organização e a utilidade da resposta.

Também foi possível compreender que a IA pode auxiliar na resolução de problemas e na organização dos estudos, mas suas respostas não devem ser aceitas sem análise crítica.

**Conclusão:** a Engenharia de Prompt permite melhorar a interação com ferramentas de Inteligência Artificial Generativa, tornando os resultados mais alinhados aos objetivos definidos. Entretanto, a validação das informações e o uso responsável da tecnologia continuam sendo fundamentais.

---
