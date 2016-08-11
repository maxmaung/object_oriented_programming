class Paperboy

  def initialize (name, side)
    @name = name
    @side = side
    @experience = 0
    @earnings = 0
  end
  #
  # def side
  #   i = (101...220)
  #   if i  = i%2 == 0
  #     return "even"
  #   else
  #     i = i%2 == 1
  #     return "odd"
  #   end
  # end

def quota
  return @experience/2 + 50
end

  def num_of_house_deliver (start, finish)
    even_total = 0
    odd_total = 0
    house_range = (start..finish)
    house_range.each do |house|
      if house%2 == 0
          even_total +=1
      elsif house%2 == 1
          odd_total +=1
      end
    end

    return even_total

 end


  def deliver (start_address, end_address)
    @experience = num_of_house_deliver( start_address, end_address)
  end

  def report
    return "I'm #{@name}, I've delivered #{@experience} papers and I've earned #{@earnings} so far!"
  end

end

tommy = Paperboy.new("Tommy", "even")
tommy.deliver(101,220)
puts tommy.report
