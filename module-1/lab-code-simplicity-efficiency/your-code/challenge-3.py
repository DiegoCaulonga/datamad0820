"""
You are presented with an integer number larger than 5. Your goal is to identify the longest side
possible in a right triangle whose sides are not longer than the number you are given.

For example, if you are given the number 15, there are 3 possibilities to compose right triangles:

1. [3, 4, 5]
2. [6, 8, 10]
3. [5, 12, 13]

The following function shows one way to solve the problem but the code is not ideal or efficient.
Refactor the code based on what you have learned about code simplicity and efficiency.
"""
def challenge3(x):
    solution = []
    [solution.append([x,y,z]) for x in range(5,x) for y in range(x) for z in range(x) if x**2==y**2+z**2]
    result = max(solution)[0]
    return result
    

   """Lo que he hecho en esta función, ha sido simplemente introducir todos los requerimientos de for en un comprehension list, para que fuera mas sencillo y visual. Después, simplemente he ordenado un retorno de solución mas simple, pidiendo que se me devolviera el número mas alto, dentro de las "x" que se encuentren en todas las listas que me devolviera dicha comprehension list."""




x = input("What is the maximal length of the triangle side? Enter a number: ")

print("The longest side possible is " + str(my_function(int(x))))
