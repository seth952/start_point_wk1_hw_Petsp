
#I know all arguement names below could be alot #better.
def pet_shop_name(petshop)
  return petshop[:name]
end

def total_cash(amount)
  return amount[:admin][:total_cash]
end

def add_or_remove_cash(sum, amount)
  return sum[:admin][:total_cash] += amount
end

def add_or_remove_cash__remove(sum, amount)
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

#i know i should delete old code just wanted to show
# my logic
# def customer_can_afford_pet(customer, newpet)
#    if customer[:cash] == newpet[:price]
#
# end
#      return true
# end
#etc
#Refractored version bellow
def customer_can_afford_pet(customer, newpet)
     return customer[:cash] >= newpet[:price]

  end

  #i know below is incorrect but gave it a shot.

def sell_pet_to_customer(petshop, pet, customer)
    add_pet_to_customer(customer, pet)
    remove_pet_by_name(petshop, pet)
    increase_pets_sold(petshop, 1)
    remove_customer_cash(customer, 900)
    add_or_remove_cash(petshop,900)

  end
  #i know i should delete old code just wanted to show
  # my logic

  # def sell_pet_to_customer(petshop, pet, customer)
  #   if stock_count(petshop) == true add_pet_to_customer(customer, pet)
  #     if find_pet_by_name(petshop, pet) == true
  #       remove_pet_by_name(petshop, pet)
  #       if pets_sold(petshop) == true increase_pets_sold(petshop, 1)
  #         if customer_cash(customer) == true
  #           remove_customer_cash(customer, 900)
  #           add_or_remove_cash(petshop, 900)
  #         end
  #       end
  #     end
  #   end
  # end
