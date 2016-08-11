class Cat

  def initialize (name,prefered_food, meal_time)
    @name = name
    @prefered_food = prefered_food
    @meal_time = meal_time
  end


  def eats_at
    if @meal_time < 12
    return "#{@meal_time}AM"
  else
    return "#{@meal_time - 12}PM"
    end
  end

  def meow
    puts "My Name is #{@name}, I eat #{@prefered_food} at #{eats_at}"
  end

end

cat1 = Cat.new("Catone", "cat_food", 13)
cat2 = Cat.new("Cat_two", "cat_food", 14)

cat1.meow
cat2.meow
