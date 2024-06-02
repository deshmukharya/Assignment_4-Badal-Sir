//
//  TypeCheckAndCasting.swift
//  Assignment_4
//
//  Created by Arya Deshmukh on 22/05/24.
//

import Foundation

class Vehicle {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Car: Vehicle {
    var color: String
    init(name: String,color: String) {
        self.color = color
        super.init(name: name)
    }
    
    func printdetails(){
        print("Name of Car is \(name) and its color is \(color)")
    }
}

class Bike: Vehicle {
    var speed: String
    init(name: String,speed: String) {
        self.speed = speed
        super.init(name: name)
    }
    
    func describeSpeed(){
        print("Name of Bike is \(name) and its color is \(speed)")
    }
}


let car1 = Car(name: "Swift", color: "White")
let bike1 = Bike(name: "Yamaha", speed: "299 km/hr")
let car2 = Car(name: "BMW", color: "Blue")
let bike2 = Bike(name: "Honda", speed: "186 km/hr")

let vehicle : [Vehicle] = [car1,bike1,car2,bike2]

func describeVehicle(vehicle : [Vehicle]){
    for  item in vehicle {
        if item is Car {
          print("This vehicle is Car")
        }else if item is Bike {
            print("This vehicle Bike")
        }
    }
    for items in vehicle {
        if let car = items as? Car{
            car.printdetails()
        }else if let bike = items as? Bike {
            bike.describeSpeed()
        }
    }
}


