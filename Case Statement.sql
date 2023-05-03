CREATE TABLE [Produto_detalhes]
(
   [produto_id] int,
   [produto_nome] varchar(20),
   [produto_status] varchar(1),
   [quantidade] int
)

SELECT [produto_id].[produto_nome],
status = CASE[produto_status],
WHEN 'W' THEN 'Warehouse'
WHEN 'S' THEN 'Store'
WHEN 'T' THEN 'Transit'
END
FROM [Produto_detalhes]