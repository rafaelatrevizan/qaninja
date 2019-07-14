#language: pt
@login
Funcionalidade: Finalizar compra
    Para que eu possa receber os produtos em minha casa
    Sendo um usuário que possui itens no carrinho
    Posso Finalizar a compra de jogos ou consoles

    @final_cart @login @clean_cart
    Cenario: Pagar com paypal

        Dado que eu adicionei os seguintes itens no meu carrinho:
        |categoria     |produto|
        |Super Nintendo|F-Zero |
        Quando eu finalizo a minha compra
        |email|test@qaninja.io|
        |senha|qaninja123456  |
        Então devo ver o alerta "Você pagou seu pedido atraves do PayPal! Entregaremos sua encomenda o mais rápido possível!"