
# - Get petshop name
def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

# - Get and calculate total cash
def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

# - add or remove cash
def add_or_remove_cash(pet_shop,cash)
  pet_shop[:admin][:total_cash] += cash
  return total_cash(pet_shop)
end

# - get number of pets sold
def pets_sold(pet_shop)
  pet_shop[:admin][:pets_sold]
end

# - increase the number of pets sold
def increase_pets_sold(pet_shop,pets)
  pet_shop[:admin][:pets_sold] += pets
  return pets_sold(pet_shop)
end

# - get stock count
def stock_count(pet_shop)
  return pet_shop[:pets].count
end

# get count of breed of pet
def pets_by_breed(pet_shop,breed)
  breeds = []
  pets_array = pet_shop[:pets]
  for pet in pets_array
    if pet[:breed] == breed
      breeds.push(breed) 
    end
  end
    # need to return an array of breeds
    return breeds
  end

# get pet by name
def find_pet_by_name(pet_shop,name)
  pets_array = pet_shop[:pets]
  for pet in pets_array
    if pet[:name] == name
      return pet
    end
  end
  return nil
end

# remove pet by name
def remove_pet_by_name(pet_shop,name)
  pets_array = pet_shop[:pets]
  pet_to_remove = find_pet_by_name(pet_shop,name)
  pets_array.delete(pet_to_remove)
end

# add new pet
def add_pet_to_stock(pet_shop,new_pet)
  pets_array = pet_shop[:pets]
  pets_array.push(new_pet)
end

# get customer pet count
def customer_pet_count(customers)
  return customers[:pets].count
end

# add pet to customer
def add_pet_to_customer(customer,new_pet)
 return customer[:pets].push(new_pet)
end

# check is customer has enough money for new pet
def customer_can_afford_pet(customer,new_pet)
  return customer[:cash] > new_pet[:price]
end


def sell_pet_to_customer(pet_shop, pet, customer)
# check is customer has enough money and pet exists?
  if pet != nil && customer_can_afford_pet(customer,pet)
    price = pet[:price]
    # remove money from customer
    customer[:cash] -= price
    # add pet to customer 1
    add_pet_to_customer(customer,pet)
    # increase pets sold by 1
    increase_pets_sold(pet_shop,1)
    # add pet value to total cash of pet shop
    add_or_remove_cash(pet_shop,price)
  end
end






