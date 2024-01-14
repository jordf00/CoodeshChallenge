# CoodeshChallenge

Challenge for coodesh
Código de automação de testes feito usando RobotFramework, Python, Selenium Library e PyCharm.

Tecnologias Utilizadas

Python, Selenium Library e PyCharm

---COMO INSTALAR---

1.  Baixe o arquivo "inputvalidations.robot"
2.  Coloque o na sua pasta "robotframework". EX: "C:\Users\<Usuário>\PycharmProjects\RobotFramework\RobotFramework"
3.  Abra o PyCharm e abra o arquivo.
4.  Dentro do PyCharm abra o terminal.
5.  Utilize o comando " robot  PastaOndeOArquivoEstáLocalizado\inputvalidations.robot

---NOTAS---

é necessário ter o "chromeDriver" instalado e ter as dependencias do robotframework.
chromedriver deve estar na sua pasta de scripts do pythons e essa pasta deve estar na sua seção de "Variáveis de ambiente" do windows. (veja abaixo como colocar o diretório nas variáveis de ambiente).
Para instalar as dependencias do robot framework utilize os seguintes comandos no cmd:

 1.  pip install selenium
 2.  pip install robotframework
 3.  pip install robotframework-seleniumlibrary

---Variáveis de Ambiente---

Para colocar o diretorio nas variáveis de ambiente siga os passos:

1. Copie o local onde "cromedriver" está localizado (recomendado deixa-lo com os scripts do python) EX: C:\Users\<Usuário>\AppData\Local\Programs\Python\Python312\Scripts .
2. Clique com o botão direito em "Este Computador" e clique em propriedades.
3. Abra "configurações avançadas do sistema".
4. Na aba "avançado" clique em "Variáveis de ambiente".
5. Na parte "Variáveis de ambiente" procure por "path" clique e depois clique em editar.
6. Clique em "novo" e cole o diretório do seu "cromedriver".
