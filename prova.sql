
use Escola_de_Musica;
INSERT INTO Aluno (ID_Aluno, Nome, Rua, Numero, Cidade, Estado, CEP, Data_Nascimento, Telefone, Email)
VALUES
(1, 'João Silva', 'Rua A', '123', 'São Paulo', 'SP', '01001-000', '2000-01-01', '11999999999', 'joao@example.com'),
(2, 'Maria Oliveira', 'Rua B', '456', 'Rio de Janeiro', 'RJ', '20001-000', '1995-05-15', '21999999999', 'maria@example.com'),
(3, 'Pedro Santos', 'Rua E', '789', 'Belo Horizonte', 'MG', '30001-000', '1998-03-22', '31988888888', 'pedro@example.com'),
(4, 'Ana Costa', 'Rua F', '101', 'Curitiba', 'PR', '80001-000', '2002-11-30', '41977777777', 'ana@example.com'),
(5, 'Lucas Lima', 'Rua G', '202', 'Porto Alegre', 'RS', '90001-000', '1999-07-19', '51966666666', 'lucas@example.com'),
(6, 'Carla Silva', 'Rua H', '303', 'Salvador', 'BA', '40001-000', '1996-02-25', '71955555555', 'carla@example.com'),
(7, 'Tiago Souza', 'Rua I', '404', 'Brasília', 'DF', '70001-000', '2001-09-10', '61944444444', 'tiago@example.com'),
(8, 'Fernanda Alves', 'Rua J', '505', 'Fortaleza', 'CE', '60001-000', '1997-12-05', '85933333333', 'fernanda@example.com'),
(9, 'Marcos Rocha', 'Rua K', '606', 'Recife', 'PE', '50001-000', '2003-03-15', '81922222222', 'marcos@example.com'),
(10, 'Juliana Lima', 'Rua L', '707', 'Manaus', 'AM', '69001-000', '2000-08-21', '92911111111', 'juliana@example.com');

use Escola_de_Musica;
INSERT INTO Professor (ID_Professor, Nome, Rua, Numero, Cidade, Estado, CEP, Telefone, Email, Salário)
VALUES
(1, 'Carlos Pereira', 'Rua C', '789', 'Belo Horizonte', 'MG', '30001-000', '31999999999', 'carlos@example.com', 3500.00),
(2, 'Ana Souza', 'Rua D', '101', 'Curitiba', 'PR', '80001-000', '41999999999', 'ana@example.com', 4000.00),
(3, 'Beatriz Lima', 'Rua G', '202', 'Porto Alegre', 'RS', '90001-000', '51966666666', 'beatriz@example.com', 3800.00),
(4, 'Rafael Alves', 'Rua H', '303', 'Salvador', 'BA', '40001-000', '71955555555', 'rafael@example.com', 3600.00),
(5, 'Cláudia Martins', 'Rua M', '808', 'Florianópolis', 'SC', '88001-000', '48900000000', 'claudia@example.com', 3700.00),
(6, 'Ricardo Batista', 'Rua N', '909', 'Goiânia', 'GO', '74001-000', '62911111111', 'ricardo@example.com', 3500.00),
(7, 'Luiza Moreira', 'Rua O', '1010', 'Vitória', 'ES', '29001-000', '27922222222', 'luiza@example.com', 3900.00),
(8, 'Felipe Gonçalves', 'Rua P', '1111', 'Maceió', 'AL', '57001-000', '82933333333', 'felipe@example.com', 4100.00),
(9, 'Patrícia Dias', 'Rua Q', '1212', 'Belém', 'PA', '66001-000', '91944444444', 'patricia@example.com', 3500.00),
(10, 'Gustavo Ferreira', 'Rua R', '1313', 'São Luís', 'MA', '65001-000', '98955555555', 'gustavo@example.com', 3700.00);


