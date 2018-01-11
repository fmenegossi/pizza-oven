require_relative "oven.rb"
require_relative "pizza.rb"

@pizzas_done = 0
@pizzas_maked = []
@count = 0

oven1 = Oven.new
oven2 = Oven.new

while @pizzas_done < 30 do
	if @pizzas_maked.size < 30
		pizza = Pizza.new("Pizza #{@count + 1}")
		@pizzas_maked.push(pizza)
		@count += 1
	end

	if @pizzas_maked.size > 0
		if oven1.has_place_for_pizza?
			oven1.put_pizza_in(@pizzas_maked.shift)
		elsif oven2.has_place_for_pizza?
			oven2.put_pizza_in(@pizzas_maked.shift)
		else
			puts "No place for pizzas yet! Let's wait..."
		end
	end

	@pizzas_done += oven1.check_on_pizzas
	@pizzas_done += oven2.check_on_pizzas

	sleep(1)
end
