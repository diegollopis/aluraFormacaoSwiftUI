import UIKit
import Foundation

// Desafio proposta
//Crie uma “ficha” com as seguintes informações suas e mostre elas em um print:
//Inicial do nome;
//Nome;
//Apelido;
//Idade;
//Altura (por exemplo: 1,70cm);
//Se gosta ou não de x;

struct Person {
    let firstLetter: Character
    let name: String
    let nickName: String
    let age: Int
    let height: Double
    let likesSwift: Bool
    
    func printData() {
        print("Inicial do nome: \(firstLetter)")
        print("Nome: \(name)")
        print("Apelido: \(nickName.capitalized)")
        print("Idade: \(age)")
        print("Altura: \(height)")
        print("Gosta de swift: \(likesSwift)\n")
    }
}

let people: [Person] = [
    Person(firstLetter: "D", name: "Diego Llopis", nickName: "Dumbo", age: 37, height: 1.80, likesSwift: true),
    Person(firstLetter: "M", name: "Margarete Llopis", nickName: "Daisy", age: 36, height: 1.70, likesSwift: false),
    Person(firstLetter: "E", name: "Enrico Llopis", nickName: "Rico", age: 1, height: 1.00, likesSwift: true),
    Person(firstLetter: "E", name: "Enzo Berger", nickName: "Bolota", age: 6, height: 1.20, likesSwift: false)
]

people.forEach { $0.printData() }