use Escola_de_Musica;
INSERT INTO Curso (ID_Curso, Nome, Descrição, Duração, Preço)
VALUES
(1, 'Violão Iniciante', 'Curso básico de violão', 6, 150.00),
(2, 'Piano Avançado', 'Curso avançado de piano', 12, 300.00),
(3, 'Guitarra Elétrica', 'Curso intermediário de guitarra elétrica', 8, 200.00),
(4, 'Canto Coral', 'Curso básico de canto coral', 10, 180.00),
(5, 'Bateria', 'Curso completo de bateria', 6, 220.00),
(6, 'Violino', 'Curso avançado de violino', 9, 250.00),
(7, 'Teclado', 'Curso básico de teclado', 5, 130.00),
(8, 'Flauta', 'Curso intermediário de flauta', 7, 160.00),
(9, 'Contrabaixo', 'Curso completo de contrabaixo', 10, 280.00),
(10, 'Saxofone', 'Curso avançado de saxofone', 8, 240.00);

use Escola_de_Musica;
INSERT INTO Aula (ID_Aula, Data, Horário, Local, ID_Curso, ID_Professor)
VALUES
(1, '2024-06-01', '10:00:00', 'Sala 101', 1, 1),
(2, '2024-06-02', '14:00:00', 'Sala 102', 2, 2),
(3, '2024-06-03', '16:00:00', 'Sala 103', 3, 3),
(4, '2024-06-04', '18:00:00', 'Sala 104', 4, 4),
(5, '2024-06-05', '10:00:00', 'Sala 105', 5, 5),
(6, '2024-06-06', '14:00:00', 'Sala 106', 6, 6),
(7, '2024-06-07', '16:00:00', 'Sala 107', 7, 7),
(8, '2024-06-08', '18:00:00', 'Sala 108', 8, 8),
(9, '2024-06-09', '10:00:00', 'Sala 109', 9, 9),
(10, '2024-06-10', '14:00:00', 'Sala 110', 10, 10);


use Escola_de_Musica;
INSERT INTO Instrumento (ID_Instrumento, Nome, Tipo, Marca, Preço)
VALUES
(1, 'Violão', 'Cordas', 'Yamaha', 500.00),
(2, 'Piano', 'Teclas', 'Kawai', 15000.00),
(3, 'Guitarra', 'Cordas', 'Fender', 1200.00),
(4, 'Microfone', 'Voz', 'Shure', 250.00),
(5, 'Bateria', 'Percussão', 'Pearl', 2000.00),
(6, 'Violino', 'Cordas', 'Stradivarius', 8000.00),
(7, 'Teclado', 'Teclas', 'Casio', 600.00),
(8, 'Flauta', 'Madeira', 'Yamaha', 400.00),
(9, 'Contrabaixo', 'Cordas', 'Ibanez', 1800.00),
(10, 'Saxofone', 'Metais', 'Selmer', 2500.00);

use Escola_de_Musica;
INSERT INTO Aluno_Instrumento (ID_Aluno, ID_Instrumento)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

use Escola_de_Musica;
INSERT INTO Aluno_Curso (ID_Aluno, ID_Curso)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);


INSERT INTO Aluno (ID_Aluno, Nome, Rua, Numero, Cidade, Estado, CEP, Data_Nascimento, Telefone, Email)
VALUES
(11, 'Fernando Santos', 'Rua M', '808', 'Florianópolis', 'SC', '88001-001', '1998-04-18', '48900000111', 'fernando@example.com'),
(12, 'Mariana Costa', 'Rua N', '909', 'Goiânia', 'GO', '74001-001', '1997-06-25', '62911111222', 'mariana@example.com'),
(13, 'Paulo Oliveira', 'Rua O', '1010', 'Vitória', 'ES', '29001-001', '1999-09-30', '27922222333', 'paulo@example.com'),
(14, 'Camila Souza', 'Rua P', '1111', 'Maceió', 'AL', '57001-001', '2001-11-12', '82933333444', 'camila@example.com'),
(15, 'Ricardo Lima', 'Rua Q', '1212', 'Belém', 'PA', '66001-001', '2000-01-05', '91944444555', 'ricardo@example.com'),
(16, 'Amanda Martins', 'Rua R', '1313', 'São Luís', 'MA', '65001-001', '1996-07-29', '98955555666', 'amanda@example.com'),
(17, 'Gabriel Ferreira', 'Rua S', '1414', 'Campo Grande', 'MS', '79001-001', '2002-03-14', '67966666777', 'gabriel@example.com'),
(18, 'Patrícia Gonçalves', 'Rua T', '1515', 'Teresina', 'PI', '64001-001', '1995-08-21', '86977777888', 'patricia@example.com'),
(19, 'Luciana Silva', 'Rua U', '1616', 'Boa Vista', 'RR', '69301-001', '2003-02-09', '95988888999', 'luciana@example.com'),
(20, 'Marcos Oliveira', 'Rua V', '1717', 'Palmas', 'TO', '77001-001', '1994-12-15', '63999999000', 'marcos@example.com');

