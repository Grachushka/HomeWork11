//
//  DataBase.swift
//  homeWork11
//
//  Created by Pavel Procenko on 14/08/2019.
//  Copyright © 2019 Pavel Procenko. All rights reserved.
//

class DataBase {
    
    private init() {
        
    }
    
    static let sharedInstance: DataBase = DataBase()

    private let arrayOfNames = ["Николай", "Василий", "Виктор", "Валодя", "Альберд"]
    
    func getArrayOfNames() -> [String] {
        
        return arrayOfNames
    }
    
}


