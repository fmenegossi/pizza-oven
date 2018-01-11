class Oven
	attr_accessor :max_pizzas, :pizzas_in

	def initialize(max_pizzas = 3)
		@max_pizzas = max_pizzas
		@pizzas_in = []
	end

	def has_place_for_pizza?
		@pizzas_in.size < @max_pizzas
	end

	def put_pizza_in(pizza)
		if has_place_for_pizza?
			puts "Putting the #{pizza.name} pizza in the oven!"
			@pizzas_in.push(pizza)
			return true
		else
			puts "The oven is full! Remove some pizza before putting another one!"
			return false
		end
	end

	def check_on_pizzas
		removed = 0

		@pizzas_in.each do |pizza|
			if pizza.done?
				remove_pizza_from(pizza)
				removed += 1
			else
				pizza.bake(1)
			end
		end

		return removed
	end

	def remove_pizza_from(pizza)
		if pizza.time_baking == pizza.time_to_bake
			puts "Pizza #{pizza.name} is done! Removing from the oven."
			@pizzas_in.delete(pizza)
		end
	end
end