INSERT INTO Curso (ID_Curso, Nome, Descrição, Duração, Preço)
VALUES
(11, 'Violão Avançado', 'Curso avançado de violão', 10, 250.00),
(12, 'Percussão', 'Curso básico de percussão', 8, 180.00),
(13, 'Trompete', 'Curso intermediário de trompete', 7, 200.00),
(14, 'Harpa', 'Curso avançado de harpa', 12, 300.00),
(15, 'Acordeão', 'Curso básico de acordeão', 6, 150.00),
(16, 'Gaita de Boca', 'Curso intermediário de gaita de boca', 8, 180.00),
(17, 'Harpa', 'Curso avançado de harpa', 12, 300.00),
(18, 'Sitar', 'Curso básico de sitar', 6, 170.00),
(19, 'Cavaquinho', 'Curso intermediário de cavaquinho', 7, 190.00),
(20, 'Trombone', 'Curso avançado de trombone', 10, 220.00);


INSERT INTO Aula (ID_Aula, Data, Horário, Local, ID_Curso, ID_Professor)
VALUES
(11, '2024-06-11', '10:00:00', 'Sala 111', 11, 1),
(12, '2024-06-12', '14:00:00', 'Sala 112', 12, 2),
(13, '2024-06-13', '16:00:00', 'Sala 113', 13, 3),
(14, '2024-06-14', '18:00:00', 'Sala 114', 14, 4),
(15, '2024-06-15', '10:00:00', 'Sala 115', 15, 5),
(16, '2024-06-16', '14:00:00', 'Sala 116', 16, 6),
(17, '2024-06-17', '16:00:00', 'Sala 117', 17, 7),
(18, '2024-06-18', '18:00:00', 'Sala 118', 18, 8),
(19, '2024-06-19', '10:00:00', 'Sala 119', 19, 9),
(20, '2024-06-20', '14:00:00', 'Sala 120', 20, 10);


INSERT INTO Instrumento (ID_Instrumento, Nome, Tipo, Marca, Preço)
VALUES
(11, 'Harpa', 'Cordas', 'Eagle', 9000.00),
(12, 'Flauta Transversal', 'Madeira', 'Jupiter', 600.00),
(13, 'Trompete', 'Metais', 'Bach', 1200.00),
(14, 'Violoncelo', 'Cordas', 'Stentor', 1500.00),
(15, 'Gaita de Foles', 'Sopro', 'Hohner', 800.00),
(16, 'Violoncelo', 'Cordas', 'Stradivarius', 20000.00),
(17, 'Trombone', 'Metais', 'Conn', 1800.00),
(18, 'Harpão', 'Percussão', 'Ludwig', 700.00),
(19, 'Sitar', 'Cordas', 'Rikhi Ram', 3000.00),
(20, 'Pandeiro', 'Percussão', 'Contemporânea', 150.00);

