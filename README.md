# Escola de Música Harmonia - Banco de Dados 🎼
Este repositório contém um projeto de banco de dados desenvolvido com o intuito de administrar e armazenar informações de alunos, professores e cursos oferecidos por uma escola musical.

## ➡️1- Cenário:
A Escola de Música Harmonia deseja um sistema de banco de dados para gerenciar suas operações diárias. O sistema deve permitir o cadastro e gerenciamento de informações sobre os alunos, professores, cursos, aulas e instrumentos musicais. Na elaboração no banco de dados, foi solicitado alguns critérios a serem seguidos.

No cadastro de alunos, deve conter:
* ID_Aluno (atributo chave)
* Nome (atributo simples)
* Endereço (atributo composto: Rua, Número, Cidade, Estado, CEP)
* Data_Nascimento
* Telefone (atributo multivalorado)
* Email
  
No cadastro de professores, deve conter:
* ID_Professor (atributo chave)
* Nome (atributo simples)
* Endereço (atributo composto: Rua, Número, Cidade, Estado, CEP)
* Telefone (atributo multivalorado)
* Email
* Salário (atributo derivado)
* Curso (relação com ID_Curso)
  
No armazenamento de informações sobre os cursos, deve conter:
* ID_Curso (atributo chave)
* Nome (atributo simples)
* Descrição
* Duração (em meses)
* Preço
  
No armazenamento de dados de aulas, deve conter:
* ID_Aula (atributo chave)
* Data
* Horário
* Local
* ID_Curso (atributo chave estrangeira)
* ID_Professor (atributo chave estrangeira)
  
Por fim, no registro de informações sobre os instrumentos musicais, deve conter:
* ID_Instrumento (atributo chave)
* Nome (atributo simples)
* Tipo
* Marca
* Preço (atributo derivado)

## ➡️2- Modelagem Conceitual:
Confira a modelagem conceitual desenvolvida:

