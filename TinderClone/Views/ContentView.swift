//
//  ContentView.swift
//  TinderClone
//
//  Created by Miłosz Samotyjak on 30/03/2023.
//

import SwiftUI

struct ContentView: View {
    var loggedIn: Bool = false
    
    var body: some View {
        if !loggedIn {
            LoginView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
