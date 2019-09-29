#calculate school grade

 def calculate_grade(grade)
   case grade
   when 90..100
     "A"
   when 80..89
     "B"
   when 70..79
     "C"
   when 60..69
     "D"
   else
     "F"
   end
 end

#refacorting the case statement

def calculate_grade(grade)
  case grade
  when 90...100 then "A"
  when 80..89  then "B"
  when 70..79  then "C"
  when 60..69  then "D"
  else "F"
  end
end


p calculate_grade(54)
p calculate_grade(94)
p calculate_grade(80)
p calculate_grade(100)


#Ethiopian food rating program
def rate_my_food(food)
  case food
  when "Shiro" then "It fasting food hahah!"
  when "Kitfo" then "Todays is Meskele"
  when "doro"  then "You must very important person!"
  when "genfo" then "Disgusting! Yuck!"
  else "I don't know about that food!"
  end
end
p rate_my_food("Kitfo")
p rate_my_food("genfo")
