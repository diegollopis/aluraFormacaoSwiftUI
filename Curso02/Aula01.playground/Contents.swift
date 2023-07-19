import UIKit

//Desafio 1 - Calculadora
//Vamos simular uma calculadora? Siga com atenção as dicas abaixo:
//Crie uma classe/struct (a seu critério) chamada “Calculadora” que possua dois diferentes números como atributos;
//A. Esses números podem ser inteiros ou decimais, à sua escolha, e precisam ser inicializados pelo construtor de acordo com o que foi recebido por parâmetro;
//Produza 4 métodos referentes às operações básicas de cálculo: soma, subtração, divisão e multiplicação;
//A. Esses métodos não recebem parâmetros, mas eles retornam um valor do tipo inteiro ou decimal (à sua escolha). Os métodos agem em cima das propriedades citadas anteriormente;
//Instancie essa classe/struct com os dois valores em questão e chame todos os métodos citados;
//Por fim, exiba no console o resultado de todas as operações.
struct Calculadora {
    
    let num1: Int
    let num2: Int
    
    func soma() {
        print("Soma = \(num1 + num2)")
    }
    
    func subtrai() {
        print("Subtração = \(num1 - num2)")
    }
    
    func multiplica() {
        print("Multiplicação = \(num1 * num2)")
    }
    
    func divide() {
        print("Divisão = \(num1 / num2)")
    }
}

let calculadora = Calculadora(num1: 30, num2: 21)
calculadora.soma()
calculadora.subtrai()
calculadora.multiplica()
calculadora.divide()

print()

//Desafio 2 - Restaurante
//Vamos praticar com um código que poderia compor um aplicativo de restaurante?
//Crie uma classe/struct chamada “Restaurante” que tenha os seguintes atributos:
//Nome;
//Tipo de comida;
//Número de pedidos (esse sempre será inicializado como 0 no construtor).
//E então, implemente o seguinte método:
//recebePedido() → esse método acrescenta em 1 o valor do atributo referente ao número de pedidos;
//calculaTotalPedidos() → supondo que cada pedido tenha um valor fixo de R$35,00, crie um método que calcule e retorne o valor total em pedidos.
class Restaurante {

    let nome: String
    let tipoDeComida: String
    var numeroDePedidos: Int
    
    init(nome: String, tipoDeComida: String) {
        self.nome = nome
        self.tipoDeComida = tipoDeComida
        self.numeroDePedidos = 0
    }
    
    func recebePedido() {
        numeroDePedidos += 1
    }
    
    func calculaTotalPedidos() {
        print("Foram \(numeroDePedidos) pedidos, totalizando R$ \(35 * self.numeroDePedidos)")
    }
}

let restaurant = Restaurante(nome: "San Pietro", tipoDeComida: "pizza")
restaurant.recebePedido()
restaurant.recebePedido()
restaurant.recebePedido()
restaurant.recebePedido()
restaurant.recebePedido()
restaurant.calculaTotalPedidos()

print()

//Desafio 3 - Retângulo
//Crie uma classe/struct chamada “Retângulo” que tenha os seguintes atributos:
//Base;
//Altura.
//E então, implemente os seguintes métodos:
//calcularArea() - retorna a área do retângulo, que é calculada por base multiplicado pela altura;
//calcularPerimetro() - retorna o perimêtro do retângulo, que é calculado pela soma de todos os lados.
struct Retangulo {
    
    let base: Double
    let altura: Double
    
    func calcularArea() {
        print("Área = \(base * altura)")
    }
    
    func calcularPerimetro() {
        print("Perímetro = \(2 * base + 2 * altura)")
    }
}

let retangulo = Retangulo(base: 5, altura: 10)

retangulo.calcularArea()
retangulo.calcularPerimetro()

