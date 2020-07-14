def find_item_by_name_in_collection(name, collection)
  result = {}
  collection.each do |hash|
    hash.each do |key, value|
      if value == name
        result = hash
        return result
      end 
    end 
  end  
  if result = {}
    nil
  end 
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.

  result = []
  counter = 0 

  while counter < cart.size do 
    hash = cart[counter]
    food = hash[:item]

    if find_item_by_name_in_collection(food, result) == nil
      hash[:count] = 1 
      result.push(hash)
    else 
      hash[:count] += 1 
    end 

    counter += 1 
  end 
  result 
end


  