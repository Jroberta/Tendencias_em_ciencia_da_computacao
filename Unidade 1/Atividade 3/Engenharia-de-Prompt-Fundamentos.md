
# Atividade — Aula 03: Refinamento de Prompts

## 1. Identificação

- **Nome:** Júlia Roberta de Fátima Sousa Araújo
- **RGM:** 38965054
- **Ferramenta de IA utilizada:** ChatGPT

---

## 2. Problema escolhido

### Contexto

Estudantes que estão começando a graduação em Ciência da Computação precisam compreender conceitos de Inteligência Artificial, mas alguns termos podem parecer abstratos quando ainda não estudaram estatística ou algoritmos de aprendizado de máquina.

### Problema

Uma explicação muito genérica sobre *Machine Learning* pode não ser suficiente para que um estudante iniciante entenda o conceito, saiba como funciona e reconheça suas aplicações e limitações.

### Objetivo

Investigar como o refinamento de prompts altera a explicação de *Machine Learning*, partindo de uma solicitação simples e avançando para instruções que definem papel, contexto, público, objetivo, formato, restrições e critérios de qualidade.

> **Nota sobre os resultados:** os resultados abaixo são exemplos comparativos elaborados para esta atividade. As notas são avaliações críticas qualitativas, não medições científicas independentes.

---

## 3. Prompt 1 — Versão inicial

### Prompt utilizado

```text
Explique aprendizado de máquina.
```

### Resultado 1

Aprendizado de máquina, ou *Machine Learning*, é uma área da Inteligência Artificial que permite que computadores aprendam padrões a partir de dados para fazer previsões ou tomar decisões. Em vez de programar manualmente todas as regras, um sistema utiliza exemplos para identificar relações nos dados.

Por exemplo, um serviço de streaming pode analisar os filmes e séries que uma pessoa assiste para recomendar outros conteúdos. Um sistema de e-mail pode aprender a reconhecer mensagens que parecem ser spam.

Existem diferentes tipos de aprendizado de máquina, incluindo o supervisionado, o não supervisionado e o aprendizado por reforço. Cada tipo é adequado a diferentes problemas.

### Análise crítica

**O que funcionou?**

- A resposta apresentou uma definição básica.
- Incluiu exemplos cotidianos.
- Citou três categorias comuns de aprendizado de máquina.

**O que não funcionou?**

- Não explicou o conceito pensando especificamente em estudantes iniciantes.
- Não detalhou as etapas gerais de funcionamento.
- Não comparou aprendizado supervisionado e não supervisionado.
- Não explicou quando o uso de Machine Learning pode ser desnecessário.
- Não definiu tamanho, estrutura ou critérios de qualidade para a resposta.

**O que ficou genérico?**

A expressão "aprendem padrões a partir de dados" foi apresentada sem uma analogia ou explicação passo a passo. A resposta também citou categorias sem explicar a diferença entre elas.

**O que poderia ser melhor?**

Definir o público e o objetivo, pedir uma analogia, organizar a resposta por tópicos e estabelecer limites para evitar excesso de termos técnicos.

---

## 4. Prompt 2 — Primeiro refinamento

### Alterações realizadas

- **Papel:** a IA passa a atuar como professora de Ciência da Computação.
- **Contexto:** informa que o conteúdo será usado em uma aula introdutória.
- **Objetivo:** ajudar estudantes iniciantes a compreender o conceito.
- **Público:** estudantes do primeiro semestre de graduação.
- **Formato:** solicita definição, funcionamento, exemplos e comparação.
- **Restrições:** pede linguagem acessível e limite aproximado de 500 palavras.
- **Critérios de qualidade:** busca uma explicação organizada e compreensível.

### Prompt utilizado

```text
Atue como professor de Ciência da Computação.

Explique aprendizado de máquina para estudantes iniciantes
de graduação, usando linguagem acessível.

Apresente:
1. uma definição;
2. como funciona;
3. três exemplos de aplicações no cotidiano;
4. uma comparação entre aprendizado supervisionado
   e não supervisionado.

Organize a resposta com subtítulos e limite o texto
a aproximadamente 500 palavras.
Evite explicações matemáticas avançadas.
```

### Resultado 2

## O que é aprendizado de máquina?

Aprendizado de máquina (*Machine Learning*) é uma área da Inteligência Artificial na qual os computadores utilizam dados para identificar padrões e produzir previsões ou decisões. Em vez de receber uma regra específica para cada situação, o sistema é treinado com exemplos.

### Como funciona?

