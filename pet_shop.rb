
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
