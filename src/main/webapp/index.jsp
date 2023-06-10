<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
    <title>Animales</title>
</head>
<body>
<header>
    <div>
        <a id="cust" href="custody">Custodiar</a>
    </div>
    <img src="https://previews.123rf.com/images/ayutaka/ayutaka1701/ayutaka170100021/71244047-grupo-de-animales-dom%C3%A9sticos.jpg"
         alt="">
    <div>
        <a id="adop" href="rescue">Adoptar</a>
    </div>
</header>
<main>
    <h1>Animales</h1>
    <section class="mdiv">

        <article class="animal" id="perro">
            <h2>Perros</h2>
            <img src="https://images.ecestaticos.com/QDHrZ9IKBFUm1O8pNOrwx7sM4AI=/0x87:2155x1283/414x311/filters:fill(white):format(jpg)/f.elconfidencial.com%2Foriginal%2F8ec%2F08c%2F85c%2F8ec08c85c866ccb70c4f1c36492d890f.jpg"
                 alt="perro">
        </article>
        <article class="animal" id="gato">
            <h2>Gatos</h2>
            <img src="https://images.unsplash.com/photo-1611915387288-fd8d2f5f928b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80"
                 alt="gato">
        </article>
        <article class="animal" id="pajaro">
            <h2>Pajaros</h2>
            <img src="https://misanimales.com/wp-content/uploads/2020/09/canario-rojo-jaula-768x625.jpg?auto=webp&quality=45&width=1080&crop=16:9,smart,safe"
                 alt="pajaro">
        </article>
    </section>
</main>
<footer>
    Akimo
</footer>
</body>
</html>