CREATE TABLE comp_llc.computadores_llc (
    cnpj numeric NOT NULL,
    email varchar NOT NULL,
    telefone numeric NOT NULL,
    hora_func timestamp without time zone NOT NULL,
    inventario varchar NOT NULL,
    endereco varchar NOT NULL,
    qtd_de_funcionarios integer NOT NULL,
    PRIMARY KEY (cnpj)
);


CREATE TABLE comp_llc.ordem_de_servico (
    num_ordem integer NOT NULL,
    nome_cliente varchar NOT NULL,
    cpf_cliente numeric NOT NULL,
    data_abertura timestamp without time zone NOT NULL,
    prazo_execucao varchar NOT NULL,
    valor numeric NOT NULL,
    descricao varchar NOT NULL,
    funcionario varchar NOT NULL,
    PRIMARY KEY (num_ordem)
);


CREATE TABLE comp_llc.cliente (
    cpf numeric NOT NULL,
    nome varchar NOT NULL,
    telefone numeric NOT NULL,
    email varchar NOT NULL,
    endereco varchar NOT NULL,
    PRIMARY KEY (cpf)
);


CREATE TABLE comp_llc.fornecedor_pecas (
    cnpj numeric NOT NULL,
    nome varchar NOT NULL,
    email varchar NOT NULL,
    telefone numeric NOT NULL,
    endereco varchar NOT NULL,
    produtos varchar NOT NULL,
    PRIMARY KEY (cnpj)
);


CREATE TABLE comp_llc.funcionario (
    cpf numeric NOT NULL,
    nome varchar NOT NULL,
    telefone numeric NOT NULL,
    email varchar NOT NULL,
    salario numeric NOT NULL,
    horario_de_trabalho varchar NOT NULL,
    endereco varchar NOT NULL,
    filial integer NOT NULL,
    PRIMARY KEY (cpf)
);


CREATE TABLE comp_llc.tecnico (
    cpf numeric NOT NULL,
    ordem_a_atuar integer NOT NULL
);

CREATE INDEX ON comp_llc.tecnico
    (cpf);


CREATE TABLE comp_llc.atendente_vendedor (
    cpf numeric NOT NULL
);

CREATE INDEX ON comp_llc.atendente_vendedor
    (cpf);


CREATE TABLE comp_llc.gerente (
    cpf numeric NOT NULL,
    funcionarios_a_gerir varchar NOT NULL,
    cpf_funcionario numeric NOT NULL
);

CREATE INDEX ON comp_llc.gerente
    (cpf);
CREATE INDEX ON comp_llc.gerente
    (cpf_funcionario);


CREATE TABLE comp_llc.equipamento (
    num_ordem integer NOT NULL,
    num_serie numeric NOT NULL,
    modelo varchar NOT NULL,
    defeito varchar NOT NULL,
    proprietario varchar NOT NULL
);

CREATE INDEX ON comp_llc.equipamento
    (num_ordem);


CREATE TABLE comp_llc.pedido (
    cnpj_fornec numeric NOT NULL,
    componente varchar NOT NULL,
    quantidade integer NOT NULL
);


CREATE TABLE comp_llc.compra (
    cpf_cliente numeric NOT NULL,
    num_nota numeric NOT NULL,
    componentes_comprados varchar NOT NULL,
    data_compra timestamp without time zone NOT NULL,
    valor_compra numeric NOT NULL
);


CREATE TABLE comp_llc.end_cliente (
    cpf_cliente numeric NOT NULL,
    cep numeric NOT NULL,
    rua varchar NOT NULL,
    numero numeric NOT NULL,
    cidade varchar NOT NULL,
    estado varchar NOT NULL,
    bairro varchar NOT NULL
);

CREATE INDEX ON comp_llc.end_cliente
    (cpf_cliente);


CREATE TABLE comp_llc.end_funcionario (
    cpf_funcionario numeric NOT NULL,
    cep numeric NOT NULL,
    rua varchar NOT NULL,
    numero numeric NOT NULL,
    cidade varchar NOT NULL,
    bairro varchar NOT NULL
);

CREATE INDEX ON comp_llc.end_funcionario
    (cpf_funcionario);


CREATE TABLE comp_llc.end_fornecedor (
    cnpj numeric NOT NULL,
    cep numeric NOT NULL,
    rua varchar NOT NULL,
    numero numeric NOT NULL,
    cidade varchar NOT NULL,
    estado varchar NOT NULL,
    bairro varchar NOT NULL
);

