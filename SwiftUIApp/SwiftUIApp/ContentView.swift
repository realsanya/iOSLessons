//
//  ContentView.swift
//  SwiftUIApp
//
//  Created by Student 6 on 31/08/2020.
//  Copyright © 2020 Student 6. All rights reserved.
//

import SwiftUI
import Combine


struct ContentView: View {
    
    @State private var selection = 0

    var body: some View {
        
        TabView(selection: $selection) {
            
            StartView()
                 .tabItem {
                    VStack{
                        Image(systemName: "bolt")
                        Text("Start")
                    }
            }.tag(0)
              FoodListView()
                .tabItem {
                    VStack{
                        Image(systemName: "suit.heart")
                        Text("Food")
                    }
            }.tag(1)
                AboutView()
                 .tabItem {
                    VStack{
                        Image(systemName: "star")
                        Text("About")
                    }
            }.tag(2)
        }
    }
}

struct StartView: View{
    
    var body: some View {
        Text("Start Page")
    }
}

struct AboutView: View{
    
    var body: some View {
        Text("About Page")
    }
}
