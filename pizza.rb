class Pizza
	attr_accessor :name, :time_to_bake, :time_baking, :oven_in

	def initialize(name, time_to_bake = 12)
		@name = name
		@time_to_bake = time_to_bake
		@time_baking = 0
	end

	def set_oven(oven)
		if @oven_in == nil
			@oven_in = oven
		else
			puts "This pizza is already in the oven!"
		end
	end

	def rem_oven
		if @oven_in != nil
			@oven_in = nil
		else
			puts "This pizza is already out of the oven!"
		end
	end

	def done?
		return @time_baking >= @time_to_bake
	end

	def bake(minutes)
		@time_baking += minutes
	end
end
