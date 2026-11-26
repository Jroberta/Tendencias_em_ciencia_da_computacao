-- ============================================================================
-- SCHEMA DO BANCO DE DADOS — CHATBOT SUS & FARMÁCIA POPULAR (SUPABASE / POSTGRESQL)
-- ============================================================================

-- 1. Tabela de Catálogo de Medicamentos
CREATE TABLE IF NOT EXISTS medicamentos (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    nome_generico VARCHAR(150) NOT NULL,
    principio_ativo VARCHAR(150) NOT NULL,
    concentracao VARCHAR(50) NOT NULL,
    forma_farmaceutica VARCHAR(80) NOT NULL, -- Ex: Comprimido, Solução Oral (Gotas), Cápsula
    exige_receita BOOLEAN NOT NULL DEFAULT TRUE,
    programa VARCHAR(50) NOT NULL DEFAULT 'SUS Básico', -- 'SUS Básico' ou 'Farmácia Popular'
    sinonimos TEXT[], -- Array para busca fonética/popular (ex: {'dipirone', 'novalgina'})
    criado_em TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- 2. Tabela de Unidades de Saúde (UBS e Farmácias Populares)
CREATE TABLE IF NOT EXISTS unidades_saude (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    nome VARCHAR(150) NOT NULL,
    tipo VARCHAR(50) NOT NULL, -- 'UBS' ou 'Farmácia Popular'
    regiao_administrativa VARCHAR(100) NOT NULL, -- Ex: 'Asa Sul', 'Asa Norte', 'Taguatinga'
    endereco TEXT NOT NULL,
    cep VARCHAR(10) NOT NULL,
    horario_funcionamento VARCHAR(100) NOT NULL,
    criado_em TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- 3. Tabela Associativa de Estoque por Unidade
CREATE TABLE IF NOT EXISTS estoque (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    medicamento_id UUID NOT NULL REFERENCES medicamentos(id) ON DELETE CASCADE,
    unidade_id UUID NOT NULL REFERENCES unidades_saude(id) ON DELETE CASCADE,
    quantidade_disponivel INTEGER NOT NULL DEFAULT 0 CHECK (quantidade_disponivel >= 0),
    atualizado_em TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    UNIQUE (medicamento_id, unidade_id)
);

-- Índices para acelerar buscas textuais e regionais realizadas pelo Agente
CREATE INDEX IF NOT EXISTS idx_medicamentos_nome ON medicamentos (nome_generico);
CREATE INDEX IF NOT EXISTS idx_unidades_regiao ON unidades_saude (regiao_administrativa);
CREATE INDEX IF NOT EXISTS idx_unidades_cep ON unidades_saude (cep);

-- ============================================================================
-- SEGURANÇA: ROW LEVEL SECURITY (RLS)
-- Garante que a chave pública (anon key) tenha acesso SOMENTE DE LEITURA
-- ============================================================================

ALTER TABLE medicamentos ENABLE ROW LEVEL SECURITY;
ALTER TABLE unidades_saude ENABLE ROW LEVEL SECURITY;
ALTER TABLE estoque ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Leitura publica de medicamentos"
    ON medicamentos FOR SELECT TO anon USING (true);

CREATE POLICY "Leitura publica de unidades"
    ON unidades_saude FOR SELECT TO anon USING (true);

CREATE POLICY "Leitura publica de estoque"
    ON estoque FOR SELECT TO anon USING (true);
