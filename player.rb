class Player

  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def won
    puts "#{@name}: You are correct! Way to go!"
  end

  def lost
    puts "#{@name}: Sorry, that's incorrect."
    @lives -= 1
  end


end