CREATE INDEX ON comp_llc.end_fornecedor
    (cnpj);


CREATE TABLE comp_llc.inventario_loja (
    cnpj_loja numeric NOT NULL,
    componente varchar NOT NULL,
    fabricante varchar NOT NULL,
    quantidade integer NOT NULL
);

CREATE INDEX ON comp_llc.inventario_loja
    (cnpj_loja);


CREATE TABLE comp_llc.end_loja (
    cnpj_loja numeric NOT NULL,
    cep numeric NOT NULL,
    rua varchar NOT NULL,
    numero numeric NOT NULL,
    cidade varchar NOT NULL,
    bairro varchar NOT NULL,
    filial integer NOT NULL
);

CREATE INDEX ON comp_llc.end_loja
    (cnpj_loja);


CREATE TABLE comp_llc.ordem_a_atuar (
    cpf numeric NOT NULL,
    num_ordem numeric NOT NULL
);

CREATE INDEX ON comp_llc.ordem_a_atuar
    (cpf);


CREATE TABLE comp_llc.funcionarios_a_gerir (
    cpf_gerente numeric NOT NULL,
    cpf_funcionario numeric NOT NULL,
    nome_fucionario varchar NOT NULL
);

CREATE INDEX ON comp_llc.funcionarios_a_gerir
    (cpf_gerente);
CREATE INDEX ON comp_llc.funcionarios_a_gerir
    (cpf_funcionario);


ALTER TABLE comp_llc.tecnico ADD CONSTRAINT FK_tecnico__cpf FOREIGN KEY (cpf) REFERENCES comp_llc.funcionario(cpf);
ALTER TABLE comp_llc.atendente_vendedor ADD CONSTRAINT FK_atendente_vendedor__cpf FOREIGN KEY (cpf) REFERENCES comp_llc.funcionario(cpf);
ALTER TABLE comp_llc.gerente ADD CONSTRAINT FK_gerente__cpf FOREIGN KEY (cpf) REFERENCES comp_llc.funcionario(cpf);
ALTER TABLE comp_llc.gerente ADD CONSTRAINT FK_gerente__cpf_funcionario FOREIGN KEY (cpf_funcionario) REFERENCES comp_llc.funcionario(cpf);
ALTER TABLE comp_llc.equipamento ADD CONSTRAINT FK_equipamento__num_ordem FOREIGN KEY (num_ordem) REFERENCES comp_llc.ordem_de_servico(num_ordem);
ALTER TABLE comp_llc.pedido ADD CONSTRAINT FK_pedido__cnpj_fornec FOREIGN KEY (cnpj_fornec) REFERENCES comp_llc.fornecedor_pecas(nome);
ALTER TABLE comp_llc.end_cliente ADD CONSTRAINT FK_end_cliente__cpf_cliente FOREIGN KEY (cpf_cliente) REFERENCES comp_llc.cliente(cpf);
ALTER TABLE comp_llc.end_funcionario ADD CONSTRAINT FK_end_funcionario__cpf_funcionario FOREIGN KEY (cpf_funcionario) REFERENCES comp_llc.funcionario(cpf);
ALTER TABLE comp_llc.end_fornecedor ADD CONSTRAINT FK_end_fornecedor__cnpj FOREIGN KEY (cnpj) REFERENCES comp_llc.fornecedor_pecas(cnpj);
ALTER TABLE comp_llc.inventario_loja ADD CONSTRAINT FK_inventario_loja__cnpj_loja FOREIGN KEY (cnpj_loja) REFERENCES comp_llc.computadores_llc(cnpj);
ALTER TABLE comp_llc.end_loja ADD CONSTRAINT FK_end_loja__cnpj_loja FOREIGN KEY (cnpj_loja) REFERENCES comp_llc.computadores_llc(cnpj);
ALTER TABLE comp_llc.ordem_a_atuar ADD CONSTRAINT FK_ordem_a_atuar__cpf FOREIGN KEY (cpf) REFERENCES comp_llc.funcionario(cpf);
ALTER TABLE comp_llc.funcionarios_a_gerir ADD CONSTRAINT FK_funcionarios_a_gerir__cpf_gerente FOREIGN KEY (cpf_gerente) REFERENCES comp_llc.funcionario(cpf);
ALTER TABLE comp_llc.funcionarios_a_gerir ADD CONSTRAINT FK_funcionarios_a_gerir__cpf_funcionario FOREIGN KEY (cpf_funcionario) REFERENCES comp_llc.funcionario(cpf);
