## **📜 Sobre o Projeto**

O **ControlLeite** é um sistema de gerenciamento de campanha de arrecadação de leite, desenvolvido como uma aplicação desktop robusta e com interface de usuário moderna. O objetivo principal é fornecer uma ferramenta eficiente para escolas, instituições ou organizadores de campanhas para cadastrar e monitorar o inventário de arrecadação de leite por turma.

A arquitetura do projeto é baseada no padrão **Model-View-Controller (MVC)**, garantindo uma separação clara de responsabilidades, facilitando a manutenção e a escalabilidade.

## **✨ Funcionalidades**

O ControlLeite oferece as seguintes funcionalidades essenciais:

* **Cadastro de Turmas:** Interface dedicada para registrar novas turmas participantes da campanha (ex: 1º Ano A, 3ª Série B).  
* **Gestão de Inventário:** Funcionalidade para registrar a quantidade de leite arrecadada por cada turma.  
* **Visualização por Turma:** Permite consultar o inventário individual de cada turma.  
* **Ranking de Arrecadação:** Visão geral para acompanhar o total arrecadado por todas as turmas.  
* **Interface Moderna:** Utilização do ttkbootstrap para uma experiência de usuário limpa e profissional, com temas modernos.

## **💻 Tecnologias Utilizadas**

| Tecnologia | Descrição |
| :---- | :---- |
| **Python** | Linguagem de programação principal. |
| **ttkbootstrap** | Framework para criar interfaces gráficas (GUI) modernas baseadas no Tkinter e Bootstrap. |
| **MySQL** | Sistema de Gerenciamento de Banco de Dados Relacional (SGBD) para armazenamento de dados persistentes. |
| **mysql-connector-python** | Driver oficial do MySQL para conexão com o banco de dados. |
| **Padrão MVC** | Arquitetura de design para organizar o código em Model, View e Controller. |

## **🚀 Pré-requisitos**

Para rodar o ControlLeite localmente, você precisará ter o seguinte instalado:

1. **Python 3.x**  
2. Um servidor **MySQL** ativo (local ou remoto).

## **⚙️ Instalação e Configuração**

Siga os passos abaixo para configurar e executar o projeto.

### **1\. Clonar o Repositório**

Bash  
git clone \<URL\_DO\_SEU\_REPOSITORIO\>  
cd ControlLeite

### **2\. Configurar o Ambiente Python**

É altamente recomendável utilizar um ambiente virtual:

Bash  
\# Cria um ambiente virtual  
python \-m venv venv  
\# Ativa o ambiente virtual (Windows)  
.\\venv\\Scripts\\activate  
\# Ativa o ambiente virtual (macOS/Linux)  
source venv/bin/activate

### **3\. Instalar Dependências**

Instale todas as bibliotecas Python necessárias:

Bash  
pip install ttkbootstrap mysql-connector-python

### **4\. Configurar o Banco de Dados MySQL**

#### **a) Criação do Banco de Dados**

Acesse seu terminal MySQL ou ferramenta gráfica (como MySQL Workbench) e crie o banco de dados.

SQL  
CREATE DATABASE controlleite\_db;  
USE controlleite\_db;

#### **b) Estrutura das Tabelas (Exemplo)**

Crie a tabela principal de turmas. Se o seu projeto tiver um script .sql para a estrutura completa, mencione-o.

SQL  
\-- Exemplo de Tabela Turma  
CREATE TABLE turma (  
    id INT AUTO\_INCREMENT PRIMARY KEY,  
    nome\_turma VARCHAR(100) NOT NULL UNIQUE,  
    arrecadacao\_total INT DEFAULT 0  
);

#### **c) Configuração de Conexão**

Você precisará criar ou editar o arquivo de configuração de banco de dados do projeto (provavelmente em um arquivo chamado config.py ou similar) com suas credenciais:

Python  
\# Exemplo de credenciais que o seu código deve usar  
DB\_HOST \= "localhost"  
DB\_USER \= "seu\_usuario\_mysql"  
DB\_PASSWORD \= "sua\_senha\_mysql"  
DB\_DATABASE \= "controlleite\_db"

### **5\. Executar a Aplicação**

Com o ambiente virtual ativado e as configurações do banco de dados prontas, execute o arquivo principal da aplicação:

Bash  
python main.py \# (Ou o nome do seu arquivo de inicialização)

## **📐 Arquitetura MVC (Model-View-Controller)**

O projeto é organizado para facilitar o desenvolvimento:

* **View (views/):** Contém todo o código da interface gráfica, responsável por exibir os dados e capturar a interação do usuário (ex: TurmaView.py). **Utiliza o ttkbootstrap.**  
* **Model (models/):** Lida com a lógica de dados, comunicação com o MySQL, e manipulação dos objetos (ex: TurmaModel.py). **Utiliza o mysql-connector-python.**  
* **Controller (controllers/):** Atua como intermediário, recebendo comandos da **View** e atualizando o estado da **Model** (ex: TurmaController.py).

## **👨‍💻 Autor**

| Autor | GitHub |
| :---- | :---- |
| Pietro | \<URL\_DO\_SEU\_GITHUB\> |

## **🤝 Contribuições**

Este projeto está em desenvolvimento. Contribuições, sejam elas novas funcionalidades, relatórios de bugs ou melhorias na documentação, são bem-vindas\!

## **📄 Licença**

O projeto ControlLeite está sendo desenvolvido sem uma licença formal, o que significa que todos os direitos são reservados por padrão. Caso decida adotar uma licença open-source (como MIT ou GPL), por favor, atualize esta seção.

