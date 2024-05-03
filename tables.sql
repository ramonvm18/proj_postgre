--UnidadeAcademica
create table tb_unidade_academica (
    id_unidade_Academica serial primary key,
    nm_unidade varchar(100)
);

--Professor
create table tb_professor (
	id_professor serial primary key,
    cd_matricula INT unique,
    nm_professor varchar(100),
    cd_email varchar(50),
    vl_salario decimal(10, 2),
    ds_formacao varchar(100),
    id_unidade int,
    dt_inicio date,
    foreign key (id_unidade) references tb_unidade_academica(id_unidade_academica)
);

--Funcionario
create table tb_funcionario (
	id_funcionario serial primary key,
    cd_matricula int unique,
    nm_funcionario varchar(100),
    cd_email varchar(50),
    vl_salario decimal(10, 2),
    ds_funcao varchar(50),
    cd_unidade int,
    dt_inicio date,
    foreign key (cd_unidade) references tb_unidade_academica(id_unidade_academica)
);


--Aluno
create table tb_aluno (
	id_aluno serial primary key,
    cd_matricula int unique,
    nm_aluno varchar(100),
    cd_email varchar(50),
    vl_mensalidade decimal(10, 2)
);

--Turma
create table tb_turma (
    id_turma serial primary key,
    cd_cred varchar(10),
    nm_disciplina varchar(50),
    hr_aula time,
    id_professor INT,
    foreign key (id_professor) references tb_professor(cd_matricula)
);

--Aluno/turma
create table tb_aluno_turma (
    id_aluno_turma serial primary key,
    id_matricula_aluno int,
    id_turma int,
    foreign key (id_matricula_aluno) references tb_aluno(cd_matricula),
    foreign key (id_turma) references tb_turma(id_turma)
);


--Dependente
create table tb_dependente (
	id_dependente serial primary key,
    id_matricula_professor int,
    id_matricula_funcionario int,
    nm_dependente varchar(100),
    foreign key (id_matricula_professor) references tb_professor(cd_matricula),
    foreign key (id_matricula_funcionario) references tb_funcionario(cd_matricula) 
);