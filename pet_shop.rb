def pet_shop_name(shop_name)
  shop_name[:name]
end

def total_cash(shop_name)
  shop_name[:admin][:total_cash]
end

def add_or_remove_cash(shop, amount)
  return shop[:admin][:total_cash] += amount
end

def pets_sold(sold_amount)
  sold_amount[:admin][:pets_sold]
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
