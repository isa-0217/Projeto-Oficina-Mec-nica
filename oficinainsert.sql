INSERT INTO Cliente (nome, sobrenome, CPF, telefone, email)
VALUES ('João', 'Silva', '12345678901', '94569-1236', 'joao@email.com'),
		('Fernando', 'Siqueira', '44895814711', '95895-2299', 'fernando@email.com'),
        ('Beatriz', 'Marques', '15975346820', '36985-2882', 'beatriz@email.com'),
		('Maria', 'Santos', '14785236903', '33562-1452', 'maria@email.com'),
		('Vitor', 'Mendes', '36471192581', '99963-3214', 'vitor@email.com'),
		('Pedro', 'Oliveira', '25896314700', '99874-5632', 'pedro@email.com'),
        ('Patricia', 'Menezes', '55894722316', '25636-3214', 'ptricia@email.com'),
		('Ana', 'Costa', '36925814711', '98745-3214', 'ana@email.com'),
        ('Guilherme', 'Malta', '31169258147', '25841-3258', 'guilherme@email.com'),
        ('Marcelo', 'Silveira', '58147136921', '81745-2134', 'marcelo@email.com'),
        ('Juliana', 'Cardoso', '36921417158', '94532-1874', 'juliana@email.com'),
		('Lucas', 'Ferreira', '74185296322', '91234-5678', 'lucas@email.com');
        
select * from Cliente;

INSERT INTO Veiculo (placa, modelo, marca, id_cliente)
VALUES ('ABC1234', 'Civic', 'Honda', 1),
('XYZ9876', 'Corolla', 'Toyota', 2),
('JKL4567', 'Onix', 'Chevrolet', 3),
('MNO8524', 'Gol', 'Volkswagen', 4),
('PQR7412', 'Fiesta', 'Ford', 5),
('STU9632', 'HB20', 'Hyundai', 6),
('VWX7415', 'Compass', 'Jeep', 7),
('YZA8529', 'Renegade', 'Jeep', 8),
('BCD9637', 'Sandero', 'Renault', 9),
('EFG7412', 'Cruze', 'Chevrolet', 10),
('HIJ2584', 'Celta', 'Chevrolet', 11),
('KLM3698', 'Palio', 'Fiat', 12);

select * from veiculo;

INSERT INTO Mecanico (nome, especialidade)
VALUES 
('Carlos','Motor'),
('Tito',  'Suspensão'),
('Marcos', 'Freios'),
('Sebastião', 'Elétrica'),
('Francisco', 'Transmissão'),
('Paulo', 'Injeção Eletrônica'),
('Marta', 'Ar Condicionado'),
('Ricardo', 'Direção'),
('Mateus', 'Pintura'),
('José', 'Lataria'),
('Luiz', 'Diagnóstico'),
('André', 'Troca de Óleo');

select * from mecanico;

INSERT INTO OrdemServico (data_emissao, status, id_veiculo, id_mecanico)
VALUES
('2026-05-01', 'Aberta', 1, 5),
('2026-05-02', 'Cancelada', 2, 6),
('2026-05-03', 'Aberta', 3, 4),
('2026-05-04', 'Concluída', 4, 9),
('2026-05-05', 'Cancelada', 5, 8),
('2026-05-06', 'Concluída', 6, 1),
('2026-05-07', 'Aberta', 7, 5),
('2026-05-08', 'Concluída', 8, 9),
('2026-05-09', 'Aberta', 9, 6),
('2026-05-10', 'Concluída', 10, 11),
('2026-05-11', 'Cancelada', 11, 7),
('2026-05-12', 'Concluída', 12, 10);

select*from ordemservico;

INSERT INTO Servico (descricao, valor)
VALUES
('Troca de óleo', 150.00),
('Alinhamento', 120.00),
('Balanceamento', 100.00),
('Revisão completa', 600.00),
('Troca de freios', 300.00),
('Troca de filtro de ar', 80.00),
('Troca de bateria', 400.00),
('Troca de pneus', 400.00),
('Troca de embreagem', 900.00),
('Troca de amortecedores', 500.00),
('Troca de correia dentada', 300.00),
('Troca de lâmpadas', 90.00);

select* from servico;

