require 'pry'


def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs

  collection.each do |item|
    if item[:item] == name
      return item
    end
  end
  nil
end

# binding.pry

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  new_cart = []
  # enumurate through cart (array of hashes)
  cart.each do |grocery|
    current_grocery = find_item_by_name_in_collection(grocery[:item], new_cart)
    if current_grocery
      new_cart.each do |new_cart_grocery|
        if new_cart_grocery == current_grocery[:item]
          new_cart_grocery[:count] += 1
        end
      end
    else
      grocery[:count] = 1
      new_cart << grocery
    end
  end
  new_cart
end
