//
//  TaskViewModel.swift
//  TodoList_SwiftUI_ChatGPT
//
//  Created by Brenda Saavedra  on 08/04/23.
//

import Foundation

class TaskViewModel: ObservableObject {
    @Published var tasks: [Task] = []
    
    func addTask(title: String) {
        tasks.append(Task(title: title))
    }
    
    func deleteTask(at offsets: IndexSet) {
        tasks.remove(atOffsets: offsets)
    }
}
