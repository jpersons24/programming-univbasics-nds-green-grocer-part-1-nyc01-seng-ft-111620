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

  new_cart = []
  counter = 0
  while counter < cart.length
    # call find_item_by_name_in_collection
    # item to check for: cart[counter][:item]
    # collection to check in: new_cart
    # return: value at key :item OR nil
    new_cart_item = find_item_by_name_in_collection(cart[counter][:item], new_cart)
      # if new_cart_item has a truthy value
      # increase new_cart_item at key :count by 1
      if new_cart_item
        new_cart_item[:count] += 1
      else
        # create this item hash
        new_cart_item = {
          :item => cart[counter][:item],
          :price => cart[counter][:price],
          :clearance => cart[counter][:clearance],
          :count => 1
        }
        # add new_cart_item to new_cart
        new_cart << new_cart_item
      end
    # increase counter to go through every item within cart
    counter += 1
  end
  new_cart
end

# return: [{:item => "Avacado", :price => 3.00, :clearance => true, :count => 3}]
# item: {:item => "Avacado", :price => 3.00, :clearance => true, :count => 3}
