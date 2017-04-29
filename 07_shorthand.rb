['foo', 'bar', 'baz'].map(&:upcase) # => 

['foo', 'bar', 'baz'].map { |element| element.upcase } # => 

upcaser = :upcase.to_proc
upcaser # => 

upcaser.call('foo') # => 
