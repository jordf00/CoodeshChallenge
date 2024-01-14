# CoodeshChallenge

Challenge by coodesh
Código de automação de testes feito usando RobotFramework, Python, Selenium Library e PyCharm.

---Tecnologias Utilizadas---

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


--- Documentação---

-Motivo da escolha - Python e robot Framework-

O meu motivo principal foi a praticidade e a quantidade de informações existentes na internet sobre robot framework e Python. 

-Processo de produção-

Durante a produção desse código para o desafio coodesh o principail problema que eu enfrentei foi a minha própria inesperiência ja que tenho pouco tempo utilizando robot framework. As principais ajudas que eu peguei foram a documentação no site "robotframework.org" , stackoverflow e videos no youtube. 

-Dificuldades-

Os sites de ajuda como stackoverflow, robotframework.org e etc ajudam bastante com dúvidas que surgem durante a produção, porem a unica situação que me segurou e me atrasou o termino do codigo foi o radio button no final do checkout na parte de shipping methods, no começo senti que meu código estava instável pois qualquer modificação em qualquer lugar do site fazia com que a variavel do botão mudasse e isso complicava o código, mas depois de algumas modificações de tempo o código ficou muito mais instável.


---Conclusão---

Levando em conta que eu ainda sou "junior" considero que eu fiz um bom trabalho com esse projeto, seguindo essa linha ainda tenho muito o que aprender e espero aprender bastante na empresa.
Quero agradeçer a coodesh pela oportunidade e espero que trabalhemos juntos num futuro proximo!
