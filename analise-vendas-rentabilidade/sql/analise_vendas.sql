SELECT
    Categoria,
    SUM(Quantidade * Preco) AS receita_total,
    SUM(Quantidade * Custo) AS custo_total,
    SUM(Quantidade * Preco) - SUM(Quantidade * Custo) AS lucro_total
FROM vendas
GROUP BY Categoria
ORDER BY lucro_total DESC


