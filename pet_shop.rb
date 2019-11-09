def pet_shop_name(petshop)
  return petshop[:name]
end

def total_cash(amount)
  return amount[:admin][:total_cash]
end

def add_or_remove_cash(sum, amount)
  return sum[:admin][:total_cash] += amount
end

def test_add_or_remove_cash__remove(sum, amount)
  return sum[:admin][:total_cash] -= amount
end

def pets_sold(petsold)
  return petsold[:admin][:pets_sold]
end

def increase_pets_sold(pets, addpets)
  return pets[:admin][:pets_sold] += addpets

end

def stock_count(value)
  return value[:pets].length
end

def pets_by_breed(animals, breed)
  total = []
  for pet in animals[:pets]
  if(pet[:breed] == breed)
    total << pet[:pets]
  end

end
return total
end

def pets_by_breed_nf(animals, breed)
  total = []
    for pet in animals[:pets]
    if(pet[:breed] == breed)
      total << pet[:pets]
    end

  end
  return total
  end


def find_pet_by_name(petshop, dogname)

  for name in petshop[:pets]
    if name[:name]== dogname
      return name

      end
    end
  end
def find_pet_by_name(petshop, dogname)

  for name in petshop[:pets]
    if name[:name]== dogname
      return name

end
  end
return nil
end


def remove_pet_by_name(petshop, petname)
  for pet in petshop[:pets]
    if pet[:name] == petname
      pet.shift()
    end
end
end


def add_pet_to_stock(petshop, newpet)
  petshop[:pets] << newpet
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, amount)
  return customer[:cash] -= amount
end

def customer_pet_count(customer)
  return customer[:pets].count

end

def add_pet_to_customer(customer, newpet)
  return customer[:pets] << newpet
    newpet.count
end

def customer_can_afford_pet(customer1, newpet)
   if customer1[:price] == newpet[:price]

end
     return true
end

def customer_can_afford_pet(customer2, newpet)
    if customer2[:price] != newpet[:price]

end
  return false
end


def customer_can_afford_pet(customer3, newpet)
   if customer3[:price] == newpet[:price]

end
return true
end
