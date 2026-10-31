# Programação Assistida e Automação com IA

## Identificação

- **Nome:** Júlia Roberta de Fátima Sousa Araújo
- **Disciplina:** Tendências em Ciência da Computação
- **Unidade:** II — Programação Assistida
- **Professora:** Kadidja Valéria
- **Ferramenta de IA utilizada:** ChatGPT
- **Linguagem de programação:** Python

---

## 1. Descrição do problema

O problema escolhido foi a análise de logs de um sistema.

Os logs registram acontecimentos durante a execução de um programa, incluindo mensagens informativas, avisos e erros. Quando existe uma grande quantidade de mensagens, contar essas ocorrências manualmente pode ser demorado e sujeito a falhas.

O objetivo é desenvolver um script em Python que receba uma lista de mensagens de log e conte quantas ocorrências existem de cada categoria: `INFO`, `WARNING` e `ERROR`.

### Objetivo

Automatizar a contagem das categorias de mensagens de log, facilitando a identificação de informações, avisos e erros registrados por um sistema.

## 2. Entrada

O programa recebe uma lista de strings contendo mensagens de log.

Exemplo:

```python
logs = [
    "INFO - usuário autenticado",
    "ERROR - conexão perdida",
    "INFO - arquivo salvo",
    "WARNING - espaço reduzido",
    "ERROR - banco indisponível"
]
```

Cada mensagem contém uma categoria, seguida de uma descrição.

As categorias consideradas são:

- `INFO`: mensagens informativas.
- `WARNING`: mensagens de aviso.
- `ERROR`: mensagens de erro.

## 3. Processamento

O programa percorre a lista de mensagens e identifica a categoria de cada uma.

Quando encontra uma categoria reconhecida, incrementa seu contador correspondente.

Ao final, reúne as quantidades em um resultado que pode ser apresentado ao usuário.

Mensagens que não pertencem às categorias reconhecidas são ignoradas.

## 4. Saída esperada

Para a lista de entrada apresentada anteriormente, espera-se o seguinte resultado:

```text
INFO: 2
WARNING: 1
ERROR: 2
```

Isso significa que foram identificadas duas mensagens informativas, uma mensagem de aviso e duas mensagens de erro.

---

## 5. Prompt utilizado para gerar o código inicial

```text
Atue como desenvolvedor Python e ajude a criar um programa simples
para analisar mensagens de log.

PROBLEMA:
Preciso contar quantas mensagens existem de cada categoria em uma
lista de logs.

ENTRADA:
Uma lista de strings contendo mensagens que podem começar com
INFO, WARNING ou ERROR.

SAÍDA ESPERADA:
A quantidade de ocorrências de cada categoria, apresentada
separadamente.

LINGUAGEM:
Python.

RESTRIÇÕES:
- Utilizar somente recursos da biblioteca padrão do Python.
- Não utilizar bibliotecas externas.
- Não alterar as mensagens recebidas.
- Tratar uma lista vazia sem gerar erros.
- Considerar apenas as categorias INFO, WARNING e ERROR.
- Ignorar mensagens que não comecem com uma categoria reconhecida.

CRITÉRIOS DE QUALIDADE:
- Código legível e organizado.
- Nomes de variáveis claros.
- Separação da lógica em funções.
- Tratamento adequado de entradas inesperadas.
- Facilidade de manutenção.

CASOS DE TESTE:
1. Lista com mensagens das três categorias.
2. Lista vazia.
3. Lista com mensagens de categorias desconhecidas.

Apresente o código inicial, explique seu funcionamento
e indique possíveis limitações.
```

## 6. Primeira versão do código

```python
logs = [
    "INFO - usuário autenticado",
    "ERROR - conexão perdida",
    "INFO - arquivo salvo",
    "WARNING - espaço reduzido",
    "ERROR - banco indisponível"
]

info = 0
warning = 0
error = 0

for log in logs:
    if log.startswith("INFO"):
        info += 1
    elif log.startswith("WARNING"):
        warning += 1
    elif log.startswith("ERROR"):
        error += 1

print("INFO:", info)
print("WARNING:", warning)
print("ERROR:", error)
```

## 7. Análise crítica da primeira versão

A primeira versão atende ao objetivo principal, pois percorre a lista de logs, identifica as três categorias e apresenta suas quantidades.

Entretanto, apresenta algumas limitações:

