class Fixnum
  define_method(:ping_pong) do
    ping_pong_array = []
    (self+1).times() do |number|
      ping_pong_array.push(number)
    end
    ping_pong_array.each_index() do |index|
      if index.==(0)
        ping_pong_array[index] = 0
      elsif (index).%(15).==(0)
        ping_pong_array[index] = 'pingpong'
      elsif (index).%(5).==(0)
        ping_pong_array[index] = 'pong'
      elsif (index).%(3).==(0)
        ping_pong_array[index] = 'ping'
      else
        ping_pong_array[index] = index
      end
    end
    ping_pong_array
  end
end
