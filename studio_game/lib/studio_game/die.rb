require_relative 'auditable'

module StudioGame
  class Die
    include Auditable

    attr_reader :number

    def roll
      @number = rand(1..6)
      audit
      @number
    end
  end
end

if $PROGRAM_NAME == __FILE__
  die = Die.new
  puts die.roll
  puts die.roll
  puts die.roll
end