De forma simplificada, o processo possui três etapas:

1. **Dados:** são reunidos exemplos relevantes para o problema.
2. **Treinamento:** um algoritmo analisa os dados e ajusta um modelo para reconhecer padrões.
3. **Uso do modelo:** o modelo recebe novos dados e produz uma previsão ou classificação.

A qualidade dos dados e a forma como o modelo é avaliado influenciam os resultados. Um modelo pode cometer erros, portanto suas previsões não devem ser consideradas automaticamente corretas.

### Três exemplos do cotidiano

- **Serviços de streaming:** podem recomendar filmes e séries com base em padrões de visualização e preferências.
- **Filtros de spam:** podem classificar mensagens como possivelmente indesejadas a partir de exemplos e características das mensagens.
- **Previsão de demanda:** empresas podem estimar a procura por produtos usando dados históricos e outras informações relevantes.

### Aprendizado supervisionado e não supervisionado

| Tipo | Como funciona | Exemplo |
|---|---|---|
| Supervisionado | Aprende com exemplos que incluem a resposta ou o rótulo esperado. | Classificar mensagens previamente identificadas como spam ou não spam. |
| Não supervisionado | Procura padrões ou grupos em dados sem rótulos previamente definidos. | Agrupar clientes de acordo com semelhanças de comportamento. |

Em resumo, o aprendizado supervisionado utiliza exemplos com respostas conhecidas, enquanto o não supervisionado procura estruturas nos dados sem receber essas respostas.

### Análise do Resultado 2

A resposta ficou mais organizada e explica o funcionamento em etapas. A comparação em tabela facilita a compreensão das diferenças entre os dois tipos de aprendizado.

Entretanto, ainda não apresenta uma analogia cotidiana desenvolvida, não explica explicitamente quando Machine Learning pode não ser a melhor solução e não verifica a compreensão do estudante.

---

## 5. Comparação entre Prompt 1 e Prompt 2

Notas de 1 a 5, considerando os resultados registrados nesta atividade.

| Critério | Prompt 1 | Prompt 2 |
|---|---:|---:|
| Clareza | 3 | 4 |
| Precisão | 3 | 4 |
| Relevância | 3 | 4 |
| Organização | 2 | 4 |
| Adequação ao público | 2 | 4 |
| Atendimento ao objetivo | 2 | 4 |
| Utilidade prática | 3 | 4 |
| **Total** | **18/35** | **28/35** |

### Interpretação

O Prompt 2 obteve avaliação melhor porque especificou o público, o conteúdo esperado e a organização da resposta. O Prompt 1 gerou uma explicação válida em termos gerais, mas deixou muitas decisões a cargo da IA.

As notas são julgamentos qualitativos usados para a atividade. Elas não provam, por si só, que uma resposta é tecnicamente correta; essa questão exige validação do conteúdo.

---

## 6. Prompt 3 — Segundo refinamento

### O que ainda precisava melhorar?

1. Faltava uma analogia simples para ajudar o estudante a formar uma imagem mental do conceito.
2. Era necessário explicar quando Machine Learning não seria a melhor solução.
3. Termos técnicos precisavam ser explicados quando aparecessem.
4. Seria útil acrescentar perguntas para verificar se o estudante compreendeu a explicação.
5. A resposta precisava reforçar que o modelo pode errar e que os resultados devem ser avaliados.

### Hipótese de melhoria

Acredito que a resposta ficará mais adequada porque o terceiro prompt explicita os conhecimentos prévios do público, exige uma analogia, inclui uma situação em que Machine Learning não é necessário e termina com perguntas de compreensão.

Isso deve tornar a explicação mais didática e crítica, sem depender apenas de aumentar o tamanho do prompt.

### Prompt utilizado

```text
PAPEL:
Atue como professor de Ciência da Computação especializado
em Inteligência Artificial e no ensino de iniciantes.

CONTEXTO:
Os estudantes estão no primeiro semestre da graduação
e ainda não estudaram estatística nem algoritmos de
Machine Learning.

OBJETIVO:
Ajudar os estudantes a compreender intuitivamente o que
é aprendizado de máquina, como funciona e quais são seus
limites.

TAREFA:
Explique o conceito apresentando:
1. uma definição em linguagem simples;
2. uma analogia com uma situação cotidiana;
3. as etapas gerais de funcionamento;
4. três exemplos de aplicações reais;
5. uma comparação entre aprendizado supervisionado
   e não supervisionado;
6. uma situação em que Machine Learning não seria
   a melhor solução;
7. dois cuidados necessários ao avaliar os resultados.

FORMATO:
Use subtítulos e uma tabela para comparar os dois tipos
de aprendizado.

RESTRIÇÕES:
- Use no máximo 500 palavras.
- Não utilize fórmulas matemáticas.
- Explique os termos técnicos necessários.
- Não apresente previsões de um modelo como garantias.

CRITÉRIO DE QUALIDADE:
Um estudante iniciante deve conseguir explicar o conceito
com suas próprias palavras após ler a resposta.

Finalize com duas perguntas para verificar a compreensão,
sem apresentar as respostas dessas perguntas.
```

