//
//  ContentView.swift
//  DiceRoller
//
//  Created by Nick Krasnitskiy on 26.06.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var numberOfDice: Int = 1
    
    var body: some View {
        VStack {
            Text("Dice Roller")
                .font(.largeTitle.lowercaseSmallCaps())
            
            HStack {
                ForEach(1...numberOfDice, id: \.description) { _ in
                    DiceView()
                }
            }
            
            HStack {
                Button("Remove Dice") {
                    numberOfDice -= 1
                }
                .disabled(numberOfDice == 1)
                
                Button("Add Dice") {
                    numberOfDice += 1
                }
                .disabled(numberOfDice == 5)
            }
            .padding()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