INSERT INTO OrdemServico_Servico (id_ordem, id_servico)
VALUES 
(1, 1),  
(1, 4),
(1, 5),  
(3, 8),
(2, 9),
(2, 7),
(4, 2),
(4, 6),
(4, 1),
(5, 3),
(5, 1),
(6, 7),
(6, 3),
(6, 6),
(7, 2),
(7, 8),
(8, 4),
(8, 5),
(8, 3),
(8, 11),
(9, 12),
(9, 1),
(9, 5),
(9, 2),
(10, 12),
(10, 2),
(10, 1),
(10, 3),
(11, 7),
(11, 8),
(11, 9),
(12, 6),
(11, 4); 

SELECT * FROM OrdemServico_Servico;

SELECT oss.id_ordem,
       s.descricao AS nome_servico,
       s.valor
FROM OrdemServico_Servico oss
JOIN Servico s ON oss.id_servico = s.id_servico
ORDER BY oss.id_ordem;


INSERT INTO Peca (nome, valor)
VALUES
('Filtro de óleo', 50.00),
('Pastilha de freio', 200.00),
('Bateria', 450.00),
('Pneu', 600.00),
('Correia dentada', 250.00),
('Amortecedor', 350.00),
('Velas de ignição', 120.00),
('Filtro de ar', 80.00),
('Radiador', 700.00),
('Embreagem', 900.00),
('Farol', 300.00),
('Retrovisor', 150.00);

select * from peca;

INSERT INTO OrdemServico_Peca (id_ordem, id_peca, quantidade)
VALUES
(1, 1, 2),   
(1, 2, 1),   
(2, 3, 1),  
(3, 5, 2), 
(9, 6, 1), 
(4, 3, 3), 
(6, 12, 1), 
(8, 10, 4), 
(7, 4, 1), 
(5, 7, 3), 
(11, 3, 1),  
(10, 9, 4),   
(12, 11, 1);  

select * from  OrdemServico_Peca;

SELECT osp.id_ordem,
       p.nome AS nome_peca,
       osp.quantidade,
       p.valor,
       (osp.quantidade * p.valor) AS total_peca
FROM OrdemServico_Peca osp
JOIN Peca p ON osp.id_peca = p.id_peca
ORDER BY osp.id_ordem;

SELECT id_peca, nome, valor
FROM Peca
WHERE nome = 'Pneu';

SELECT *
FROM OrdemServico_Peca
WHERE id_peca = 4;

UPDATE OrdemServico_Peca
SET quantidade = 4
WHERE id_ordem = 7 AND id_peca = 4;

SELECT os.id_ordem,
       c.nome AS cliente,
       v.modelo AS veiculo,
       m.nome AS mecanico,
       s.descricao AS servico,
       p.nome AS peca,
       osp.quantidade,
       p.valor,
       (osp.quantidade * p.valor) AS total_peca
FROM OrdemServico os
JOIN Veiculo v ON os.id_veiculo = v.id_veiculo
JOIN Cliente c ON v.id_cliente = c.id_cliente
JOIN Mecanico m ON os.id_mecanico = m.id_mecanico
LEFT JOIN OrdemServico_Servico oss ON os.id_ordem = oss.id_ordem
LEFT JOIN Servico s ON oss.id_servico = s.id_servico
LEFT JOIN OrdemServico_Peca osp ON os.id_ordem = osp.id_ordem
LEFT JOIN Peca p ON osp.id_peca = p.id_peca
ORDER BY os.id_ordem;

-- Status da ordem
SELECT id_ordem, status FROM OrdemServico;

-- ordens concluidas por  cada mecanico
SELECT m.nome, COUNT(*) AS total_ordens FROM OrdemServico os JOIN Mecanico m ON os.id_mecanico = m.id_mecanico WHERE os.status = 'Concluída' GROUP BY m.nome;

-- serviços feitos em cada ordem
SELECT os.id_ordem, s.descricao FROM OrdemServico_Servico oss JOIN Servico s ON oss.id_servico = s.id_servico JOIN OrdemServico os ON oss.id_ordem = os.id_ordem;

-- peças usadas em cada ordem e em que quantidade
SELECT os.id_ordem, p.nome, osp.quantidade FROM OrdemServico_Peca osp JOIN Peca p ON osp.id_peca = p.id_peca JOIN OrdemServico os ON osp.id_ordem = os.id_ordem;




