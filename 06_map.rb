class Array 
  def my_map
    new_array = []

    self.each do |element|
      new_array << yield(element)
    end

    new_array
  end
end


[4, 6, 9, 14].my_map { |e| e * e } # => 

