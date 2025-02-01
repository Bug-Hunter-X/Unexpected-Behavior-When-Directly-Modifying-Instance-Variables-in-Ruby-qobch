```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def value
    @value
  end
end

my_object = MyClass.new(10)
puts my_object.value #=> 10

my_object.instance_variable_set(:@value, 20) 
puts my_object.value #=> 20

# However, if you try to modify the value directly,
# you might encounter unexpected behavior depending on the context.

#Example of unexpected behavior: 
# If the @value is a mutable object (such as an array):

class MyClass
  def initialize(value)
    @value = value
  end

  def value
    @value
  end

  def modify_value
    @value << 1 # Modifies the array in place
  end
end

my_array = [1,2,3]
my_object = MyClass.new(my_array)
puts my_object.value #=> [1,2,3]
my_object.modify_value
puts my_object.value #=> [1,2,3,1]
# The value is modified outside the getter/setter methods
```