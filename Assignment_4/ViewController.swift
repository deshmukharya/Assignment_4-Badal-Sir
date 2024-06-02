//
//  ViewController.swift
//  Assignment_4
//
//  Created by Arya Deshmukh on 22/05/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        describeVehicle(vehicle: vehicle)
        describeElements(elements: elements)
        
        let myTask = Task(task: "Task1")
        let second = TaskHandler()

        myTask.delegate = second
        myTask.details()
        
        
        let area = Circle(radius: 8)
        print("Area of circle is \(area.area)")
    }


}

