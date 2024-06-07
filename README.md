# Escola de Música Harmonia - Banco de Dados 🎼
Este repositório contém um projeto de banco de dados desenvolvido com o intuito de administrar e armazenar informações de alunos, professores e cursos oferecidos por uma escola musical.

## ➡️Cenário:
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

## ➡️Modelagem Conceitual:


## ➡️Modelagem Lógica:


