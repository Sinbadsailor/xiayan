
import numpy as np
a = np.array([[1.0,2.0],[3.0,4.0]])
b = np.array([[5.0,6.0],[7.0,8.0]])

sum = a + b
difference = a - b
product = a * b
quotient = a / b

matrix_product = a.dot(b)

print("sum=\n",sum)
print("difference=\n",difference)
print("product=\n",product)
print("quotient=\n",quotient)

print("matrix_product =\n",matrix_product)
