//
//  TaskModel.swift
//  TodoList_SwiftUI_ChatGPT
//
//  Created by Brenda Saavedra  on 08/04/23.
//

import Foundation

struct Task: Identifiable, Codable {
    let id = UUID()
    var title: String
}
