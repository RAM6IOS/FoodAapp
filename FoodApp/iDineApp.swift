//
//  iDineApp.swift
//  FoodApp
//
//  Created by MAC on 1/5/2021.
//

import SwiftUI

struct iDineApp: View {
    @StateObject  var settings = GameSettings()

   
    var body: some View {
        NavigationView {
                    VStack {
                        // A button that writes to the environment settings
                        Button("Increase Score") {
                            settings.score += 1
                        }

                        NavigationLink(destination: ScoreView()) {
                            Text("Show Detail View")
                        }
                    }
                    .frame(height: 200)
                }
                .environmentObject(settings)
            
    }
}

struct ScoreView: View {
    @EnvironmentObject var settings: GameSettings

    var body: some View {
        Text("Score: \(settings.score)")
    }
}


class GameSettings: ObservableObject {
    @Published var score = 0
}

struct iDineApp_Previews: PreviewProvider {
    static var previews: some View {
        iDineApp()
    }
}
