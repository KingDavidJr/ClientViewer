//
//  ContentView.swift
//  ClientView
//
//  Created by David Amedeka on 3/22/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Home()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            Dashboard()
                .tabItem {
                    Image(systemName: "person")
                    Text("Dashboard")
                }
            Settings()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
        }
        .tint(.purple)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
