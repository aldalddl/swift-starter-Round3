//
//  main.swift
//  step1
//
//  Created by codenest on 2022/07/06.
//

import Foundation

class Person {
    var name: String
    var age: Int
    var money: Int
    func order(_ coffee: Coffee) -> Coffee {
        return coffee
    }
    init(name: String, age: Int, money: Int) {
        self.name = name
        self.age = age
        self.money = money
    }
}

class CoffeeShop {
    var shopName: String
    var sales: Int
    var barista: Person
    var menu: [Coffee: Int]
    var pickUpTable: [String]
    init(shopName: String, sales: Int, barista: Person, menu: [Coffee: Int], pickUpTable: [String]) {
        self.shopName = shopName
        self.sales = sales
        self.barista = barista
        self.menu = menu
        self.pickUpTable = pickUpTable
    }
    func make(_ coffee: Coffee, from name: String) {
        
    }
}

enum Coffee: String {
    case americano = "아메리카노"
    case caffeeLatte = "카페라떼"
    case cappuccino = "카푸치노"
    case decaf = "디카페인"
    case einspanner = "아인슈패너"
    case caramelMacchiato = "카라멜 마끼아또"
}

var misterLee: Person = Person(name: "Minsu Lee", age: 26, money: 10000)
var missKim: Person = Person(name: "Jisu Kim", age: 23, money: 10000)
var yagombucks: CoffeeShop = CoffeeShop(shopName: "yagombucks",
                                        sales: 0,
                                        barista: misterLee,
                                        menu: [Coffee.americano : 3500,
                                               Coffee.caffeeLatte : 4500,
                                               Coffee.cappuccino : 4000,
                                               Coffee.decaf : 4000,
                                               Coffee.einspanner : 5000,
                                               Coffee.caramelMacchiato : 5000],
                                        pickUpTable: [])
