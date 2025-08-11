CREATE TABLE gene_expression(
gene_id VARCHAR(20),
gene_name VARCHAR(50),
condition VARCHAR(20),
expression_value NUMERIC,
sample_id VARCHAR(10)
);

INSERT INTO gene_expression(gene_id, gene_name, condition, expression_value, sample_id)
VALUES
('ENSG000001', 'BRCA1', 'Healthy', 12.4, 'S1'),
('ENSG000001', 'BRCA1', 'Diseased', 25.6, 'S2'),
('ENSG000002', 'TP53', 'Healthy', 8.9, 'S1'),
('ENSG000002', 'TP53', 'Diseased', 15.3, 'S2'),
('ENSG000001', 'BRCA1', 'Healthy', 12.4, 'S1'),
('ENSG000001', 'BRCA1', 'Diseased', 25.6, 'S2'),
('ENSG000002', 'TP53', 'Healthy', 8.9, 'S1'),
('ENSG000002', 'TP53', 'Diseased', 15.3, 'S2'),
('ENSG000001','BRCA1',12.0),
('ENSG000002','TP53',9.0),
('ENSG000003',' EGFR',6.0),
('ENSG000004','MYC',20.0),
('ENSG000006', 'PTEN',8.0),
('ENSG000007','CDKN2A',4.0),
('ENSG000008','BRAF',7.0),
('ENSG000009','ALB',50.0),
('ENSG000010', 'GAPDH',30.0),
);
SELECT * FROM gene_expression;

SELECT gene_name, condition, AVG(expression_value) AS avg_expression
FROM gene_expression
GROUP BY gene_name, condition;
