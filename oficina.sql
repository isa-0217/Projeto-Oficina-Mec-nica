CREATE DATABASE oficina;
USE oficina;


CREATE TABLE Cliente (
    id_cliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    sobrenome VARCHAR(50),
    CPF CHAR(11),
    telefone VARCHAR(20),
    email VARCHAR(100)
);
ALTER TABLE Cliente ADD CONSTRAINT unique_cpf UNIQUE (CPF);


CREATE TABLE Veiculo (
    id_veiculo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    placa CHAR(7),
    modelo VARCHAR(50),
    marca VARCHAR(50),
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);
ALTER TABLE Veiculo ADD CONSTRAINT unique_placa UNIQUE (placa);

CREATE TABLE Mecanico (
    id_mecanico INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    sobrenome VARCHAR(50),
    especialidade VARCHAR(50)
);
ALTER TABLE Mecanico DROP COLUMN sobrenome;


CREATE TABLE OrdemServico (
    id_ordem INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    data_emissao DATE,
    status ENUM('Aberta', 'Concluída', 'Cancelada'),
    id_veiculo INT,
    id_mecanico INT,
    FOREIGN KEY (id_veiculo) REFERENCES Veiculo(id_veiculo),
    FOREIGN KEY (id_mecanico) REFERENCES Mecanico(id_mecanico)
);



CREATE TABLE Servico (
    id_servico INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(100) NOT NULL,
    valor DECIMAL(10,2) NOT NULL
);


CREATE TABLE OrdemServico_Servico (
    id_ordem INT NOT NULL,
    id_servico INT NOT NULL,
    PRIMARY KEY (id_ordem, id_servico),
    FOREIGN KEY (id_ordem) REFERENCES OrdemServico(id_ordem),
    FOREIGN KEY (id_servico) REFERENCES Servico(id_servico)
);


CREATE TABLE Peca (
    id_peca INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    valor DECIMAL(10,2) NOT NULL
);


CREATE TABLE OrdemServico_Peca (
    id_ordem INT NOT NULL,
    id_peca INT NOT NULL,
    quantidade INT NOT NULL,
    PRIMARY KEY (id_ordem, id_peca),
    FOREIGN KEY (id_ordem) REFERENCES OrdemServico(id_ordem),
    FOREIGN KEY (id_peca) REFERENCES Peca(id_peca)
);

