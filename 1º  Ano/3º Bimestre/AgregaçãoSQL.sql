	CREATE DATABASE db_livros
	USE db_livros
	--DROP TABLE tblacervo
	CREATE TABLE tblacervo (
		ranking	INT NOT NULL,
		emprestimos	INT NOT NULL,
		obras		VARCHAR(200) NOT NULL,
		autores		VARCHAR(200) NOT NULL,
		publico		VARCHAR(200) NOT NULL
		PRIMARY KEY (ranking)
	)
	INSERT INTO tblacervo (ranking, emprestimos, obras, autores, publico)
	VALUES
	(1, 469, 'Quincas Borba', 'Machado de Assis', 'adulto'),
	(2, 432, 'Quarto de despejo: di�rio de uma favelada', 'Carolina Maria de Jesus; Vinicius Rossignol Felipe (ilustra��es)', 'adulto'),
    (3, 371, 'Di�rio de um banana: as mem�rias de Greg Heffley', 'Jeff Kinney', 'infantojuvenil'),
    (4, 325, 'A revolu��o dos bichos: um conto de fadas', 'George Orwell', 'adulto'),
    (5, 316, 'O di�rio de Anne Frank', 'Anne Frank', 'adulto'),
    (6, 306, 'Harry Potter e a pedra filosofal', 'J. K. Rowling', 'infantojuvenil'),
    (7, 302, 'A rel�quia', 'E�a de Queir�s', 'adulto'),
    (8, 293, 'O ladr�o de raios', 'Rick Riordan', 'infantojuvenil'),
    (9, 289, '1984', 'George Orwell', 'adulto'),
    (10, 289, 'Di�rio de um banana: Rodrick � o cara', 'Jeff Kinney', 'infantojuvenil'),
    (11, 275, 'Dom Casmurro', 'Machado de Assis', 'adulto'),
    (12, 263, 'Poemas escolhidos: Greg�rio de Matos', 'Greg�rio de Matos; Jos� Miguel Wisnik (sele��o)', 'adulto'),
    (13, 255, 'Mayombe: romance', 'Pepetela', 'adulto'),
    (14, 239, 'Harry Potter e a c�mara secreta', 'J. K. Rowling', 'infantojuvenil'),
    (15, 238, 'Di�rio de um banana: a gota d''�gua', 'Jeff Kinney', 'infantojuvenil'),
    (16, 236, 'O corti�o', 'Alu�sio Azevedo', 'adulto'),
    (17, 235, 'Di�rio de um banana: dias de c�o', 'Jeff Kinney', 'infantojuvenil'),
    (18, 233, 'A sele��o', 'Kiera Cass', 'infantojuvenil'),
    (19, 225, 'Claro enigma', 'Carlos Drummond de Andrade', 'adulto'),
    (20, 220, 'Romanceiro da Inconfid�ncia', 'Cec�lia Meireles', 'adulto'),
    (21, 217, 'O pequeno pr�ncipe', 'Antoine de Saint-Exup�ry', 'infantojuvenil'),
    (22, 214, 'Manuelz�o e Miguilim (corpo de baile)', 'Jo�o Guimar�es Rosa', 'adulto'),
    (23, 209, 'Capit�es da areia', 'Jorge Amado', 'adulto'),
    (24, 192, 'A culpa � das estrelas', 'John Green', 'infantojuvenil'),
    (25, 186, 'Fahrenheit 451: a temperatura na qual o papel do livro pega fogo e queima...', 'Ray Bradbury', 'adulto'),
    (26, 186, 'Orgulho e preconceito', 'Jane Austen', 'adulto'),
    (27, 184, 'Ang�stia', 'Graciliano Ramos', 'adulto'),
    (28, 183, 'Harry Potter e o prisioneiro de Azkaban', 'J. K. Rowling', 'infantojuvenil'),
    (29, 181, 'Admir�vel mundo novo', 'Aldous Huxley', 'adulto'),
    (30, 171, 'Cem anos de solid�o', 'Gabriel Garc�a M�rquez', 'adulto'),
    (31, 163, 'Di�rio de um banana: mar� de azar', 'Jeff Kinney', 'infantojuvenil'),
    (32, 162, 'Crime e castigo', 'Fi�dor Dostoi�vski', 'adulto'),
    (33, 160, 'Harry Potter e a Ordem da F�nix', 'J. K. Rowling', 'infantojuvenil'),
    (34, 158, 'Di�rio de um banana: a verdade nua e crua', 'Jeff Kinney', 'infantojuvenil'),
    (35, 156, 'Di�rio de um banana: bons tempos', 'Jeff Kinney', 'infantojuvenil'),
    (36, 156, 'Di�rio de um banana: caindo na estrada', 'Jeff Kinney', 'infantojuvenil'),
    (37, 156, 'Di�rio de um banana: segurando vela', 'Jeff Kinney', 'infantojuvenil'),
    (38, 154, '�ramos seis', 'Maria Jos� Dupr�', 'infantojuvenil'),
    (39, 153, 'It =: a coisa ', 'Stephen King', 'adulto'),
    (40, 152, 'A elite', 'Kiera Cass', 'infantojuvenil'),
    (41, 152, 'Di�rio de um banana: casa dos horrores', 'Jeff Kinney', 'infantojuvenil'),
    (42, 152, 'Iracema: lenda do Cear�', 'Jos� de Alencar', 'adulto'),
    (43, 149, 'Sapiens: uma breve hist�ria da humanidade', 'Yuval Noah Harari', 'adulto'),
    (44, 148, 'Extraordin�rio', 'R. J. Palacio', 'infantojuvenil'),
    (45, 148, 'Mem�rias p�stumas de Br�s Cubas', 'Machado de Assis', 'adulto'),
    (46, 146, 'Assassinato no Expresso do Oriente', 'Agatha Christie', 'adulto'),
    (47, 146, 'Di�rio de um banana: vai ou racha', 'Jeff Kinney', 'infantojuvenil'),
    (48, 146, 'Harry Potter e o c�lice de fogo', 'J. K. Rowling', 'infantojuvenil'),
    (49, 146, 'Para todos os garotos que j� amei', 'Jenny Han', 'adulto'),
    (50, 145, 'Como eu era antes de voc�', 'Jojo Moyes', 'adulto'),
    (51, 140, 'Cidades de papel', 'John Green', 'infantojuvenil'),
    (52, 140, 'Confiss�es de uma garota exclu�da, mal-amada e (um pouco) dram�tica', 'Thalita Rebou�as', 'infantojuvenil'),
    (53, 140, 'Maus: a hist�ria de um sobrevivente', 'Art Spiegelman', 'adulto'),
    (54, 138, 'A hora da estrela', 'Clarice Lispector', 'adulto'),
    (55, 136, 'A escolha', 'Kiera Cass', 'infantojuvenil'),
    (56, 135, 'O mar de monstros', 'Rick Riordan', 'infantojuvenil'),
    (57, 128, 'Como Dorinha v� o mundo [braile]', 'Mauricio de Sousa', 'infantojuvenil'),
    (58, 127, 'Maldi��o do Tit�', 'Rick Riordan', 'infantojuvenil'),
    (59, 126, 'Malala, a menina que queria ir para a escola', 'Adriana Carranca; Bruna Assis Brasil (ilustra��es)', 'infantojuvenil'),
    (60, 124, 'O milagre da manh�: o segredo para transformar sua vida (antes das 8 horas)', 'Hal Elrod', 'adulto'),
    (61, 124, 'Um ano inesquec�vel', 'Paula Pimenta', 'infantojuvenil'),
    (62, 123, 'Depois de voc�', 'Jojo Moyes', 'adulto'),
    (63, 122, 'A guerra dos tronos', 'George R. R. Martin', 'adulto'),
    (64, 121, 'O morro dos ventos uivantes: o amor nunca morre...', 'Emily Bront�', 'adulto'),
    (65, 119, 'Fazendo meu filme, 1: a estreia de Fani', 'Paula Pimenta', 'infantojuvenil'),
    (66, 119, '�dio que voc� semeia', 'Angie Thomas', 'adulto'),
    (67, 118, 'Harry Potter e as rel�quias da morte', 'J. K. Rowling', 'infantojuvenil'),
    (68, 116, 'Ansiedade: como enfrentar o mal do s�culo: a s�ndrome do pensamento acelerado: como e por que a humanidade adoeceu coletivamente, das crian�as aos adultos', 'Augusto Cury', 'adulto'),
    (69, 114, 'Minha vida de menina', 'Helena Morley', 'adulto'),
    (70, 113, 'A herdeira', 'Kiera Cass', 'infantojuvenil'),
    (71, 113, 'Pai rico, pai pobre: o que os ricos ensinam a seus filhos sobre dinheiro', 'Robert T. Kiyosaki; Sharon L. Lechter', 'adulto'),
    (72, 112, 'Agora e para sempre, Lara Jean', 'Jenny Han', 'adulto'),
    (73, 111, 'A sutil arte de ligar o f*oda-se', 'Mark Manson', 'adulto'),
    (74, 111, 'Homem de giz', 'C. J. Tudor', 'adulto'),
    (75, 109, 'Sobrevivendo no inferno', 'Racionais MC\''s (conjunto musical); Acauam Silv�rio de Oliveira', 'adulto'),
    (76, 108, 'A fal�ncia', 'J�lia Lopes de Almeida', 'adulto'),
    (77, 108, 'O conto da Aia', 'Margaret Atwood', 'adulto'),
    (78, 108, 'Que horas s�o?', 'Daniela Kulot', 'infantojuvenil'),
    (79, 107, 'O menino maluquinho', 'Ziraldo', 'infantojuvenil'),
    (80, 106, '� assim que acaba', 'Colleen Hoover', 'adulto'),
    (81, 106, 'Jogos vorazes', 'Suzanne Collins', 'infantojuvenil'),
    (82, 105, 'PS: ainda amo voc�', 'Jenny Han', 'adulto'),
    (83, 104, '1808: como uma rainha louca, um pr�ncipe medroso e uma corte corrupta enganaram Napole�o e mudaram a hist�ria de Portugal e do Brasil', 'Laurentino Gomes', 'adulto'),
    (84, 104, 'Sem cora��o', 'Marissa Meyer', 'adulto'),
    (85, 104, 'Vidas secas', 'Graciliano Ramos', 'adulto'),
    (86 , 103, 'Senhora: perfil de mulher', 'Jos� de Alencar', 'adulto'),
    (87, 102, 'No seu olhar', 'Nicholas Sparks', 'adulto'),
    (88, 101, 'Fazendo meu filme, 2: Fani na terra da rainha', 'Paula Pimenta', 'infantojuvenil'),
    (89, 101, 'Harry Potter e o enigma do pr�ncipe', 'J. K. Rowling', 'infantojuvenil'), (
    90, 101 , 'Mais lindo que a lua', 'Julia Quinn', 'adulto'),
    (91, 101, 'Nove noites: romance', 'Bernardo Carvalho', 'adulto'),
    (92, 100, 'Ainda sou eu ', 'Jojo Moyes', 'adulto'),
    (93, 99, 'Desventuras de um garoto nada comum, livro 1: o her�i do arm�rio', 'Rachel Ren�e Russell; Nikki Russell; Erin Russell', 'infantojuvenil'),
    (94, 97, 'Mais forte que o sol', 'Julia Quinn', 'adulto'), 
    (95,95, 'A rainha vermelha', 'Victoria Aveyard', 'infantojuvenil '),
    (96, 95, 'Desventuras de um garoto nada comum, livro 2: caos no col�gio', 'Rachel Ren�e Russell', 'infantojuvenil'), 
    (97, 95, 'O casal que mora ao lado','Shari Lapena', 'adulto'),
    (98, 95, 'Pedagogia do oprimido', 'Paulo Freire', 'adulto'),
    (99, 94, 'A villa', 'Nora Roberts', 'adulto'),
	(100, 96 , 'Deixada Para Tr�s','Charlie Donlea', 'adulto');


 

SELECT 'N�'+CAST(ranking AS VARCHAR)AS Ranking,emprestimos AS Emprestimos,obras AS Titulo_das_obras,autores AS Autores, publico AS Publico FROM tblacervo;

-- EX: 2
SELECT COUNT(*) AS Obras_Adulto
FROM tblacervo
WHERE publico = 'adulto';

SELECT COUNT(*) AS Obras_Infantojuvenil
FROM tblacervo
WHERE publico = 'infantojuvenil';

--EX 3
SELECT SUM(emprestimos) FROM tblacervo
WHERE publico = 'adulto';

SELECT SUM(emprestimos) FROM tblacervo
WHERE publico = 'infantojuvenil';

--EX 4

SELECT COUNT(*) AS obras_Rowling
FROM tblacervo
WHERE autores = 'J. K. Rowling';

SELECT COUNT(*) AS obras_Riordan
FROM tblacervo
WHERE autores = 'Rick Riordan';

SELECT COUNT(*) AS obras_Green
FROM tblacervo
WHERE autores = 'John Green';

SELECT COUNT(*) AS obras_Cury
FROM tblacervo
WHERE autores = 'Augusto Cury';

SELECT COUNT(*) AS obras_Christie
FROM tblacervo
WHERE autores = 'Agatha Christie';

SELECT COUNT(*) AS obras_Tolkien
FROM tblacervo
WHERE autores = 'J. R. R. Tolkien';

--TUDO JUNTO

SELECT COUNT(*) AS todas_somadas 
FROM tblacervo 
WHERE autores = 'J. K. Rowling' OR autores = 'Rick Riordan' OR autores= 'John Green' OR autores= 'Augusto Cury' OR autores= 'Agatha Christie' OR autores= 'J. R. R. Tolkien';

