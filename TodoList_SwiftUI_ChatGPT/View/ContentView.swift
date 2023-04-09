//
//  ContentView.swift
//  TodoList_SwiftUI_ChatGPT
//
//  Created by Brenda Saavedra  on 08/04/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var taskViewModel = TaskViewModel()
    @State private var newTask = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TaskList(taskViewModel: taskViewModel)
                
                HStack {
                    TextField("Add a new task", text: $newTask, onCommit: addTask)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Button(action: addTask) {
                        Image(systemName: "plus")
                            .font(.system(size: 24))
                    }
                }
                .padding()
            }
            .navigationTitle("To-Do List")
            .navigationBarItems(trailing: EditButton())
        }
    }
    
    private func addTask() {
        if !newTask.isEmpty {
            taskViewModel.addTask(title: newTask)
            newTask = ""
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