- **Reutilização limitada:** a lista de mensagens está definida diretamente no programa.
- **Organização:** a lógica de contagem não está separada em uma função.
- **Validação:** não existe verificação do tipo de dado recebido.
- **Reutilização dos resultados:** os valores são apresentados diretamente na tela, sem retornar uma estrutura que possa ser utilizada por outras partes do programa.
- **Testabilidade:** não há testes organizados dentro do código.
- **Mensagens desconhecidas:** o programa ignora categorias não reconhecidas, mas não registra quantas mensagens foram ignoradas.

Apesar dessas limitações, o programa consegue realizar a contagem para a lista apresentada.

A principal melhoria necessária é organizar a lógica em uma função reutilizável, validar a entrada e facilitar a verificação dos resultados.

---

## 8. Casos de teste

### 8.1. Teste 1 — Caso normal

**Objetivo:** verificar se o programa conta corretamente as três categorias.

**Entrada:**

```python
[
    "INFO - usuário autenticado",
    "ERROR - conexão perdida",
    "INFO - arquivo salvo",
    "WARNING - espaço reduzido",
    "ERROR - banco indisponível"
]
```

**Resultado esperado:**

```text
INFO: 2
WARNING: 1
ERROR: 2
```

**Resultado observado:** a primeira versão apresenta duas ocorrências de `INFO`, uma de `WARNING` e duas de `ERROR`.

**Status:** aprovado.

### 8.2. Teste 2 — Lista vazia

**Objetivo:** verificar o comportamento do programa quando não existem mensagens.

**Entrada:**

```python
[]
```

**Resultado esperado:**

```text
INFO: 0
WARNING: 0
ERROR: 0
```

**Resultado observado:** a primeira versão apresenta zero ocorrências para todas as categorias.

**Status:** aprovado.

### 8.3. Teste 3 — Categorias desconhecidas

**Objetivo:** verificar se o programa ignora mensagens que não pertencem às categorias consideradas.

**Entrada:**

```python
[
    "INFO - processo iniciado",
    "DEBUG - informação de depuração",
    "ERROR - falha no sistema",
    "OUTRO - mensagem desconhecida"
]
```

**Resultado esperado:**

```text
INFO: 1
WARNING: 0
ERROR: 1
```

As mensagens `DEBUG` e `OUTRO` devem ser ignoradas.

**Resultado observado:** a primeira versão apresenta as quantidades esperadas para as três categorias reconhecidas.

**Status:** aprovado.

### 8.4. Resumo dos testes

| Teste | Cenário | Resultado esperado | Resultado observado | Status |
|---|---|---|---|---|
| 1 | Lista com as três categorias | INFO: 2, WARNING: 1, ERROR: 2 | INFO: 2, WARNING: 1, ERROR: 2 | Aprovado |
| 2 | Lista vazia | INFO: 0, WARNING: 0, ERROR: 0 | INFO: 0, WARNING: 0, ERROR: 0 | Aprovado |
| 3 | Categorias desconhecidas | INFO: 1, WARNING: 0, ERROR: 1 | INFO: 1, WARNING: 0, ERROR: 1 | Aprovado |

**Observação:** os resultados apresentados correspondem ao comportamento esperado do código para as entradas descritas. Para registrar resultados efetivamente observados, os testes devem ser executados no ambiente Python utilizado na atividade.

---

## 9. Prompt utilizado para refatoração

```text
Revise o código Python abaixo.

O programa já realiza a contagem de mensagens de log das categorias
INFO, WARNING e ERROR.

Analise os seguintes critérios:
- Clareza e legibilidade.
- Organização do código.
- Nomes de variáveis e funções.
- Separação da lógica em funções.
- Validação da entrada.
- Tratamento de erros.
- Facilidade de manutenção.

Sugira melhorias sem alterar o comportamento esperado para entradas
válidas.

A versão refatorada deve:

1. Implementar uma função chamada contar_logs.
2. Receber uma lista de mensagens.
3. Contar as categorias INFO, WARNING e ERROR.
4. Retornar os resultados em um dicionário.
5. Tratar uma lista vazia corretamente.
6. Rejeitar entradas que não sejam listas.
7. Ignorar elementos que não sejam strings.
8. Ignorar mensagens que não comecem com uma categoria reconhecida.
9. Utilizar nomes de variáveis claros.
10. Incluir uma docstring.
11. Apresentar exemplos de uso.

Explique as principais alterações realizadas.

CÓDIGO ORIGINAL:
[Inserir aqui a primeira versão do código]
```

## 10. Versão refatorada do código

