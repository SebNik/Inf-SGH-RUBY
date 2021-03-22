price = {"Schnitzel"=>20, "Döner"=>5, "Eierkuchen"=>12}

puts price

sum_price = 0
price.each_key do |name|
    sum_price+=price[name]
end
puts sum_price

price.each_value do |name|
    puts name
end