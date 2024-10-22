### questão1
soma com valor 77

### questão2
a) 9
b) 128
c) 49
d) 100
e) 5
f) 20

### questão 3
node questao_3.js

### questao 4
```sql
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
```

### questão 5
Ver arquivo questao_5.txt