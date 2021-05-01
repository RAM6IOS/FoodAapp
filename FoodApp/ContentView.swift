//
//  ContentView.swift
//  FoodApp
//
//  Created by MAC on 29/4/2021.
//

import SwiftUI

struct ContentView: View {
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    
    var body: some View {
       
        
        NavigationView {
            
            List {
                ForEach(menu) { section in
                    
                    Section(header: Text(section.name)
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/))
                    {
                    ForEach(section.items){item in
                        
                        NavigationLink(destination:ItemDetail(item: item)) {
                            ItemRow(item:item)
                        }
                       

                       
                    }
                    }
                   
                }
            }
            .navigationTitle("Menu")
            .listStyle(GroupedListStyle())
        }

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