INSERT INTO Professor (ID_Professor, Nome, Rua, Numero, Cidade, Estado, CEP, Telefone, Email, Salário)
VALUES
(11, 'Cristina Oliveira', 'Rua L', '2828', 'São Luís', 'MA', '65001-002', '98955555777', 'cristina@example.com', 3800.00),
(12, 'Pedro Pereira', 'Rua M', '2929', 'João Pessoa', 'PB', '58001-001', '83966666888', 'pedro@example.com', 3700.00),
(13, 'Aline Costa', 'Rua N', '3030', 'Porto Alegre', 'RS', '90001-002', '51977777888', 'aline@example.com', 3900.00),
(14, 'Lucas Santos', 'Rua O', '3131', 'Recife', 'PE', '50001-002', '81988888999', 'lucas@example.com', 3600.00),
(15, 'Carla Almeida', 'Rua P', '3232', 'Rio Branco', 'AC', '69901-002', '68977777999', 'carla@example.com', 3800.00),
(16, 'Rafaela Lima', 'Rua Q', '3333', 'Florianópolis', 'SC', '88001-002', '48966666000', 'rafaela@example.com', 3700.00),
(17, 'Felipe Oliveira', 'Rua R', '3434', 'Palmas', 'TO', '77001-003', '63999999555', 'felipeo@example.com', 4000.00),
(18, 'Mariana Santos', 'Rua S', '3535', 'Macapá', 'AP', '68901-002', '96988888222', 'marianas@example.com', 4100.00),
(19, 'Gustavo Costa', 'Rua T', '3636', 'Campo Grande', 'MS', '79001-003', '67966666444', 'gustavoc@example.com', 3800.00),
(20, 'Ana Maria', 'Rua U', '3737', 'Maceió', 'AL', '57001-002', '82955555666', 'ana_maria@example.com', 3900.00);


INSERT INTO Aluno_Instrumento (ID_Aluno, ID_Instrumento)
VALUES
(11, 3),
(12, 4),
(13, 5),
(14, 6),
(15, 7),
(16, 8),
(17, 9),
(18, 10),
(19, 11),
(20, 12);

INSERT INTO Aluno_Curso (ID_Aluno, ID_Curso)
VALUES
(11, 1), 
(12, 2),  
(13, 3),  
(14, 4),  
(15, 5),  
(16, 6),  
(17, 7),  
(18, 8),  
(19, 9),  
(20, 10); 







SELECT * FROM Aluno;



INSERT INTO Aluno (ID_Aluno, Nome, Rua, Numero, Cidade, Estado, CEP, Data_Nascimento, Telefone, Email)
VALUES (21, 'Laura Beatriz', 'Rua E', '206', 'Porto Alegre', 'RS', '90001-000', '1995-05-15', '52999999999', 'laura@example.com');




UPDATE Aluno SET Email = 'joao_novo@example.com' WHERE ID_Aluno = 1;



DELETE FROM Aluno WHERE ID_Aluno = 3;

use Escola_De_Musica;
SELECT a.Nome AS Aluno, c.Nome AS Curso
FROM Aluno a
JOIN Aluno_Curso ac ON a.ID_Aluno = ac.ID_Aluno
JOIN Curso c ON ac.ID_Curso = c.ID_Curso;


use Escola_De_Musica;
SELECT p.Nome AS Professor, a.ID_Aula, a.Data, a.Horário, a.Local
FROM Professor p
JOIN Aula a ON p.ID_Professor = a.ID_Professor;


use Escola_De_Musica;
SELECT al.Nome AS Aluno, i.Nome AS Instrumento
FROM Aluno al
JOIN Aluno_Instrumento ai ON al.ID_Aluno = ai.ID_Aluno
JOIN Instrumento i ON ai.ID_Instrumento = i.ID_Instrumento;




use Escola_De_Musica;
SELECT c.Nome AS Curso, p.Nome AS Professor
FROM Curso c
JOIN Professor p ON c.ID_Curso = p.ID_Professor;


use Escola_De_Musica;
SELECT a.ID_Aula, a.Data, a.Horário, a.Local
FROM Aula a
JOIN Curso c ON a.ID_Curso = c.ID_Curso
WHERE c.ID_Curso = 1;


use Escola_De_Musica;
SELECT c.Nome AS Curso, COUNT(ac.ID_Aluno) AS Quantidade_Alunos
FROM Curso c
JOIN Aluno_Curso ac ON c.ID_Curso = ac.ID_Curso
GROUP BY c.ID_Curso, c.Nome;



use Escola_De_Musica;
SELECT Nome, Salário FROM Professor;


use Escola_De_Musica;
SELECT Nome, Telefone FROM Aluno;



use Escola_De_Musica;
SELECT Nome, Descrição, Duração, Preço FROM Curso;



use Escola_De_Musica;
SELECT a.ID_Aula, a.Data, a.Horário, a.Local
FROM Aula a
JOIN Professor p ON a.ID_Professor = p.ID_Professor
WHERE p.ID_Professor = 3 AND a.Data = '2024-06-03';













