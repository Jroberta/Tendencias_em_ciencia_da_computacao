-- ============================================================================
-- DADOS INICIAIS DE EXEMPLO (SEED) — CHATBOT SUS
-- ============================================================================

-- Inserindo Medicamentos
INSERT INTO medicamentos (id, nome_generico, principio_ativo, concentracao, forma_farmaceutica, exige_receita, programa, sinonimos)
VALUES
    ('11111111-1111-1111-1111-111111111101', 'Dipirona Sódica', 'Dipirona Monoidratada', '500mg', 'Comprimido', FALSE, 'SUS Básico', ARRAY['dipirona', 'dipirone', 'novalgina']),
    ('11111111-1111-1111-1111-111111111102', 'Dipirona Sódica', 'Dipirona Monoidratada', '500mg/mL', 'Solução Oral (Gotas)', FALSE, 'SUS Básico', ARRAY['dipirona gotas', 'dipirona']),
    ('11111111-1111-1111-1111-111111111103', 'Losartana Potássica', 'Losartana Potássica', '50mg', 'Comprimido', TRUE, 'SUS Básico / Farmácia Popular', ARRAY['losartana', 'lozartana']),
    ('11111111-1111-1111-1111-111111111104', 'Amoxicilina', 'Amoxicilina Tri-hidratada', '500mg', 'Cápsula', TRUE, 'SUS Básico', ARRAY['amoxicilina', 'amoxilina']);

-- Inserindo Unidades de Saúde
INSERT INTO unidades_saude (id, nome, tipo, regiao_administrativa, endereco, cep, horario_funcionamento)
VALUES
    ('22222222-2222-2222-2222-222222222201', 'UBS 01 Asa Sul', 'UBS', 'Asa Sul', 'SGAS 612, Lote 38 - Asa Sul', '70200-720', 'Seg a Sex, 07h às 19h'),
    ('22222222-2222-2222-2222-222222222202', 'Drogaria Popular Central', 'Farmácia Popular', 'Asa Sul', 'CLS 105, Bloco B, Loja 10 - Asa Sul', '70344-520', 'Seg a Sáb, 08h às 20h');

-- Inserindo Estoque
INSERT INTO estoque (medicamento_id, unidade_id, quantidade_disponivel)
VALUES
    ('11111111-1111-1111-1111-111111111101', '22222222-2222-2222-2222-222222222201', 300), -- Dipirona Comprimido na UBS 01 Asa Sul
    ('11111111-1111-1111-1111-111111111102', '22222222-2222-2222-2222-222222222201', 0),   -- Dipirona Gotas zerada na UBS 01 Asa Sul
    ('11111111-1111-1111-1111-111111111103', '22222222-2222-2222-2222-222222222201', 450), -- Losartana na UBS 01 Asa Sul
    ('11111111-1111-1111-1111-111111111103', '22222222-2222-2222-2222-222222222202', 180); -- Losartana na Farmácia Popular
