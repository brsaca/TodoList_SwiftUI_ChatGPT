//
//  TaskRow.swift
//  TodoList_SwiftUI_ChatGPT
//
//  Created by Brenda Saavedra  on 08/04/23.
//

import SwiftUI

struct TaskRow: View {
    var task: Task
    
    var body: some View {
        Text(task.title)
    }
}

struct TaskRow_Previews: PreviewProvider {
    static var previews: some View {
        TaskRow(task: Task(title: "Sample Task"))
    }
}
