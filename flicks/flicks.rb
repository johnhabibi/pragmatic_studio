require_relative 'movie'
require_relative 'playlist'

movie1 = Movie.new('Goonies', 10)
movie2 = Movie.new('Ghostbusters', 5)
movie3 = Movie.new('Goldfinger')

playlist = Playlist.new('Kermit')
playlist.load(ARGV.shift || 'movies.csv')

loop do
  puts "\nHow many viewings? ('quit' to exit)"
  answer = gets.chomp.downcase
  case answer
  when /^\d+$/
    playlist.play(answer.to_i)
  when 'quit', 'exit', 'q'
    playlist.print_stats
    break
  else
    puts "Please enter a number or 'quit'"
  end
end

playlist.save
