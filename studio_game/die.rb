class Die
  attr_reader :number

  def initialize
    roll
  end

  def roll
    @number = rand(1..6)
  end
end

if $PROGRAM_NAME == __FILE__
  die = Die.new
  puts die.roll
  puts die.roll
  puts die.roll
end
