class Router

  def initialize(meals_controller, customers_controller)
    @meals_controller = meals_controller
    @customers_controller = customers_controller
  end

  def run

    loop do
      option = print_options
      case option
      when 1 then @meals_controller.list
      when 2 then @meals_controller.add
      when 3 then @customers_controller.list
      when 4 then @customers_controller.add
      end
    end

  end

  def print_options
    puts "Choose an option"
    puts "1. List Meals"
    puts "2. Add Meal"
    puts "3. List Customers"
    puts "4. Add Customers"
    return gets.chomp.to_i
  end
end
