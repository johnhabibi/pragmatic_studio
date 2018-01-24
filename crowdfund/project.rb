class Project

  attr_accessor :name
  attr_reader :funding, :target

  def initialize(name, target_funding_amount, funding=0)
    @name = name
    @target = target_funding_amount
    @funding = funding
  end

  def to_s
    "#{@name} has $#{@funding} in funding towards a goal of $#{@target}."
  end

  def remove_funds
    @funding -= 15
    puts "#{@name} lost some funds!"
  end

  def add_funds
    @funding += 25
    puts "#{@name} got more funds!"
  end

  def total_funding_outstanding
    @target - @funding
  end

end
