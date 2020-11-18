insert into comp_llc.computadores_llc values (7777777, 'loja@computadoresllc.com', '55559090', '8am - 5pm', 'inventario_loja', 'end_loja', 8);
insert into comp_llc.end_loja values (7777777, 5273, 'Rua Carvalho', 150, 'São Paulo', 'Jardins' 1);
insert into comp_llc.funcionario values (11111, 'Paul Allen', 95959595, 'paulallen@computadoresllc.com', 3000, '8am - 5pm', 'end_funcionario', 1);
insert into comp_llc.end_funcionario values (11111, 23546, 'Rua das Arvores', 189, 'São Paulo', 'Jardins');

insert into comp_llc.funcionario values (22222, 'Patrick Bateman', 97989415, 'patbateman@computadoresllc.com', 3000, '8am - 5pm', 'end_funcionario', 1);
insert into comp_llc.funcionario values (33333, 'Jerri Ellsworth', 98729461, 'amy@computadoresllc.com', 3000, '8am - 5pm', 'end_funcionario', 1);
insert into comp_llc.funcionario values (44444, 'Amy Dunne', 95959595, 'paulallen@computadoresllc.com', 3000, '8am - 5pm', 'end_funcionario', 1);
insert into comp_llc.funcionario values (55555, 'Ray Donovan', 95959595, 'paulallen@computadoresllc.com', 3000, '8am - 5pm', 'end_funcionario', 1);

update comp_llc.funcionario set email = 'jerriellsworth@computadoresllc.com' where cpf = 33333;
update comp_llc.funcionario set email = 'amydunne@computadoresllc.com' where cpf = 44444;
update comp_llc.funcionario set telefone = 92468201 where cpf = 44444;
update comp_llc.funcionario set email = 'raydonovan@computadoresllc.com' where cpf = 55555;
update comp_llc.funcionario set telefone = 95625333 where cpf = 55555;

update comp_llc.funcionario set salario = 4000 where cpf = 33333;
update comp_llc.funcionario set salario = 4000 where cpf = 11111;
update comp_llc.funcionario set salario = 5000 where cpf = 55555;

insert into comp_llc.tecnico(cpf, ordem_a_atuar) values (33333, 0);
insert into comp_llc.tecnico(cpf, ordem_a_atuar) values (11111, 0);

insert into comp_llc.atendente_vendedor values (22222);
insert into comp_llc.atendente_vendedor values (44444);

insert into comp_llc.gerente values (55555, 'Patrick Bateman');
insert into comp_llc.gerente values (55555, 'Jerri Ellsworth');
insert into comp_llc.gerente values (55555, 'Paul Allen');
insert into comp_llc.gerente values (55555, 'Amy Dunne');

insert into comp_llc.fornecedor_pecas values (123123, 'NVIDIA', 'nvidia@nvidia.com', 33344545, 'end_fornecedor');
insert into comp_llc.fornecedor_pecas values (245678, 'Intel', 'intel@intel.com', 45348585, 'end_fornecedor');
insert into comp_llc.fornecedor_pecas values (245789, 'Dell Computers', 'dell@dell.com', 56784545, 'end_fornecedor');
insert into comp_llc.fornecedor_pecas values (435678, 'Cisco', 'cisco@cisco.com', 56567438, 'end_fornecedor');

insert into comp_llc.end_fornecedor values (123123, 32456, 'Avenida Atlantica', 980, 'Rio de Janeiro', 'RJ', 'Lapa');
insert into comp_llc.end_fornecedor values (245678, 44567, 'Avenida das Nações Unidas', 1987, 'São Paulo', 'SP', 'Jardin America');
insert into comp_llc.end_fornecedor values (245789, 55678, 'Avenida Bandeirantes', 1900, 'São Paulo', 'SP', 'Campo Belo');
insert into comp_llc.end_fornecedor values (435678, 22345, 'Avenida Curitiba ', 2070, 'Curitiba', 'PR', 'Bairro Alto');

insert into comp_llc.cliente values (1414145, 'Alexandra Dadario', 43324563, 'alexdad@protonmail.com', 'end');
insert into comp_llc.end_cliente values (1414145, 45665, 'Rua Lalala', 333, 'São Paulo', 'SP', 'Moema');
insert into comp_llc.cliente values (7766213, 'Jane Jones', 98979699, 'janejones@protonmail.com', 'end_cliente');
insert into comp_llc.end_cliente values (7766213, 22348, 'Rua Tralala', 263, 'São Paulo', 'SP', 'Moema');
insert into comp_llc.cliente values (0322678, 'Anthony Hopkins', 99886512, 'tonyhopkins@gmail.com', 'end_cliente');
insert into comp_llc.end_cliente values (0322678, 63456, 'Rua Laurel Canyon', 263, 'São Paulo', 'SP', 'Jardin Europa');
insert into comp_llc.cliente values (0454590, 'Billy Joel', 96675345, 'billyjoel@gmail.com', 'end_cliente');
insert into comp_llc.end_cliente values (0454590, 44591, 'Rua Saliere', 98, 'Piracicaba', 'SP', 'Piraci');
insert into comp_llc.cliente values (7657858, 'Murphy Mcmanus', 98886611, 'mmacmanus@gmail.com', 'end_cliente');
insert into comp_llc.end_cliente values (7657858, 23650, 'Rua Tres Faixas', 100, 'Porto Alegre', 'RS', 'Bairro Novo');
insert into comp_llc.cliente values (8876119, 'James Woods', 98886611, 'jwoods@hotmail.com', 'end_cliente');
insert into comp_llc.end_cliente values (8876119, 91167, 'Avenida Boa Viagem', 200, 'Recife', 'PE', 'Bairro Velho');
insert into comp_llc.cliente values (1432299, 'Amanda Johnson', 88983434, 'amyjohnson@hotmail.com', 'end_cliente');
insert into comp_llc.end_cliente values (1432299, 87690, 'Rua Flamengo', 800, 'Rio de Janeiro', 'RJ', 'Barra Funda');
insert into comp_llc.cliente values (00100100, 'Jason Bourne', 97771719, 'jasonbourne@protonmail.com', 'end_cliente');
insert into comp_llc.end_cliente values (00100100, 11234, 'Avenida Paulista', 789, 'São Paulo', 'SP', 'Aclimação');
insert into comp_llc.cliente values (0111000, 'Desh Bouksani', 99781090, 'deshbouksani@protonmail.com', 'end_cliente');
insert into comp_llc.end_cliente values (0111000, 11234, 'Avenida Paulista', 788, 'São Paulo', 'SP', 'Aclimação');



update comp_llc.gerente set cpf_funcionario = 22222 where funcionarios_a_gerir = 'Patrick Bateman';
update comp_llc.gerente set cpf_funcionario = 33333 where funcionarios_a_gerir = 'Jerri Ellsworth';
update comp_llc.gerente set cpf_funcionario = 44444 where funcionarios_a_gerir = 'Amy Dunne';
update comp_llc.gerente set cpf_funcionario = 11111 where funcionarios_a_gerir = 'Paul Allen';


update comp_llc.funcionario set cargo = 'Gerente' where cpf = 55555;
update comp_llc.funcionario set cargo = 'Atendente' where cpf = 22222;
update comp_llc.funcionario set cargo = 'Técnico(a)' where cpf = 33333;
update comp_llc.funcionario set cargo = 'Atendente' where cpf = 44444;
update comp_llc.funcionario set cargo = 'Técnico(a)' where cpf = 11111;

