insert into tb_unidade_academica (nm_unidade) values 
('Faculdade de São Paulo'),
('UNISANTA'),
('UNICAMP');


insert into tb_professor (cd_matricula, nm_professor, cd_email, vl_salario, ds_formacao, id_unidade, dt_inicio) values
(1, 'Pedro Barbosa', 'pedro@email.com', 5000.00, 'Mestrado em TI', 1, '2018-09-21'),
(2, 'Maurício Asenjo', 'mauricio@email.com', 5500.00, 'Mestrado em Engenharia', 2, '2015-05-15'),
(3, 'Anésio Freiro', 'anesio@email.com', 4500.00, 'Doutorado em IA', 3, '2018-05-10');


insert into tb_funcionario (cd_matricula, nm_funcionario, cd_email, vl_salario, ds_funcao, cd_unidade, dt_inicio) values
(4, 'Ana Melo', 'ana@email.com', 4000.00, 'Secretária', 1, '2020-03-20'),
(5, 'Luiz Augusto', 'luiz@email.com', 4200.00, 'Técnico', 2, '2021-11-05'),
(6, 'Carla Gomes', 'carla@email.com', 3800.00, 'Auxiliar', 3, '2020-07-12');


insert into tb_aluno (cd_matricula, nm_aluno, cd_email, vl_mensalidade) values
(7, 'Rafaela Santos', 'rafaela@email.com', 1200.00),
(8, 'Lucas Moura', 'lucas@email.com', 1300.00),
(9, 'Julia ', 'julia@email.com', 1150.00);


insert into tb_turma (cd_cred, nm_disciplina, hr_aula, id_professor) values
('CALC2024', 'Cálculo 1', '08:00', 2),
('LG2024', 'Linguagem de Programação 1', '10:00', 2),
('BD2024', 'Banco de Dados 1', '12:00', 3);


insert into tb_aluno_turma (id_matricula_aluno, id_turma) values
(7, 1),
(8, 2),
(9, 3);


insert into tb_dependente (id_matricula_professor, nm_dependente) values
(1, 'Filipe Silva'),
(2, 'Sofia Oliveira');

-
insert into tb_dependente (id_matricula_funcionario, nm_dependente) values
(4, 'Mariana Souza');


