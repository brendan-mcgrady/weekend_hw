def pet_shop_name(shop_name)
  return shop_name[:name]
end

def total_cash(shop_name)
  return shop_name[:admin][:total_cash]
end

def add_or_remove_cash(shop, amount)
  return shop[:admin][:total_cash] += amount
end

def pets_sold(sold_amount)
  return sold_amount[:admin][:pets_sold]
end

def increase_pets_sold(pets_sold, amount)
  return pets_sold[:admin][:pets_sold] += amount
end

def stock_count(stock_total)
  return stock_total[:pets].count()
end

# Struggle zone

def pets_by_breed(pet_shop, breed)
  breeds = []
  for pet in pet_shop[:pets]
    if pet[:breed] == breed
      breeds.push(pet)
    end
  end
  breeds
end

def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if pet[:name] == name
      pet.delete(:name)
    end
  end
end

def add_pet_to_stock(pet_shop, new_pet)
  return pet_shop[:pets].push(new_pet)
end

def customer_cash(cust_cash)
  return cust_cash[:cash]
end

def remove_customer_cash(customer, deduction)
  return customer[:cash] -= deduction
end

def customer_pet_count(pet_count)
  return pet_count[:pets].count()
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end

def customer_can_afford_pet(customer, new_pet)
  if new_pet[:price] <= customer[:cash]
    return true
  else
    return false
  end
end
