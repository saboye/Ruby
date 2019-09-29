def add(a,b)
  a + b
end

def subtract(a, b)
  a - b
end

def mutiply(a, b)
  a * b
end

def divison(a,b)
  a / b
end

def calculator(a, b, operation = "add")
  if operation == "add"
    add(a, b)
  elsif operation == "subtract"
    subtract(a,b)
  elsif operation == "divison"
    divison(a,b)
  elsif operation == "mutiply"
    mutiply(a, b)
  else
    "That is not the right operation"
  end
end

puts calculator(4, 5, "add")
puts calculator(5,6,"subtract")
puts calculator(5,6,"mutiply")
puts calculator(6,6,"divison")