### Resultado 3

## O que é aprendizado de máquina?

**Aprendizado de máquina (*Machine Learning*)** é uma área da Inteligência Artificial que permite a um computador identificar padrões em dados e usar esses padrões para fazer previsões ou classificações.

### Uma analogia cotidiana

Imagine que você quer reconhecer maçãs e laranjas. Ao observar muitos exemplos e receber informações sobre quais frutas são maçãs e quais são laranjas, você começa a notar características que ajudam a distingui-las.

De maneira simplificada, um modelo de aprendizado de máquina também identifica padrões a partir de exemplos. A analogia é limitada: o sistema realiza cálculos matemáticos e não aprende exatamente como uma pessoa.

### Como funciona?

1. **Coleta de dados:** são reunidos exemplos relevantes para a tarefa.
2. **Treinamento:** um algoritmo ajusta um modelo para identificar relações nos dados.
3. **Avaliação:** o modelo é testado com dados apropriados para verificar seu desempenho.
4. **Uso:** o modelo analisa novos dados e produz uma previsão ou classificação.

### Exemplos de aplicações

- **Filtro de spam:** classifica mensagens que podem ser indesejadas.
- **Recomendação de conteúdo:** sugere filmes ou músicas a partir de padrões de uso.
- **Previsão de demanda:** estima a procura por produtos usando dados históricos.

### Dois tipos de aprendizado

| Tipo | Explicação | Exemplo |
|---|---|---|
| Supervisionado | Usa exemplos com respostas conhecidas durante o treinamento. | Aprender a classificar mensagens rotuladas como spam ou não spam. |
| Não supervisionado | Procura grupos ou padrões em dados sem rótulos fornecidos previamente. | Agrupar registros de clientes com comportamentos semelhantes. |

### Quando Machine Learning não é a melhor solução?

Se uma tarefa pode ser resolvida de forma confiável com uma regra simples e conhecida, como verificar se uma pessoa tem 18 anos ou mais a partir de sua idade informada, um programa baseado em uma condição pode ser suficiente. Treinar um modelo seria desnecessário para esse caso simples.

### Cuidados importantes

1. **Os resultados podem estar errados:** o modelo pode falhar com dados incompletos, inadequados ou diferentes daqueles usados no treinamento.
2. **Os dados precisam ser avaliados:** dados enviesados ou pouco representativos podem levar a resultados injustos ou pouco confiáveis.

### Verifique sua compreensão

1. Qual é a diferença entre aprendizado supervisionado e não supervisionado?
2. Por que uma regra simples pode ser mais adequada do que Machine Learning em alguns problemas?

---

## 7. Comparação final das três versões

| Critério | Prompt 1 | Prompt 2 | Prompt 3 |
|---|---:|---:|---:|
| Clareza | 3 | 4 | 5 |
| Precisão | 3 | 4 | 4 |
| Relevância | 3 | 4 | 5 |
| Organização | 2 | 4 | 5 |
| Adequação ao público | 2 | 4 | 5 |
| Atendimento ao objetivo | 2 | 4 | 5 |
| Utilidade prática | 3 | 4 | 5 |
| **Total** | **18/35** | **28/35** | **34/35** |

### Justificativa das notas

- **Prompt 1:** produziu uma resposta introdutória, mas sem estrutura ou público definidos.
- **Prompt 2:** acrescentou organização, exemplos e comparação entre dois tipos de aprendizado.
- **Prompt 3:** tornou a explicação mais didática ao incluir analogia, limites de uso, cuidados e perguntas de compreensão.

O Prompt 3 recebeu nota menor em precisão do que em alguns outros critérios porque, mesmo com instruções melhores, a resposta ainda precisa ser confrontada com materiais confiáveis e testada conforme o objetivo de uso.

Uma resposta bem organizada não garante, por si só, que todas as afirmações estejam corretas.

### Qual modificação teve maior impacto no resultado?