![modelo](https://github.com/lautoledo/Escola-de-Musica-BD/blob/main/imagens/modelo-conceitual.png)

## ➡️3- Modelagem Lógica:
Confira a modelagem lógica desenvolvida:
![](https://github.com/lautoledo/Escola-de-Musica-BD/blob/main/imagens/modelo-l%C3%B3gico.png)

## ➡️4- Modelagem Física:
Confira a modelagem física desenvolvida em formato SQL:
[prova.sql](https://github.com/lautoledo/Escola-de-Musica-BD/blob/main/prova.sql)

## ➡️5- Inserção de dados:
Confira como ocorreu a inserção de dados nas tabelas:
### 🔸 Tabela "Aluno":
```sql
INSERT INTO Aluno (ID_Aluno, Nome, Rua, Numero, Cidade, Estado, CEP, Data_Nascimento, Telefone, Email)
VALUES
(1, 'João Silva', 'Rua A', '123', 'São Paulo', 'SP', '01001-000', '2000-01-01', '11999999999', 'joao@example.com'),
```

### 🔸 Tabela "Professor":
```sql
INSERT INTO Professor (ID_Professor, Nome, Rua, Numero, Cidade, Estado, CEP, Telefone, Email, Salário)
VALUES
(1, 'Carlos Pereira', 'Rua C', '789', 'Belo Horizonte', 'MG', '30001-000', '31999999999', 'carlos@example.com', 3500.00),
```

### 🔸 Tabela "Curso":
```sql
INSERT INTO Curso (ID_Curso, Nome, Descrição, Duração, Preço)
VALUES
(1, 'Violão Iniciante', 'Curso básico de violão', 6, 150.00),
```

### 🔸 Tabela "Aula":
```sql
INSERT INTO Aula (ID_Aula, Data, Horário, Local, ID_Curso, ID_Professor)
VALUES
(1, '2024-06-01', '10:00:00', 'Sala 101', 1, 1),
```

### 🔸 Tabela "Instrumento":
```sql
INSERT INTO Instrumento (ID_Instrumento, Nome, Tipo, Marca, Preço)
VALUES
(1, 'Violão', 'Cordas', 'Yamaha', 500.00),
```

### 🔸 Tabela "Aluno_Instrumento":
```sql
INSERT INTO Aluno_Instrumento (ID_Aluno, ID_Instrumento)
VALUES
(1, 1),
```

### 🔸 Tabela "Aluno_Curso":
```sql
INSERT INTO Aluno_Curso (ID_Aluno, ID_Curso)
VALUES
(1, 1),
```

## ➡️6- CRUD:
Confira o desenvolvimento CRUD:
* C - create
* R - read
* U - update
* D - delete

### 🔳CREATE:
```sql
INSERT INTO Aluno (ID_Aluno, Nome, Rua, Numero, Cidade, Estado, CEP, Data_Nascimento, Telefone, Email)
VALUES (21, 'Laura Beatriz', 'Rua E', '206', 'Porto Alegre', 'RS', '90001-000', '1995-05-15', '52999999999', 'laura@example.com');
```
Resultado:
![insert](https://github.com/lautoledo/Escola-de-Musica-BD/blob/main/imagens/insert.png)

### 🔳READ:
```sql
SELECT * FROM Aluno;
```
Resultado:
![select](https://github.com/lautoledo/Escola-de-Musica-BD/blob/main/imagens/select.png)

### 🔳UPDATE:
```sql
UPDATE Aluno SET Email = 'joao_novo@example.com' WHERE ID_Aluno = 1;
```
Resultado:
![update](https://github.com/lautoledo/Escola-de-Musica-BD/blob/main/imagens/update.png)

### 🔳DELETE:
```sql
DELETE FROM Aluno WHERE ID_Aluno = 3;
```
Resultado:
![delete](https://github.com/lautoledo/Escola-de-Musica-BD/blob/main/imagens/delete.png)

## ➡️7- Relatórios:
Nesta etapa, foram realizadas 10 consultas utilizando Seleção, Filtro e Ordenação, confira o desenvolvimento:

### 🟢 Alunos e seus Cursos:
Esta consulta tem como objetivo selecionar e exibir nomes de alunos e os cursos nos quais estão matriculados.
```sql
SELECT a.Nome AS Aluno, c.Nome AS Curso
FROM Aluno a
JOIN Aluno_Curso ac ON a.ID_Aluno = ac.ID_Aluno
JOIN Curso c ON ac.ID_Curso = c.ID_Curso;
```
* Confira o resultado:

![consulta1](https://github.com/lautoledo/Escola-de-Musica-BD/blob/main/imagens/consulta1.png)


### 🟢 Professores e suas Aulas::
Esta consulta tem como objetivo selecionar e exibir nomes de professores e suas aulas, contendo informações como, ID_Aula, Data, Horário e Local.
```sql
SELECT p.Nome AS Professor, a.ID_Aula, a.Data, a.Horário, a.Local
FROM Professor p
JOIN Aula a ON p.ID_Professor = a.ID_Professor;
```
* Confira o resultado:

![consulta2](https://github.com/lautoledo/Escola-de-Musica-BD/blob/main/imagens/consulta2.png)

### 🟢 Instrumentos usados por Alunos:
Esta consulta tem como objetivo selecionar e exibir nomes de alunos e quais são os instrumentos utilizados por eles.
```sql
SELECT al.Nome AS Aluno, i.Nome AS Instrumento
FROM Aluno al
JOIN Aluno_Instrumento ai ON al.ID_Aluno = ai.ID_Aluno
JOIN Instrumento i ON ai.ID_Instrumento = i.ID_Instrumento;
```
* Confira o resultado:

![consulta3](https://github.com/lautoledo/Escola-de-Musica-BD/blob/main/imagens/consulta3.png)

### 🟢 Cursos e Professores responsáveis:
Esta consulta tem como objetivo selecionar e exibir cursos e nomes dos professores que são responsáveis e ministram respectivamente cada.
```sql
SELECT c.Nome AS Curso, p.Nome AS Professor
FROM Curso c
JOIN Professor p ON c.ID_Curso = p.ID_Professor;
```
* Confira o resultado:

![consulta4](https://github.com/lautoledo/Escola-de-Musica-BD/blob/main/imagens/consulta4.png)

### 🟢 Aulas de um determinado Curso:
Esta consulta tem como objetivo selecionar e exibir aulas de um determinado curso, no qual é possível obter informações do ID_Aula, Data, Horário e Local.
```sql
SELECT a.ID_Aula, a.Data, a.Horário, a.Local
FROM Aula a
JOIN Curso c ON a.ID_Curso = c.ID_Curso
WHERE c.ID_Curso = 1;
```
* Confira o resultado:

![consulta5](https://github.com/lautoledo/Escola-de-Musica-BD/blob/main/imagens/consulta5.png)

### 🟢 Quantidade de Alunos por Curso:
Esta consulta tem como objetivo exibir a quantidade de alunos matriculados em cada curso.
```sql
SELECT c.Nome AS Curso, COUNT(ac.ID_Aluno) AS Quantidade_Alunos
FROM Curso c
JOIN Aluno_Curso ac ON c.ID_Curso = ac.ID_Curso
GROUP BY c.ID_Curso, c.Nome;
```
* Confira o resultado:

![consulta6](https://github.com/lautoledo/Escola-de-Musica-BD/blob/main/imagens/consulta6.png)

### 🟢 Professores e seus Salários:
Esta consulta tem como objetivo selecionar e exibir nomes de professores e os seus respectivos salários.
```sql
SELECT Nome, Salário FROM Professor;
```
* Confira o resultado:

![consulta7](https://github.com/lautoledo/Escola-de-Musica-BD/blob/main/imagens/consulta7.png)


### 🟢 Alunos e seus Telefones:
Esta consulta tem como objetivo selecionar e exibir nomes de alunos e o número de telefone de cada um.
```sql
SELECT Nome, Telefone FROM Aluno;
```
* Confira o resultado:

![consulta8](https://github.com/lautoledo/Escola-de-Musica-BD/blob/main/imagens/consulta8.png)


### 🟢 Cursos disponíveis:
Esta consulta tem como objetivo exibir os cursos disponíveis e informações como, Descrição, Duração e Preço.
```sql
SELECT Nome, Descrição, Duração, Preço FROM Curso;
```
* Confira o resultado:

![consulta9](https://github.com/lautoledo/Escola-de-Musica-BD/blob/main/imagens/consulta9.png)


### 🟢 Aulas por Professor em uma data específica:
Esta consulta tem como objetivo selecionar e exibir todas as aulas ministradas por um professor em uma data específica, contendo, ID_Aula, Data, Horário e Local.
SELECT a.ID_Aula, a.Data, a.Horário, a.Local
FROM Aula a
JOIN Professor p ON a.ID_Professor = p.ID_Professor
WHERE p.ID_Professor = 3 AND a.Data = '2024-06-03';
```
* Confira o resultado:

![consulta10](https://github.com/lautoledo/Escola-de-Musica-BD/blob/main/imagens/consulta10.png)





