class Question

  attr_reader :prompt

  def initialize()
    @a = Random.new.rand(1..20)
    @b = Random.new.rand(1..20)
    @prompt = "What does #{@a} + #{@b} equal?"
  end

  def right?(answer)
    if (@a + @b == answer)
      true
    else
      false
    end
  end

end
