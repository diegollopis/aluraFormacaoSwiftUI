//
//  MocksDataSource.swift
//  ChefDelivery
//
//  Created by Diego Janjardi Briz Llopis on 28/06/23.
//

import Foundation

let orderTypeMock: [OrderType] = [
    .init(id: 1, image: "hamburguer", title: "Restaurantes"),
    .init(id: 2, image: "descontos", title: "Descontos"),
    .init(id: 3, image: "mercado", title: "Mercados"),
    .init(id: 4, image: "bebidas", title: "Bebidas"),
    .init(id: 5, image: "farmacia", title: "Farmácia"),
    .init(id: 6, image: "gourmet", title: "Gourmet"),
    .init(id: 7, image: "petshop", title: "Pet"),
]

let bannerMock: [BannerType] = [
    .init(id: 1, image: "barbecue-banner"),
    .init(id: 2, image: "brazilian-meal-banner"),
    .init(id: 3, image: "pokes-banner"),
]

let storeMock: [Store] = [
    .init(
        logo: "acai-panda-logo",
        name: "Açaí",
        imageHeader: "acai-panda-header",
        address: Address(street: "Rua Chico Butico, 69", city: "São Paulo", state: "SP"),
        stars: 5,
        distance: 20.0,
        products: [
            Product(
                name: "Smoothie de banana e chocolate",
                ingredients: "Sorvete de creme batido com gelo, banana e pedaços de chocolate amargo",
                price: 18.45,
                image: "banana_cocoa_smoothie"),
            Product(
                name: "Açaí grande",
                ingredients: "Açaí servido em tigela de 500ml, recoberto com leite ninho e morango picado",
                price: 23.99,
                image: "large_acai"),
            Product(
                name: "Açaí médio",
                ingredients: "Açaí servido em copo de 400ml, recoberto com deliciosos pedaços de abacaxi",
                price: 20.50,
                image: "medium_acai"),
            Product(
                name: "Acaí pequeno",
                ingredients: "Açaí puro servido em copo de 300, com uma cobertura a sua escolha",
                price: 16.80,
                image: "small_acai"),
            Product(
                name: "Smothie de morango",
                ingredients: "Sorvete de creme batido com gelo e morango",
                price: 18.45,
                image: "strawberry_smoothie"),
        ]
    ),
    
    .init(
        logo: "bakery-logo",
        name: "Padaria",
        imageHeader: "bakery-header",
        address: Address(street: "Rua das Flores, 123", city: "Curitiba", state: "PR"),
        stars: 5,
        distance: 21.8,
        products: [
            Product(
                name: "Croissant 2 queijos",
                ingredients: "Massa folhada recheada com um blend de queijos mussarela e gorgonzola",
                price: 7.00,
                image: "croissant"),
            Product(
                name: "Café espresso pequeno",
                ingredients: "Café forte servido em xícara de 50ml",
                price: 4.99,
                image: "coffee"),
            Product(
                name: "Pão doce",
                ingredients: "Pão recoberto com açúcar refinado e recheio de creme",
                price: 8.99,
                image: "sweet_bread"),
            Product(
                name: "Pão francês",
                ingredients: "Melhor pão francês da cidade",
                price: 10.99,
                image: "french_bread"),
            Product(
                name: "Fatia de bolo de chocolate",
                ingredients: "Chocolate amargo, chantilly e cobertura de granulado",
                price: 12.99,
                image: "chocolate_cake_slice"),
        ]
    ),

    .init(
        logo: "carbron-logo",
        name: "Carbron",
        imageHeader: "carbron-header",
        address: Address(street: "Rua do Planalto, 328", city: "Brasília", state: "DF"),
        stars: 5,
        distance: 19.9,
        products: [
            Product(
                name: "Fraldinha",
                ingredients: "Corte nobre de fraldinha bovina",
                price: 85.00,
                image: "fraldinha"),
            Product(
                name: "Maminha",
                ingredients: "Maminha com crosta crocante, assada diretamente na churrasqueira",
                price: 90.00,
                image: "maminha"),
            Product(
                name: "Espetinho de churrasco",
                ingredients: "Coração de galinha intercalados com pedaços de pimentão verde",
                price: 12.99,
                image: "mixed_grill"),
            Product(
                name: "Picanha",
                ingredients: "Corte nobre de picanha bovina",
                price: 102.00,
                image: "picanha"),
            Product(
                name: "Costela suína",
                ingredients: "Corte nobre de carne suína",
                price: 98.00,
                image: "ribs"),
        ]
    ),

    .init(
        logo: "monstro-burger-logo",
        name: "Monstro Burguer",
        imageHeader: "monstro-burger-header",
        address: Address(street: "Rua Francisco, 226", city: "Mogi das Cruzes", state: "SP"),
        stars: 4,
        distance: 24.3,
        products: [
            Product(
                name: "Hamburger Clássico",
                ingredients: "Hamburguer de carne com queijo, alface e tomate",
                price: 14.99,
                image: "classic_burger"),
            Product(
                name: "Hamburger com Bacon",
                ingredients: "Hamburguer de carne com queijo, bacon crocante, alface e tomate",
                price: 16.99,
                image: "bacon_burger"),
            Product(
                name: "Porção de batata frita",
                ingredients: "Batatas cortadas com precisão e fritas com óleo quente",
                price: 23.99,
                image: "fries"),
            Product(
                name: "Soda gelada",
                ingredients: "Soda incrivelmente gelada",
                price: 4.99,
                image: "soda"),
            Product(
                name: "Sorvete de creme",
                ingredients: "Sorvete de massa de creme",
                price: 9.99,
                image: "vanilla_ice_cream"),
        ]
    ),

    .init(
        logo: "food-court-logo",
        name: "Food Court",
        imageHeader: "food-court-header",
        address: Address(street: "Rua dos Índios, 30", city: "Manaus", state: "AM"),
        stars: 2,
        distance: 3.5,
        products: [
            Product(
                name: "Pizza 4 queijos",
                ingredients: "Blend de queijos mussarela, parmesão, gorgonzola e catupiry",
                price: 45.00,
                image: "four_cheeses_pizza"),
            Product(
                name: "Espaguete carbonara",
                ingredients: "Espaguete regado ao molho de tomate natural",
                price: 108.20,
                image: "spaghetti_carbonara"),
            Product(
                name: "Lasanha de frango",
                ingredients: "Frango desfiado, catupiry, mussarela e molho de tomate",
                price: 99.90,
                image: "lasagna"),
            Product(
                name: "Pizza de pepperoni",
                ingredients: "Pepperoni de alta qualidade, mussarela e catupiry",
                price: 55.00,
                image: "pepperoni_pizza"),
        ]
    ),
]
