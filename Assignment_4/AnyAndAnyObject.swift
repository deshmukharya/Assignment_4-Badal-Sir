//
//  AnyAndAnyObject.swift
//  Assignment_4
//
//  Created by Arya Deshmukh on 22/05/24.
//

import Foundation

class Cloths {
    var typeOfCloths: String
    init(typeOfCloths: String) {
        self.typeOfCloths = typeOfCloths
    }
    
    func details(typeOfCloths: String){
        print("Types of cloths is \(typeOfCloths)")
    }
}
let cloths = Cloths(typeOfCloths: "Shirts")
var elements: [Any] = [34,"Color",67.90,cloths]

func  describeElements(elements: [Any]) {
    for item in elements {
        if item is Int {
            print("element is Int")
        }else if item is String {
            print("element is String")
        }else if item is Double{
            print("element is Double")
        }else {
            print("element is instance of class")
        }
    }
}

