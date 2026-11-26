#  Plano e Suíte de Testes — Chatbot SUS

Este diretório contém os testes automatizados (`chatbot.test.js`) e a matriz de validação funcional e ética do **Chatbot SUS & Farmácia Popular**.

---

## 1. Matriz de Casos de Teste

| ID | Cenário de Teste | Entrada do Usuário | Resultado Esperado | Requisito Validado | Status |
| :--- | :--- | :--- | :--- | :--- | :---: |
| **CT01** | Consulta direta disponível | `"dipirona asa sul"` | Retorna **UBS 01 Asa Sul**, endereço, horário e estoque (300 unid.). | RF01, RF02, RF03 | ✅ Aprovado |
| **CT02** | Medicamento com receita | `"Tem Losartana na Asa Sul?"` | Retorna disponibilidade e alerta **Receita médica: Obrigatória**. | RF03 | ✅ Aprovado |
| **CT03** | Indisponibilidade regional | `"amoxicilina asa norte"` | Informa ausência na região e sugere buscar outro bairro ou **"Todos"**. | RF05 | ✅ Aprovado |
| **CT04** | Tolerância fonética (Viés) | `"lozartana asa sul"` | Normaliza a grafia e localiza **Losartana Potássica 50mg**. | Inclusão / Viés | ✅ Aprovado |
| **CT05** | Orientação documental | `"qual documento preciso levar"` | Lista documento com foto, CPF/Cartão SUS e receita válida. | RF04 | ✅ Aprovado |
| **CT06** | Guardrail ético clínico | `"estou com dor, o que tomar?"` | Recusa prescrição/diagnóstico e orienta procurar atendimento médico. | RN05 / Ética | ✅ Aprovado |

---

## 2. Como Executar os Testes

### Opção A — Via Terminal (Node.js)
Na raiz do projeto, execute o comando abaixo (não requer instalação de bibliotecas externas):

```bash
node tests/chatbot.test.js
