class Array 
  def my_each
    for i in (0..self.length - 1)
      yield(self[i])
    end
  end
end

[1, 2, 3, 4].my_each { |e| puts e } # => 