A mudança de maior impacto foi definir o público e o objetivo de aprendizagem e, em seguida, especificar os elementos que a explicação deveria conter. A analogia, a comparação em tabela e a situação em que Machine Learning não é necessário tornaram a resposta mais fácil de compreender e mais equilibrada.

---

## 8. Validação crítica

A validação foi feita por meio de uma análise conceitual da resposta, conferindo a coerência das definições e a relação entre os exemplos e os conceitos apresentados.

Esta é uma revisão preliminar; não equivale a uma auditoria técnica independente nem substitui a consulta a materiais da disciplina.

### Checklist de validação

- [x] A resposta explica o conceito de aprendizado de máquina.
- [x] Diferencia, em termos gerais, aprendizado supervisionado e não supervisionado.
- [x] Apresenta exemplos compatíveis com os conceitos descritos.
- [x] Reconhece que os modelos podem cometer erros.
- [x] Explica uma situação simples em que uma regra convencional é suficiente.
- [x] Inclui perguntas para verificar a compreensão.
- [ ] Todas as aplicações específicas foram verificadas em documentação técnica externa.
- [ ] A explicação foi avaliada por um professor ou especialista.

### Limitações identificadas

- A analogia das frutas é apenas uma simplificação; o treinamento de modelos envolve procedimentos matemáticos.
- Os exemplos são gerais e não descrevem a implementação exata de um produto específico.
- O desempenho de um modelo depende dos dados, da tarefa e da avaliação utilizada.
- A nota atribuída a cada prompt é subjetiva e foi usada apenas para comparar as versões nesta atividade.

### Como melhorar a validação?

Para uma entrega acadêmica mais rigorosa, seria possível consultar o material didático da disciplina e documentação introdutória confiável sobre Machine Learning, registrar as fontes consultadas e pedir a alguém com conhecimento técnico que revise as definições e os exemplos.

---

## 9. Qual foi a principal diferença entre o prompt inicial e o refinado?

A principal diferença foi o nível de orientação dado à IA. O prompt inicial apenas pediu uma explicação, enquanto as versões refinadas especificaram o público, o objetivo, a estrutura, os exemplos, as restrições e os critérios de qualidade.

Isso reduziu a ambiguidade e tornou as respostas mais alinhadas à necessidade de estudantes iniciantes.

## 10. Quais elementos tiveram maior impacto no resultado?

Os elementos de maior impacto foram a definição do público, a clareza do objetivo e a especificação do formato. A analogia e a solicitação de uma situação em que Machine Learning não é necessário também melhoraram a compreensão e incentivaram uma análise menos superficial.

## 11. Um prompt mais longo necessariamente produz uma resposta melhor? Justifique.

Não. Um prompt mais longo pode continuar vago se não incluir informações relevantes. O importante é fornecer instruções úteis para a tarefa, como contexto, objetivo, público, formato e limites.

Instruções repetidas ou desnecessárias podem até dificultar a identificação do que realmente importa.

## 12. O que acontece quando o objetivo solicitado à IA não está claramente definido?

A IA precisa inferir o que o usuário deseja. Por isso, pode produzir uma resposta genérica, incluir detalhes desnecessários ou deixar de abordar informações importantes.

Um objetivo claro ajuda a direcionar a resposta para a necessidade real.

## 13. Quais informações são indispensáveis para elaborar um bom prompt?

As informações variam conforme a tarefa, mas normalmente é útil definir o objetivo, o contexto, o público, a tarefa específica e o formato esperado.

Restrições e critérios de qualidade também são importantes quando há limites de tamanho, nível técnico ou requisitos de correção.

## 14. Como o refinamento de prompts pode ser útil para um profissional de Ciência da Computação?

Pode ajudar a solicitar explicações técnicas, revisar código, elaborar casos de teste, comparar tecnologias, documentar sistemas e investigar erros.

Em todos esses usos, o profissional precisa fornecer contexto suficiente e validar o que a IA produzir antes de aplicar a resposta.

## 15. Que riscos podem surgir quando confiamos em uma resposta da IA sem avaliar sua qualidade?

Podemos utilizar informações incorretas, código com falhas, recomendações inadequadas ou explicações que parecem convincentes, mas não têm sustentação.

Em sistemas reais, isso pode gerar erros técnicos, problemas de segurança, desperdício de recursos ou decisões injustas.

## 16. Houve alguma situação em que o Prompt 3 ficou pior que o Prompt 2? Se sim, explique.

