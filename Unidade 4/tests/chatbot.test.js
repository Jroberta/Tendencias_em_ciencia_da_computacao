/**
 * Suíte de Testes Automatizados — Chatbot SUS & Farmácia Popular
 * Execução: Via Node.js (`node tests/chatbot.test.js`) ou Console do Navegador.
 */

// Base de dados simulada para validação isolada da lógica do agente
const MOCK_ESTOQUE = [
  {
    medicamento: "Dipirona Sódica 500mg (Comprimido)",
    sinonimos: ["dipirona", "dipirone", "novalgina"],
    regiao: "Asa Sul",
    cep: "70200-720",
    unidade: "UBS 01 Asa Sul",
    quantidade: 300,
    exige_receita: false
  },
  {
    medicamento: "Losartana Potássica 50mg",
    sinonimos: ["losartana", "lozartana"],
    regiao: "Asa Sul",
    cep: "70200-720",
    unidade: "UBS 01 Asa Sul",
    quantidade: 450,
    exige_receita: true
  },
  {
    medicamento: "Amoxicilina 500mg (Cápsula)",
    sinonimos: ["amoxicilina", "amoxilina"],
    regiao: "Taguatinga",
    cep: "72010-000",
    unidade: "UBS 02 Taguatinga",
    quantidade: 120,
    exige_receita: true
  }
];

// Simulação do motor de interpretação e regras éticas do Agente
function processarMensagemTeste(mensagem) {
  const texto = mensagem.toLowerCase().trim();

  // Regra Ética RN05: Bloqueio de prescrição ou diagnóstico médico
  const termosClinicos = ["dor", "febre", "tomar", "prescreva", "sintoma", "estou com"];
  if (termosClinicos.some(termo => texto.includes(termo))) {
    return {
      status: "BLOQUEIO_ETICO",
      resposta: "Não realizo diagnósticos ou prescrições médicas. Procure uma UBS ou médico."
    };
  }

  // RF04: Orientação documental
  if (texto.includes("documento") || texto.includes("receita")) {
    return {
      status: "ORIENTACAO_DOCUMENTOS",
      resposta: "Documento oficial com foto, CPF ou Cartão do SUS e receita médica válida."
    };
  }

  // RF01 & RF02: Identificação de medicamento (incluindo tolerância fonética) e região
  const itemEncontrado = MOCK_ESTOQUE.find(item =>
    item.sinonimos.some(s => texto.includes(s))
  );

  if (!itemEncontrado) {
    return {
      status: "NAO_ENCONTRADO",
      resposta: "Medicamento não localizado no catálogo básico."
    };
  }

  // Verifica filtro regional
  const regioesConhecidas = ["asa sul", "asa norte", "taguatinga"];
  const regiaoSolicitada = regioesConhecidas.find(r => texto.includes(r));

  if (regiaoSolicitada && itemEncontrado.regiao.toLowerCase() !== regiaoSolicitada) {
    return {
      status: "INDISPONIVEL_REGIAO",
      resposta: `Não encontrei unidades cadastradas para ${itemEncontrado.medicamento} na região "${regiaoSolicitada}".`
    };
  }

  return {
    status: "DISPONIVEL",
    unidade: itemEncontrado.unidade,
    quantidade: itemEncontrado.quantidade,
    exige_receita: itemEncontrado.exige_receita
  };
}

// ============================================================================
// Executor de Asserções (Test Runner)
// ============================================================================
let totalTestes = 0;
let testesPassaram = 0;

function executarTeste(nome, fn) {
  totalTestes++;
  try {
    fn();
    testesPassaram++;
    console.log(`✅ [PASSOU] ${nome}`);
  } catch (erro) {
    console.error(`❌ [FALHOU] ${nome} -> ${erro.message}`);
  }
}

function assertIgual(atual, esperado, detalhe = "") {
  if (atual !== esperado) {
    throw new Error(`${detalhe} Esperado: "${esperado}", Recebido: "${atual}"`);
  }
}

console.log("=== INICIANDO SUÍTE DE TESTES — CHATBOT SUS ===\n");

// CT01: Consulta direta com medicamento e bairro disponíveis (RF01, RF02, RF03)
executarTeste("CT01 - Deve retornar estoque disponível para Dipirona na Asa Sul", () => {
  const res = processarMensagemTeste("dipirona asa sul");
  assertIgual(res.status, "DISPONIVEL");
  assertIgual(res.unidade, "UBS 01 Asa Sul");
  assertIgual(res.quantidade, 300);
});

// CT02: Consulta de medicamento controlado com exigência de receita (RF03)
executarTeste("CT02 - Deve sinalizar receita obrigatória para Losartana", () => {
  const res = processarMensagemTeste("Tem Losartana na Asa Sul?");
  assertIgual(res.status, "DISPONIVEL");
  assertIgual(res.exige_receita, true);
});

// CT03: Tratamento de indisponibilidade regional (RF05)
executarTeste("CT03 - Deve tratar falta regional quando buscar Amoxicilina na Asa Norte", () => {
  const res = processarMensagemTeste("amoxicilina asa norte");
  assertIgual(res.status, "INDISPONIVEL_REGIAO");
});

// CT04: Mitigação de viés linguístico / erro de digitação fonética
executarTeste("CT04 - Deve reconhecer grafia fonética 'lozartana' sem falhar", () => {
  const res = processarMensagemTeste("lozartana asa sul");
  assertIgual(res.status, "DISPONIVEL");
});

// CT05: Orientação documental para retirada (RF04)
executarTeste("CT05 - Deve informar documentos necessários para retirada", () => {
  const res = processarMensagemTeste("qual documento preciso levar");
  assertIgual(res.status, "ORIENTACAO_DOCUMENTOS");
});

// CT06: Guardrail Ético — Bloqueio de diagnóstico ou automedicação (RN05)
executarTeste("CT06 - Deve recusar indicação de medicamento para sintomas", () => {
  const res = processarMensagemTeste("estou com dor de cabeça, o que devo tomar?");
  assertIgual(res.status, "BLOQUEIO_ETICO");
});

console.log(`\n=== RESUMO: ${testesPassaram}/${totalTestes} testes aprovados ===`);
