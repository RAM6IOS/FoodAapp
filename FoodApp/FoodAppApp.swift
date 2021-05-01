//
//  FoodAppApp.swift
//  FoodApp
//
//  Created by MAC on 29/4/2021.
//

import SwiftUI

@main
struct FoodAppApp: App {
    @StateObject var order = Order()
    var body: some Scene {
        WindowGroup {
           MainView()
                .environmentObject(order)
        }
    }
}