Nesta comparação ilustrativa, o Prompt 3 foi considerado melhor para o objetivo definido, mas isso não significa que ele sempre produziria uma resposta superior.

As instruções adicionais podem ocupar espaço que seria usado para aprofundar outro aspecto, e o limite de palavras exige escolhas. Em outra tarefa, uma resposta mais curta do Prompt 2 poderia ser mais útil.

## 17. Existe um ponto em que adicionar mais instruções começa a prejudicar a resposta?

Sim. Instruções repetidas, conflitantes ou excessivamente detalhadas podem tornar o objetivo confuso.

O refinamento deve remover ambiguidades e acrescentar informações relevantes, não apenas aumentar o tamanho do prompt.

## 18. O que você faria para verificar se a resposta está tecnicamente correta?

Compararia as afirmações com o material da disciplina e fontes técnicas confiáveis, conferiria se os exemplos correspondem aos conceitos, verificaria as referências mencionadas e testaria qualquer código ou procedimento quando aplicável.

Também registraria as limitações que não fosse possível confirmar.

---

## 19. Take Away

> Um bom prompt não é simplesmente um prompt longo. Ele precisa apresentar informações relevantes, explicar o objetivo e orientar a IA para produzir uma resposta adequada ao contexto.

A atividade mostrou que o refinamento é um processo iterativo: criar, testar, analisar, identificar limitações, ajustar as instruções, comparar e validar.

Mesmo quando a resposta melhora, é necessário verificar se ela está correta e se atende de fato ao problema.

---

## 20. Cinco recomendações práticas

1. **Defina o objetivo:** explique exatamente o que você deseja obter.
2. **Informe o contexto e o público:** diga para quem é a resposta e quais conhecimentos prévios devem ser considerados.
3. **Especifique o formato:** solicite uma tabela, lista, explicação por etapas ou outro formato adequado.
4. **Estabeleça limites úteis:** informe o nível de detalhe, as restrições técnicas e os critérios importantes para a tarefa.
5. **Analise e valide o resultado:** não aceite automaticamente a resposta; confira informações, teste soluções e refine o prompt conforme as falhas encontradas.

---

## 21. Desafio final: cinco perguntas para diagnosticar um prompt que não funcionou

Antes de concluir que a IA respondeu errado, eu faria estas perguntas:

1. **O objetivo foi descrito de forma clara e específica?**
2. **O prompt forneceu contexto suficiente e indicou o público correto?**
3. **O formato, o nível de detalhe e as restrições estavam explícitos?**
4. **A resposta deixou de cumprir alguma instrução ou apresentou afirmações que precisam ser verificadas?**
5. **O problema está nas instruções, nas informações disponíveis, na resposta gerada ou nos critérios usados para avaliar o resultado?**

### Pergunta final

O problema pode estar no prompt, na resposta da IA, nas informações utilizadas ou na forma como o usuário avaliou o resultado.

Por isso, é importante investigar cada possibilidade antes de fazer alterações. O refinamento melhora a orientação dada ao sistema, mas não elimina erros nem substitui a validação humana.

---

## 22. Conclusão

O refinamento de prompts é uma habilidade importante para utilizar a Inteligência Artificial Generativa de forma mais eficiente e responsável.

Ao comparar três versões, foi possível perceber que contexto, objetivo, público, formato e critérios de qualidade ajudam a orientar a resposta.

A atividade também reforçou que a qualidade da escrita não garante a correção técnica. Por isso, a IA deve ser usada como apoio ao raciocínio, e as respostas precisam ser avaliadas antes de serem utilizadas em trabalhos acadêmicos ou situações profissionais.

**Ideia-chave:** refinar um prompt significa identificar quais informações são necessárias para diminuir ambiguidades e orientar a IA para o objetivo desejado. Uma resposta mais adequada ainda precisa ser verificada.

---

## 23. Checklist antes da entrega

- [x] Escolhi um problema de Ciência da Computação.
- [x] Registrei o Prompt 1.
- [x] Registrei o Resultado 1.
- [x] Analisei as limitações.
- [x] Construí o Prompt 2.
- [x] Registrei o Resultado 2.
- [x] Comparei os resultados.
- [x] Construí o Prompt 3.
- [x] Registrei o Resultado 3.
- [x] Comparei as três versões.
- [x] Analisei a qualidade das respostas.
- [x] Verifiquei possíveis informações incorretas.
- [x] Respondi às questões de reflexão.
- [x] Completei o Take Away.
- [x] Registrei cinco recomendações.
- [x] Organizei o arquivo no GitHub.

---
