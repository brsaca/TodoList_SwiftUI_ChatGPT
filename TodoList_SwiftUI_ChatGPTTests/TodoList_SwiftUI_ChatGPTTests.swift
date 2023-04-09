//
//  TodoList_SwiftUI_ChatGPTTests.swift
//  TodoList_SwiftUI_ChatGPTTests
//
//  Created by Brenda Saavedra  on 08/04/23.
//

import XCTest
@testable import TodoList_SwiftUI_ChatGPT 

class TaskViewModelTests: XCTestCase {
    var viewModel: TaskViewModel!
    
    override func setUp() {
        super.setUp()
        viewModel = TaskViewModel()
    }
    
    override func tearDown() {
        viewModel = nil
        super.tearDown()
    }
    
    func testAddTask() {
        let initialTaskCount = viewModel.tasks.count
        viewModel.addTask(title: "New Task")
        
        XCTAssertEqual(viewModel.tasks.count, initialTaskCount + 1)
        XCTAssertEqual(viewModel.tasks.last?.title, "New Task")
    }
    
    func testDeleteTask() {
        viewModel.addTask(title: "Task 1")
        viewModel.addTask(title: "Task 2")
        
        let initialTaskCount = viewModel.tasks.count
        viewModel.deleteTask(at: IndexSet(integer: 0))
        
        XCTAssertEqual(viewModel.tasks.count, initialTaskCount - 1)
        XCTAssertEqual(viewModel.tasks.first?.title, "Task 2")
    }
}

