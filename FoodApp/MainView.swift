//
//  MainView.swift
//  FoodApp
//
//  Created by MAC on 1/5/2021.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            ContentView()
                .tabItem {
                           Label("Menu", systemImage: "list.dash")
                       }
            OrderView()
                .tabItem {
                                    Label("Order", systemImage: "square.and.pencil")
                                }
            
            
            
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(Order())
    }
}
