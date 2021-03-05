#language:pt

Funcionalidade: Comprar smart tv no site Magazine Luiza
    Como cliente quero comprar uma smart tv
    Para que que eu possa ver meus filmes e séries

    Cenario: Busca pelo produto no campo de pesquisa
        Dado que acesso a página principal
        Quando busco pela 'smart tv'
            E escolho o modelo na lista
        Então adiciono à sacola e valido o produto

    Cenario: Busca pelo produto com garantia estendida
        Dado que acesso a página principal
        Quando busco pela 'smart tv'
            E escolho o modelo na lista
            E adiciono à sacola
            E seleciono mais um ano de garantia
        Então valido o produto

    Cenario:Seleção do produto posicionando sobre cabeçalho
        Dado que acesso a página principal
        Quando posiciono sobre tv e vídeo selecionando Smart Tv
            E escolho o modelo do aparelho
        Então adiciono à sacola e valido o produto

    Cenario: Seleção do produto menu todos os departamentos
        Dado que acesso a página principal
        Quando seleciono todos os departamentos e depois tv e vídeo
            E  filtro o produto ideal em TVs e Smart TV
            E escolho o modelo do aparelho
        Então adiciono à sacola e valido o produto
