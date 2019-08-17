//
//  Order.swift
//  homeWork11
//
//  Created by Pavel Procenko on 13/08/2019.
//  Copyright © 2019 Pavel Procenko. All rights reserved.
//

import Foundation

class Order {
    
     var typesOfCoffee: TypesOfCoffee?
     var sizesForCup: SizesForCup?
     var isOwnCup: Bool?
     var name: String?
 
     var sugar: Float?
    var bill: Double? {
        
        get {
            
         return getPriceFromTypesOfCoffee() + getPriceFromSizesForCup() + getPriceFromIsOwnCup() + getPriceFromLvlOfSugar()
        }
        
    }
    
    init(typesOfCoffee: TypesOfCoffee, sizesForCup: SizesForCup, isOwnCup: Bool, name: String, sugar: Float ) {
         
        self.isOwnCup = isOwnCup
        self.name = name
        self.sizesForCup = sizesForCup
        self.typesOfCoffee = typesOfCoffee
        self.sugar = sugar
        
    }
    
    init() {
        
    }
    
   private func getPriceFromTypesOfCoffee() -> Double {
    
    switch typesOfCoffee! {
        
    case .doppio, .expresso:
        return 3
    case .lungo, .romano:
        return 5
    default:
        break
        
    }
}
    
    private func getPriceFromSizesForCup() -> Double {
        
        switch sizesForCup! {
            
        case .first:
            return 1
        case .second:
            return 2
        case.three:
            return 3
        case .four,.five,.six:
            return 5
        default:
            break
            
        }
    }
    
    private func getPriceFromIsOwnCup() -> Double {
        
        switch isOwnCup {
            
        case true:
            return 1
        case false:
            return 0
        default:
            break
        }
        return 0
    }
    
    private func getPriceFromLvlOfSugar() -> Double{
        
        switch Int(sugar!) {
        case 0...25:
            return 0.3
        case 26...60:
            return 0.5
        case 61...100:
            return 0.6
        default:
            break
        }
        return 0
    }
    
}

