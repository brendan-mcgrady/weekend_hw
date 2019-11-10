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

# def pets_by_breed(shop, breed)
#
#     for breed_name in shop[:pets]
#       if breed[:pets] == breed_name
#         return breed.to_i()
#       else
#         return false
#       end
#     end
# end
