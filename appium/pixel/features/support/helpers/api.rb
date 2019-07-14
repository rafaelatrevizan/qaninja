require "httparty"

class PixelApi
  include HTTParty
  base_uri "https://ninjapixel-api.herokuapp.com"

  def get_user(email)
    self.class.get("/users/#{email}")
  end

  def get_cart(user_id)
    self.class.get("/cart/#{user_id}")
  end

  def delete_item(item_id)
    self.class.delete("/cart/#{item_id}")
  end

  def remove_my_cart(email)
    user = get_user(email)
    user_id = user.parsed_response["objectId"]
    cart = get_cart(user_id)
    cart_list = cart.parsed_response["results"]
    #Esse aqui deletava só o primeiro
    #delete_cart(cart_list.first["objectId"]) if cart_list.size > 0

    #Esse aqui deleta o carrinho inteiro
    cart_list.each {|item| delete_item(item["objectId"])}
  end
end
