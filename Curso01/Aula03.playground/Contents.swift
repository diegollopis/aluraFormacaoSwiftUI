import UIKit

//Agora que você já aprendeu sobre os laços de repetição e intervalos de valores, o seu desafio é desenvolver um código que vá do número 1 até o número 10, imprimindo no console apenas os números pares desse intervalo, ou seja, será imprimido apenas os valores 2, 4, 6, 8, e 10.

var numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

let result = numbers.filter { $0 % 2 == 0 }

print(result)

for number in numbers {
    if number % 2 == 0 {
        print(number, terminator: " ")
    }
}

print()

numbers.forEach { num in
    if num % 2 == 0 {
        print(num, terminator: " ")
    }
}

print()

var i = 1
while i <= 10 {
    if i % 2 == 0 {
        print(i, terminator: " ")
    }
    i += 1
}
