require 'pry'

def find_item_by_name_in_collection(name, collection)
  item_data = nil 
  collection.each do |data|
    if data[:item] == name
      item_data = data
    end 
  end 
  item_data
end

def consolidate_cart(cart)
  consolidated_cart = []
  cart.each do |item_data|
    item_in_cart = find_item_by_name_in_collection(item_data[:item], consolidated_cart)
    if item_in_cart == nil
      new_item = item_data
      new_item[:count]=1
      consolidated_cart << new_item
    else
      item_in_cart[:count]+=1
    end 
  end
  consolidated_cart
end

  