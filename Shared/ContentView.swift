//
//  ContentView.swift
//  Shared
//
//  Created by Jones, Ronald on 3/10/22.
//

import SwiftUI

struct ContentView: View {
    let students = ["Harry", "Hermoine", "Ron"]
    @State private var selectedStudent = "Harry"
    
    var body: some View {
        NavigationView {
            Form {
                Picker("Select Your Student", selection: $selectedStudent) {
                ForEach(students, id: \.self) {
                    Text($0)
                    }
                }
                }
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
