import UIKit

// Desafio 01 - Área

//Crie um protocolo chamado “Area” que define uma propriedade que pode apenas ser lida, e não setada, que corresponde a área de determinada figura, com o tipo Double. Essa propriedade é definida como uma propriedade computada, mas lembre-se que no protocolo não há diferenciação entre propriedades armazenadas ou computadas, você apenas define uma propriedade. E então, crie duas classes (ou structs) que implementem o protocolo Area: Quadrado e Triangulo. Implemente o cálculo da área de acordo com cada figura (cada classe precisa receber os parâmetros necessários para o cálculo) e por fim, imprima o valor de cada área no console.

protocol AreaContract {
    var area: Double { get }
}

struct Quadrado: AreaContract {
    let lado: Double
    
    var area: Double {
        lado * lado
    }
}

let quadrado: Quadrado = .init(lado: 40)
let areaQuadrado = quadrado.area
print("A área do quadrado é \(areaQuadrado)")

struct Triangulo: AreaContract {
    let base: Double
    let altura: Double
    
    var area: Double {
        (base * altura) / 2
    }
}

let triangulo = Triangulo(base: 50, altura: 12)
let areaTriangulo = triangulo.area
print("A área do triângulo é \(areaTriangulo)")


//Desafio 02 - Moedas

//Veja o código abaixo:
//
//enum Moeda: Int {
//  case UmCentavo = 1
//  case CincoCentavos = 5
//  case DezCentavos = 10
//  case VinteCincoCentavos = 25
//  case CinquentaCentavos = 50
//}
//
//let moedas: [Moeda] = [.CincoCentavos, .UmCentavo, .CincoCentavos, .VinteCincoCentavos, .CincoCentavos, .DezCentavos]

//De acordo com esse código, crie uma função que recebe como parâmetro um array do tipo “Moeda”. Faça a soma de todos os valores desse array segundo o raw value e retorne essa soma. No caso do exemplo acima, o que deve ser retornado da função é o valor 51, que é a soma de todas as moedas desse array declarado.

enum Moeda: Int {
  case UmCentavo = 1
  case CincoCentavos = 5
  case DezCentavos = 10
  case VinteCincoCentavos = 25
  case CinquentaCentavos = 50
}

let moedas: [Moeda] = [.CincoCentavos, .UmCentavo, .CincoCentavos, .VinteCincoCentavos, .CincoCentavos, .DezCentavos, .UmCentavo]

private func contaMoeda(do porquinho: [Moeda]) -> Int {
    var resultado = 0
    porquinho.map { resultado += $0.rawValue }
    return resultado
}

let resultado = contaMoeda(do: moedas)
print(resultado)

