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

### 🔳READ:
```sql
SELECT * FROM Aluno;
```

### 🔳UPDATE:
```sql
UPDATE Aluno SET Email = 'joao_novo@example.com' WHERE ID_Aluno = 1;
```

### 🔳DELETE:
```sql
DELETE FROM Aluno WHERE ID_Aluno = 3;
```

## ➡️7- Relatórios:


