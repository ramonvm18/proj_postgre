create view professores_dependentes as
select 
    p.nm_professor as "Nome do professor",
    d.nm_dependente as "Dependente"
from tb_dependente d
inner join tb_professor p on d.id_matricula_professor = p.cd_matricula;


create view funcionario_unidade as
select
	f.cd_matricula as "Matricula",
    f.nm_funcionario as "Nome do funcionário",
    u.nm_unidade as "Unidade"
from tb_funcionario f
inner join tb_unidade_academica u on f.cd_unidade = u.id_unidade_academica;


create view professor_disciplina as
select 
	p.cd_matricula as "Matricula",
    p.nm_professor as "Nome do Professor",
    t.nm_disciplina as "Disciplina"
from tb_turma t
inner join tb_professor p on t.id_professor = p.cd_matricula;


create view media_salario_unidade as
SELECT 
    u.nm_unidade AS "Unidade",
    AVG(f.vl_salario) AS "Média salarial"
FROM tb_funcionario f
INNER JOIN tb_unidade_academica u ON f.cd_unidade = u.id_unidade_academica
GROUP BY u.nm_unidade;



select concat(nm_aluno, ' - ', cd_email) AS "Nome e Matricula"
from tb_aluno;


select * from professores_dependentes;
select * from funcionario_unidade;
select * from professor_disciplina;
select * from media_salario_unidade;
