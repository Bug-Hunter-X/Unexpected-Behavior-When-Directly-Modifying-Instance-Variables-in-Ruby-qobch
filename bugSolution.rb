```ruby
class MyClass
  attr_accessor :value # Use attr_accessor for better encapsulation

  def initialize(value)
    @value = value
  end
end

my_object = MyClass.new(10)
puts my_object.value #=> 10

my_object.value = 20 # Use the setter method
puts my_object.value #=> 20

# Example with mutable array:
class MyClass
  attr_accessor :value

  def initialize(value)
    @value = value
  end

  def modify_value
    @value = @value + [1] # Use a new array instead of modifying in place
  end
end

my_array = [1,2,3]
my_object = MyClass.new(my_array)
puts my_object.value #=> [1,2,3]
my_object.modify_value
puts my_object.value #=> [1,2,3,1] 
#Modify via accessor methods, avoiding potential side effects of directly changing the array.
```