<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/characters" var="servletCharacters"/>
<c:url value="/events" var="servletEvents"/>
<c:url value="/relation" var="servletRelation"/>
<%--
  Created by IntelliJ IDEA.
  User: bruno
  Date: 11/10/2020
  Time: 9:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Back To The Future</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
          integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <script src="jquery/jquery-3.5.1.slim.min.js"></script>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
            integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
            integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"
            integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s"
            crossorigin="anonymous"></script>

    <link rel="stylesheet" href="css/backtothefuture.css">
</head>
<body class="body">

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="#"><img src="img/logo.png" alt="logo" class="logo"></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
            aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
            <a class="nav-link" href="${servletIndex}">Home</a>
            <a class="nav-link" href="${servletCharacters}">Personagens</a>
            <a class="nav-link" href=${servletRelation}>Relações</a>
            <a class="nav-link active" href=chatbot.jsp>Machine Learn</a>
            <a class="nav-link" href=diagrama-de-classe.jsp>Diagrama de Classe</a>
        </div>
    </div>
</nav>

<h1 class="display-3 subtitle">Machine Learning – DISRUPT21</h1> <br/>
<div class="container">

    <p class="text">
        Na realidade do filme De Volta Para o Futuro, os personagens viajam no tempo com o auxílio da máquina criada
        pelo Dr. Emmet Brown, um carro DeLorean modificado para conseguir realizar saltos temporais, demandando uma
        grande quantidade de energia para isso. Ao viajar com o carro, os personagens se vêem transportados pelo tempo,
        mas não pelo espaço, o que significa que a localização geográfica deles é a mesma, mas ela pode ter sofrido
        alterações do tempo, como diferentes construções, casas, prédios, fazendas, etc.
        Para ilustrar podemos observar a primeira viagem feita por Marty McFly, ele sai de 1985 do estacionamento de um
        shopping e ao chegar em 1955 o shopping não existe e ele está no meio de uma fazenda de árvores, e acaba batendo
        em um galpão que não existia em 1985. Vemos então que existe o perigo de se transportar para um tempo onde
        existam outras construções no local do salto, e se pensarmos em viajar para o futuro, a probabilidade de que
        hajam novas construções ou novos centros de movimentação é maior ainda, o que pode acarretar problemas sérios,
        podendo até ferir pessoas ou colocar em risco a descoberta da viagem no tempo.
        Tendo esse problema em vista resolvemos criar uma solução que ajude a prever quais locais nas proximidades
        seriam mais seguros para realizar um salto temporal. Podemos pensar que um centro de alguma cidade não é uma boa
        ideia, por exemplo, mas existem inúmeros fatores que devem ser considerados ao se analisar a probabilidade de
        crescimento de uma região. Com a ajuda do Machine Learning conseguimos analisar com eficiência todos esses dados
        para acharmos um local mais seguro para realizar o salto sem maiores complicações.
        Para tanto devemos primeiramente definir quais seriam as variáveis que comporiam nossa coleção de dados. Alguns
        desses dados poderiam ser encontrados em registros da cidade ao longo dos anos como: quantidade da população,
        quantidade de construções novas, localização dessas construções, tipo de construções por local (como
        residencial, comercial, empresarial), localização de escolas, dados dos moradores (idade, quantidade de filhos
        por família e por região, local de trabalho), além de dados como a quantidade de pessoas que passam diariamente
        por diversos locais observados como praças e ruas. Já outros dados poderiam ser coletados junto aos habitantes,
        levando em consideração a localização dos mesmos, a fim de traçar os hábitos e locais mais frequentados para
        lazer, por exemplo: onde fazem compras de mercado, locais públicos mais frequentados, se e quais parques
        frequentam, restaurantes, etc. Com o conjunto de dados a ser analisado já formado partimos para a escolha da
        melhor técnica a ser aplicada.
        Ao analisar os métodos que poderíamos usar no nosso problema chegamos a conclusão de que a Regressão Linear, por
        se tratar de uma predição, é o que nos melhor atende levando em conta que estamos tentando prever um número
        (probabilidade de crescimento) com base em outras variáveis pertinentes.
        A Árvore de Decisão é um tipo de agrupamento, e ao ser analisada como possibilidade para resolução do problema
        apresentado não nos ajudaria a chegar no resultado esperado, pois ela resolve problemas que envolvam a
        categorização de ocorrências em diferentes conjuntos, com base nos dados de cada uma.
        A Regressão Logística retorna um resultado binário, e considerando o nosso problema principal seria mais
        interessante termos em número a probabilidade do acontecimento em cada local, não conseguiríamos afirmar com
        certeza que o local terá ou não um crescimento, sendo assim optamos por não utilizar essa técnica
        Usaremos então a regressão linear, começando pela análise exploratória dos dados: setar uma coluna que apresenta
        um número que representa o crescimento dos locais no passado considerando todos os fatores e analisando quais
        deles foram mais importantes e decisivos, ou seja, a relação dessas variáveis com o resultado da coluna de
        crescimento, por meio de gráficos gerados ao comparar diversas combinações de dados. Com as variáveis mais
        importantes já identificadas partimos para a divisão dos dados e consequente treinamento. No final teremos a
        lista de locais com a probabilidade de crescimento de cada uma, podendo ser ordenada pelas menos prováveis,
        facilitando e limitando a escolha final.
    </p>

</div>

</body>
</html>
