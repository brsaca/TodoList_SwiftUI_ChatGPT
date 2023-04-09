//
//  TaskList.swift
//  TodoList_SwiftUI_ChatGPT
//
//  Created by Brenda Saavedra  on 08/04/23.
//

import SwiftUI

struct TaskList: View {
    @ObservedObject var taskViewModel: TaskViewModel
    
    var body: some View {
        List {
            ForEach(taskViewModel.tasks) { task in
                TaskRow(task: task)
            }
            .onDelete(perform: taskViewModel.deleteTask)
        }
    }
}

struct TaskList_Previews: PreviewProvider {
    static var previews: some View {
        TaskList(taskViewModel: TaskViewModel())
    }
}
