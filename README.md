## 🚀 Projeto simples de uma universidade feito em PostgreSQL

## Relações de Aluno/Turma:<br />
- Um aluno pode estar em uma ou mais turmas;<br />
- Uma turma pode conter um ou mais alunos;<br />

## Relações de Professor/Turma:<br />
- Um professor pode estar em várias turmas;<br />
- Uma turma pode ter apenas um professor;<br />

## Relações de Professor/Unidade:<br />
- Um professor pode estar em uma unidade;<br />
- Uma unidade pode ter um ou mais professores;<br />

## Relações de Professor/Dependente:<br />
- Um professor pode ter um ou mais dependentes;<br />
- Um dependente pode ser de apenas um professor;<br />

## Relações de Funcionário/Unidade:<br />
- Um funcionário pode estar em uma unidade;<br />
- Uma unidade pode ter um ou mais funcionários<br />

## Relações de Funcionário/Dependente;<br />
- Um funcionário pode ter um ou mais dependentes;<br />
- Um dependente pode ser de apenas um funcionário;<br />

------------------------------------------
## Views:

- 🚀 View <b>professores_dependentes</b>: Mostra os professores e seus respectivos dependentes;<br />
- 🚀 View <b>funcionario_unidade:</b> Mostra os funcionários, suas matrículas e a unidade em que atuam;<br />
- 🚀 View <b>professor_disciplina:</b> Mostra os professores, suas matrículas e as disciplinas que leciona;<br />
- 🚀 View <b>media_salario_unidade:</b> Mostra a média salarial dos funcionários por unidade acadêmica;<br />

-------------------------------------------------------

## Pontos relevantes:

- As matrículas não foram usadas como chave primária pois normalmente a chave primaria é usada mais para controle interno, então foi utilizado um id em cada tabela, e a matrícula foi usada como um campo único;

- Entre algumas alternativas possíveis na modelagem é utilizar uma tabela Contratados que serviria tanto para professores como funcionários, mas levando em conta um cenário futuro onde seja inserido algum campo que seja útil somente para professor, por exemplo, isso faria com que seja mais adequado uma tabela para cada um;

- Para buscar algumas informações relevantes foi utilizado views, selects, joins, concat e group by;






