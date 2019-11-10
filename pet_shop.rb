def pet_shop_name(shop_name)
  shop_name[:name]
end

def total_cash(shop_name)
  shop_name[:admin][:total_cash]
end

def add_or_remove_cash(shop, amount)
  cash = shop[:admin][:total_cash]
  shop[:admin][:total_cash] = cash + amount
end

def pets_sold(sold_amount)
  sold_amount[:admin][:pets_sold]
end
