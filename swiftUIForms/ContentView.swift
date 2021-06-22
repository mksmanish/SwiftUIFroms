//
//  ContentView.swift
//  swiftUIForms
//
//  Created by manish on 22/06/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var userName = ""
    @State private var userEmail = ""
    @State private var contact = ""
    @State private var joiningDate = Date()
    @State private var gender = false
    @State private var promotional = false
    @State private var numberofView = 10
    
    var body: some View {
        NavigationView {
        Form {
            Section(header: Text("Personal Details")) {
            TextField("User Name", text: $userName)
            TextField("User Email", text: $userEmail)
            TextField("Contact Number", text: $contact)
            DatePicker("Joining Date", selection : $joiningDate,displayedComponents: .date)
            }
            
            Section(header: Text("Toggle Details")) {
             Toggle("Gender", isOn: $gender)
             Toggle("Promtional Message", isOn:$promotional)
                .toggleStyle(SwitchToggleStyle(tint: .red))
            }
            Section(header: Text("Count Details")) {
                Stepper("number of View",value: $numberofView ,in: 1...100)
                Text("My content has \(numberofView)")
                Link("Terms and services",destination:URL(string: "https://github.com/mksmanish?tab=overview&from=2017-12-01&to=2017-12-31")!)
            }
            
        }
        .navigationTitle("Information").font(.headline)
        
      }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
