/* Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:

Equilateral: It's a triangle with  sides of equal length.
Isosceles: It's a triangle with  sides of equal length.
Scalene: It's a triangle with  sides of differing lengths.
Not A Triangle: The given values of A, B, and C don't form a triangle. */

select case
when a + b > c then 
    case
    when a = b and b = c then 'Equilateral'
    when (a = b and b != c) or (a != b and b = c) or (a = c and b != c) then 'Isosceles'
    else 'Scalene' 
    end
else 'Not A Triangle'
end
from triangles;
