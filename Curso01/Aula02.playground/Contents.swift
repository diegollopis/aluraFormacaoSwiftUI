import UIKit

// Desafio 1 - Pontuação do usuário
//Este desafio é composto por duas partes:
//
//Crie uma constante que armazene uma pergunta “Qual o valor de 8 x 2?” no formato String. A seguir, crie uma constante que armazene a resposta correta e uma constante que armazene a resposta do usuário;
//Além disso, crie uma variável do tipo inteiro que armazena a pontuação do usuário. Caso a resposta do usuário for igual a resposta correta, acrescente em 1 o valor da pontuação. Caso não for igual, diminua em 1 a pontuação. No final, imprima a pontuação do usuário.

enum Answer: String {
    case correct = "Resposta CORRETA!"
    case incorrect = "Resposta INCORRETA!"
}

let userAnswer = 16

private func makeQuestion(with answer: Int) {
    let question = "Qual o valor de 8 x 2?\n"
    let correctAnswer = 16

    print(question)
    print("Você respondeu ----> \(userAnswer)\n")

    userAnswer == correctAnswer
    ? print(Answer.correct.rawValue)
    : print(Answer.incorrect.rawValue)
}

makeQuestion(with: userAnswer)


// Desafio 2 - Idade do usuário
//Em um aplicativo da vida real, às vezes é necessário verificar a idade do usuário para permitir um serviço. Vamos simular essa situação e praticar nosso código Swift:
//
//Crie uma constante que armazene a sua idade;
//Escreva uma condicional que verifique se a sua idade está entre 0 e 13;
//Caso esteja, mostre “Criança” na tela. Caso o valor esteja entre 13 e 18, mostre “Adolescente”;
//Por fim, caso seja maior que 18, mostre “Adulto”.

let age = 13

enum Person: String {
    case child = "Criança"
    case teenager = "Adolescente"
    case adult = "Adulto"
}

private func verifyPerson(with age: Int) {
    switch age {
    case 0..<13:
        print(Person.child.rawValue)
    case 13...18:
        print(Person.teenager.rawValue)
    case 19...100:
        print(Person.adult.rawValue)
    default:
        print("Idade é inválida!")
    }
}

verifyPerson(with: age)

//Desafio 3 - Operadores lógicos e relacionais
//Faça um programa que controle a entrada de pessoas em uma festa. Siga os requisitos abaixo:
//
//Crie uma variável que armazene a idade da pessoa;
//Crie uma variável que armazene se a pessoa está com o RG em mãos;
//Caso ela tenha idade superior ou igual a 18 e esteja com o RG em mãos, ela pode entrar na festa (exiba no console “Pode entrar”). Caso contrário, não pode entrar (exiba no console “Não pode entrar”).

let idade = 15
let temRg = true

private func verifyGuest(idade: Int, temRg: Bool) {
    if idade >= 18 && temRg {
        print("Pode entrar!")
        return
    }

    print("Não pode entrar!")
}

verifyGuest(idade: idade, temRg: temRg)













