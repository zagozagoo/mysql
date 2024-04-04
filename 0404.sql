CREATE TABLE Aluno (
    IDAluno INT PRIMARY KEY not null auto_increment,
    nome_aluno VARCHAR(100),
    data_nascimento DATE
);

CREATE TABLE AlunoEndereco (
	IDAluno int,
	endereco_rua VARCHAR(255),
    endereco_numero INT,
    endereco_bairro VARCHAR(100),
    endereco_cidade VARCHAR(100),
    endereco_estado VARCHAR(50),
    Foreign Key (IDAluno) references Aluno(IDAluno)
);

CREATE TABLE AlunoTelefone (
	IDAluno int,
    cod_pais int,
    ddd int,
	telefone_aluno VARCHAR(20),
    Foreign Key (IDAluno) references Aluno(IDAluno)
);

CREATE TABLE Turma (
    id_turma INT AUTO_INCREMENT PRIMARY KEY,
    nome_turma VARCHAR(255),
    ano_escolar INT
);

CREATE TABLE Disciplina (
    id_disciplina INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nome_disciplina VARCHAR(255)
);

CREATE TABLE Funcionario (
	registro_funcionario INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    cpf_funcionario INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nome_funcionario VARCHAR(100),
    sobrenome_funcionario VARCHAR(255)
);

#####a PARTIR DAQUI NAO AJEITEI######

CREATE TABLE FuncionarioEndereco (
	telefone_funcionario VARCHAR(20),
    endereco_rua VARCHAR(255),
    endereco_numero INT,
    endereco_bairro VARCHAR(100),
    endereco_cidade VARCHAR(100),
    endereco_estado VARCHAR(50)
);

CREATE TABLE Aluno_Matricula (
    registro_aluno INT,
    id_turma INT,
    id_disciplina INT,
    PRIMARY KEY (registro_aluno, id_turma, id_disciplina),
    FOREIGN KEY (registro_aluno) REFERENCES Aluno(registro_aluno),
    FOREIGN KEY (id_turma) REFERENCES Turma(id_turma),
    FOREIGN KEY (id_disciplina) REFERENCES Disciplina(id_disciplina)
);

CREATE TABLE Funcionario_Matricula (
    cpf_funcionario VARCHAR(14),
    registro_funcionario INT,
    PRIMARY KEY (cpf_funcionario, registro_funcionario),
    FOREIGN KEY (cpf_funcionario, registro_funcionario) REFERENCES Funcionario(cpf_funcionario, registro_funcionario)
);
