//
//  Coffee.swift
//  CodeStarterCamp_Week3
//
//  Created by ChoiKwangWoo on 2023/06/02.
//

import Foundation


/*
 2. CoffeeShop 타입을 생성합니다.
  - 카페들이 공통적으로 가지는 특성을 프로퍼티로 정의해봅시다.
    매출액을 속성으로 가질 수 있도록 해봅시다.
  - 메뉴판(커피 종류, 가격)을 가질 수 있도록 해봅시다.
    pickUpTable 을 가질 수 있도록 해봅시다.
    pickUpTable은 Coffee를 담을 수 있는 배열입니다.
  - 카페들이 공통적으로 할 수 있는 동작을 메서드로 정의해봅시다.
    주문을 받고, 커피를 만들어낼 수 있는 동작을 가질 수 있도록 해봅시다.
    커피를 만들면 pickUpTable 에 할당할 수 있도록 해봅시다.
 */
class CoffeeShop {
    private var coffeeShopName: String
    private var totalSales: Int
    private var coffeeMenu: [String: String]
    private var pickUpTable: [Coffee]
    private var barista: Person
    
    init(coffeeShopName: String, totalSales: Int, coffeeMenu: [String : String], pickUpTable: [Coffee], barista: Person) {
        self.coffeeShopName = coffeeShopName
        self.totalSales = totalSales
        self.coffeeMenu = coffeeMenu
        self.pickUpTable = pickUpTable
        self.barista = barista
    }
    
    func make(coffee: Coffee, for name: String) {
        self.pickUpTable.append(coffee)
        print("\(name) 님이 주문하신 \(coffee.name)(이/가) 준비되었습니다. 픽업대에서 가져가주세요.")
        self.totalSales += coffee.price
    }
    
    func change(barista: Person) {
        print("바리스타가 \(self.barista.name)님의 퇴사로 \(barista.name)님으로 변경되었습니다.")
        self.barista = barista
    }
    
    func getCoffeeMenus() -> [String: String] {
        return self.coffeeMenu
    }
    
    func showPickUpTable() {
        print("----주문한 커피 목록입니다!----")
        for coffee in self.pickUpTable {
            print(coffee.name)
        }
        print("-------------------------")
    }
    
    func showTotalSale() {
        print("현재 매출액 : \(self.totalSales)")
    }
}
