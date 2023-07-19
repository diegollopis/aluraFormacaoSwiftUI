import UIKit

//Desafio 1 - Aprovado ou reprovado?
//Pense em um aplicativo que faz o cálculo da média de notas de alunos de uma turma! Ainda não podemos produzir um aplicativo, mas vamos usar essa situação para praticar um pouco:
//
//Escreva uma função que receba um array de notas de um determinado aluno e retorne a média aritmética dessas notas.
//Lembrando que, para calcular a média aritmética, você precisa somar todos os valores e dividir pela quantidade total dos valores. Logo, se um aluno possui cinco notas, encontraremos a média somando o total dessas notas por cinco.

let notas = [8.5, 8,9, 10, 4.5, 7.5]

private func calculaMedia(de notas: [Double]) {
    let media = notas.reduce(0, +) / Double(notas.count)
    print(media.rounded())
}

calculaMedia(de: notas)


//Desafio 2 - Estados do Brasil
//Dado um dicionário com duas letras que representam um estado como chave e o nome inteiro do estado como valor, escreva uma função que exiba todos os estados cujo nome tenha mais que 8 caracteres.
//
//Por exemplo, para o dicionário [”SP”: “São Paulo”, “CE”: “Ceará”, “RJ”: “Rio de Janeiro”], será exibido “São Paulo” e “Rio de Janeiro”, pois “Ceará” não possui mais de 8 caracteres.

let teste = ["SP": "São Paulo", "CE": "Ceará", "RJ": "Rio de Janeiro"]

for value in teste.values {
    if value.count > 8 {
        print(value)
    }
}

