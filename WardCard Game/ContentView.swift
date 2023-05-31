//
//  ContentView.swift
//  WardCard Game
//
//  Created by Vikram Kini on 18/05/23.
//

import SwiftUI

struct ContentView: View {
    //Declaring the player cards
    @State var playerCard = "back"
    @State var cpuCard = "back"
    // Score variables
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack {
            
            Image("background-wood-cartoon")
                .resizable()
                .ignoresSafeArea()
           
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                Spacer()
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }
                Spacer()
                HStack {
                    Spacer()
                    
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom,10)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack {
                        
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom,10)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                             
                    }
                    Spacer()
                }.foregroundColor(.white)
                Spacer()
            }
        }
    }
    func deal() {
        // Randomise the player and cpu card
        var playerCardValue = Int.random(in: 2...14)
        var cpuCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        cpuCard = "card" + String(cpuCardValue)
        
        //Update Scores
        if playerCardValue > cpuCardValue {
            playerScore += 1
        }
        else if playerCardValue < cpuCardValue {
            cpuScore += 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
