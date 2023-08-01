//
//  ContentView.swift
//  toDoList
//
//  Created by Taina Saenz on 8/1/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showNewTask = false
    var body: some View {
        VStack {
            HStack {
                Text("To Do List")
                     .font(.system(size: 40))
                     .fontWeight(.black)
                Spacer()
                Button(action: {
                    self.showNewTask = true
                }) {
                Text("+")
                    font(.system(size: 40))
                }
            }
            .padding()
            Spacer()
        }
        if showNewTask {
            NewToDoView(title: "",
                        isImportant: false)
                }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
