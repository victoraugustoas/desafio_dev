-- Inserir dados na tabela unidade_federativa
INSERT INTO "unidade_federativa" ("id", "name", "sigla") VALUES
(1, 'São Paulo', 'SP'),
(2, 'Rio de Janeiro', 'RJ'),
(3, 'Minas Gerais', 'MG');

-- Inserir dados na tabela telefone_tipo
INSERT INTO "telefone_tipo" ("id", "tipo") VALUES
(1, 'Celular'),
(2, 'Fixo'),
(3, 'Comercial');

-- Inserir dados na tabela cliente
INSERT INTO "cliente" ("id", "name", "estado_residencia") VALUES
(1, 'Victor Augusto', 1),
(2, 'Maria Silva', 2),
(3, 'João Santos', 3);

-- Inserir dados na tabela telefone
INSERT INTO "telefone" ("id", "telefone", "tipo") VALUES
(1, '11912345678', 1),
(2, '21987654321', 1),
(3, '3133445566', 2),
(4, '1140028922', 3);

-- Inserir dados na tabela cliente_telefone (relacionando clientes com telefones)
INSERT INTO "cliente_telefone" ("cliente_id", "telefone_id") VALUES
(1, 1), -- Victor Augusto tem o celular (11) 91234-5678
(2, 2), -- Maria Silva tem o celular (21) 98765-4321
(3, 3), -- João Santos tem o telefone fixo (31) 3344-5566
(1, 4); -- Victor Augusto também tem o telefone comercial (11) 4002-8922

-- SQL de Resposta
SELECT
  c."name",
  uf.sigla,
  t.telefone
FROM
  cliente c
  LEFT JOIN unidade_federativa uf ON c.estado_residencia = uf.id
  LEFT JOIN cliente_telefone ct ON ct.cliente_id = c.id
  LEFT JOIN telefone t ON t.id = ct.telefone_id
WHERE
  uf.sigla = 'SP';