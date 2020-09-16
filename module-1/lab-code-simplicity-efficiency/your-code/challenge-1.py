"""
This is a dumb calculator that can add and subtract whole numbers from zero to five.
When you run the code, you are prompted to enter two numbers (in the form of English
word instead of number) and the operator sign (also in the form of English word).
The code will perform the calculation and give the result if your input is what it
expects.

The code is very long and messy. Refactor it according to what you have learned about
code simplicity and efficiency.
"""

print('Welcome to this calculator!')
print('It can add and subtract whole numbers from zero to five')
a = input('Please choose your first number (zero to five): ')
b = input('What do you want to do? plus or minus: ')
c = input('Please choose your second number (zero to five): ')


def challenge1(a,b,c):
    list = ["zero","one","two","three","four","five","six","seven","eight","nine","ten"]
    if b == "+":
        return list[int(a)]+" "+ "plus" +" "+list[int(c)]+" equals " + list[int(a)+int(c)]
    elif b == "-" and int(a)-int(c) > 0:
        return list[int(a)]+" "+ "minus" +" "+list[int(c)]+" equals " + list[int(a)-int(c)]
    elif b == "-" and int(a)-int(c) < 0:
        return list[int(a)]+" "+ "minus" +" "+list[int(c)]+" equals negative " + list[int(c)-int(a)]


 """Lo que he hecho en la funcion ha sido crear una lista de strings en la que cada string equivale al nombre litarario del nÚmero de posicion que ocupa en la lista. Lo he hecho del 0 al 10 ya que son las posibilidades de resultado que cabian. Despues, he generado una serie de condiciones segun las operaciones que se requerian. La suma era una simple peticion de retornar el string con la suma de los integers que se introdujeran en a y c. En la primera resta igual, aunque debia especificar que era si el resultado era positivo. En la ultima, especificando que el resultado iba a ser negativo, debia ordenar a la funcion que la resta de los integers cambiara de orden, y que justo antes, en el string retornado, pusiera : negative."""
 

if (not a == 'zero' and not a == 'one' and not a == 'two' and not a == 'three' and not a == 'four' and not a == 'five') or (not c == 'zero' and not c == 'one' and not c == 'two' and not c == 'three' and not c == 'four' and not c == 'five') or (not b == 'plus' and not b == 'minus'):
    print("I am not able to answer this question. Check your input.")

print("Thanks for using this calculator, goodbye :)")
