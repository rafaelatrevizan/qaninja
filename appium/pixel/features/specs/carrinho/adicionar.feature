#language: pt

Funcionalidade: Adicionar item ao carrinho
    Para que eu possa comprar jogos clássicos na loja
    Sendo um usuário cadastrado
    Posso adicionar itens no meu carrinho

    @add_game @login
    Cenario: Adicionar jogo

        Dado que eu quero comprar o "F-Zero" do "Super Nintendo"
        Quando adiciono este item ao carrinho
        Então devo ver o alerta "Você adicionou F-Zero ao seu carrinho!"

    @not_loged @clean_cart
    Cenario: Usuário não logado adiciona produto

        Dado que eu quero comprar o "Golden Axe" do "Mega Drive"
        Quando adiciono este item ao carrinho
        Mas preciso fazer login para adicionar o produto
        Então devo ver o alerta "Você adicionou Golden Axe ao seu carrinho!"