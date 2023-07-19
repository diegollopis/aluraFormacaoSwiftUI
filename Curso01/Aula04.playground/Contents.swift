import UIKit

//Desafio 1 - Função com opcional
//Crie uma função que receba um parâmetro que representa o nome de uma pessoa. Esse parâmetro é um **opcional**, ou seja, ele pode conter um valor ou ser nulo.
//Faça o tratamento correto dessa opcional:
//Caso seja nulo, exiba no console “Nome não especificado”;
//Caso contenha algum valor, exiba no console esse valor.
private func verifyName(_ name: String?) {
    if let name = name {
        print(name)
    } else {
        print("Nome não especificado!")
    }
}
verifyName("Enrico")
verifyName(nil)


//Desafio 2 - Indo ao restaurante
//Imagine que você foi ao restaurante com um quantidade “n” de amigos e gastaram ao total um valor x. Faça um programa que contenha uma função que calcule quanto cada pessoa deva pagar.
//A função deve receber dois parâmetros: o valor total da conta e o número total de pessoas que irão dividir a conta;
//Não se esqueça dos 10% do garçom! Faça o cálculo em cima do valor total;
//Retorne quanto cada pessoa deve pagar e exiba esse valor no console, fora da função.
//Exemplo: a conta total deu R$120,00 e foram 4 pessoas no total. Calculando 10% em cima de R$120,00, o valor final ficará R$132,00. Dividindo esse valor por 4, cada pessoa deve pagar um total de R$33,00.
private func splitBill(of value: Double, by people: Int) -> Double {
    let total = 1.1 * value
    let forEach = total / Double(people)
    return forEach
}

print("Valor por pessoa: \(splitBill(of: 120, by: 4))")
