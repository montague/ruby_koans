# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a,b,c)
  raise TriangleError unless is_valid_triangle?(a,b,c)
  h = [a]
  h << b unless h.include?(b)
  h << c unless h.include?(c)
  return :equilateral if h.length == 1
  return :isosceles if h.length == 2
  :scalene
end

def is_valid_triangle?(*a)
  if ((a[0] + a[1]) <= a[2]) || ((a[1]+a[2]) <= a[0]) || ((a[0]+a[2]) <= a[1])
    return false
  end
  a.each {|i| return false if i <= 0} 
  true
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