```python
def contar_logs(logs):
    """
    Conta as ocorrências de INFO, WARNING e ERROR em uma lista de logs.

    Args:
        logs: Lista de mensagens de log.

    Returns:
        Dicionário com a quantidade de ocorrências de cada categoria.

    Raises:
        TypeError: Se a entrada não for uma lista.
    """
    if not isinstance(logs, list):
        raise TypeError("A entrada deve ser uma lista.")

    contagem = {
        "INFO": 0,
        "WARNING": 0,
        "ERROR": 0
    }

    for mensagem in logs:
        if not isinstance(mensagem, str):
            continue

        categoria = mensagem.split(" - ", 1)[0].strip()

        if categoria in contagem:
            contagem[categoria] += 1

    return contagem


if __name__ == "__main__":
    logs = [
        "INFO - usuário autenticado",
        "ERROR - conexão perdida",
        "INFO - arquivo salvo",
        "WARNING - espaço reduzido",
        "ERROR - banco indisponível"
    ]

    resultado = contar_logs(logs)

    for categoria, quantidade in resultado.items():
        print(f"{categoria}: {quantidade}")
```

### 10.1. Principais melhorias realizadas

- **Função específica:** a lógica foi agrupada na função `contar_logs`.
- **Melhor organização:** a contagem foi separada da apresentação dos resultados.
- **Dicionário de resultados:** as categorias e suas quantidades são armazenadas em uma estrutura única.
- **Validação da entrada:** o programa verifica se recebeu uma lista.
- **Tratamento de elementos inválidos:** elementos que não são strings são ignorados.
- **Facilidade de reutilização:** a função pode receber diferentes listas de mensagens.
- **Documentação:** a docstring explica o objetivo da função, os parâmetros, o retorno e a exceção prevista.

A versão refatorada mantém o objetivo principal do programa, mas apresenta uma estrutura mais organizada e reutilizável.

---

## 11. Comparação entre as versões

As notas abaixo representam uma avaliação qualitativa das implementações, considerando os critérios propostos na atividade.

A escala utilizada vai de 1 a 5, sendo 1 a menor avaliação e 5 a maior.

| Critério | Versão inicial | Versão refatorada |
|---|---:|---:|
| Funcionamento correto | 4 | 5 |
| Clareza | 3 | 5 |
| Organização | 2 | 5 |
| Legibilidade | 3 | 5 |
| Tratamento de erros | 2 | 4 |
| Facilidade de manutenção | 2 | 5 |

### Análise da comparação

A versão inicial realiza a contagem corretamente para a lista definida no próprio código, mas apresenta uma estrutura limitada e pouco reutilizável.

A versão refatorada organiza a lógica em uma função, utiliza um dicionário para armazenar os resultados e permite analisar diferentes listas sem modificar a implementação.

Além disso, a função valida o tipo da entrada, ignora elementos que não sejam strings e mantém o comportamento esperado para listas vazias e mensagens de categorias desconhecidas.

As notas representam uma avaliação qualitativa, e não resultados de uma medição automatizada.

---

## 12. Reflexão final

A inteligência artificial foi útil para apoiar a criação da solução inicial, identificar possibilidades de melhoria e organizar a refatoração do código.

A primeira versão resolveu o problema principal, mas apresentou limitações relacionadas à organização, à reutilização e à validação da entrada.

Após a refatoração, o programa passou a utilizar uma função específica para a contagem, retornando os resultados em um dicionário. Isso tornou a implementação mais organizada e fácil de testar.

Os casos de teste ajudaram a verificar o comportamento com uma lista normal, uma lista vazia e mensagens de categorias desconhecidas.

A atividade demonstrou que o código produzido com apoio de IA precisa ser analisado e testado antes de ser utilizado. A responsabilidade pela compreensão, validação e utilização da solução continua sendo do desenvolvedor.

## 13. Take Away

Programar com IA não significa deixar a IA programar por mim. Significa utilizar a ferramenta como apoio, compreender o código gerado, testar seu funcionamento, identificar limitações e realizar as modificações necessárias. A IA pode acelerar o desenvolvimento, mas a qualidade da solução depende da análise crítica e da responsabilidade de quem programa.

---

## 14. Checklist de entrega

- [x] Defini o problema.
- [x] Identifiquei a entrada, o processamento e a saída esperada.
- [x] Registrei o prompt utilizado para gerar o código inicial.
- [x] Registrei a primeira versão do código.
- [x] Analisei criticamente a primeira versão.
- [x] Descrevi pelo menos três casos de teste.
- [ ] Executei os três testes e confirmei os resultados.
- [x] Registrei os resultados esperados dos testes.
- [x] Registrei o prompt utilizado para refatoração.
- [x] Apresentei a versão refatorada do código.
- [x] Comparei as duas versões.
- [x] Escrevi a reflexão final.
- [ ] Preenchi os dados pessoais de identificação.
- [ ] Organizei e publiquei o arquivo no GitHub.
