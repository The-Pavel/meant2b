require 'audite'

player = Audite.new

player.events.on(:complete) do
  puts "COMPLETE"
end

player.events.on(:position_change) do |pos|
  puts "POSITION: #{pos} seconds  level #{player.level}"
end

player.load('test.mp3')
player.start_stream
player.forward(20)
player.thread.join
