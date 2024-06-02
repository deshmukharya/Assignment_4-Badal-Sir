//
//  Delegates.swift
//  Assignment_4
//
//  Created by Arya Deshmukh on 23/05/24.
//

import Foundation

protocol TaskDelegate {
    func taskDidComplete(task: String)
}

class Task {
    var task: String
    init(task: String) {
        self.task = task
      
    }
    var delegate: TaskDelegate?
    func details(){
        print("Status of task")
        delegate?.taskDidComplete(task: task)
    }
    
}

class TaskHandler: TaskDelegate {
    func taskDidComplete(task:String){
        print("\(task) is completes at 5:00 pm")
    }
}

