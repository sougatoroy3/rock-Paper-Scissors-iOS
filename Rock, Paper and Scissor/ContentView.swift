//
//  ContentView.swift
//  Rock, Paper and Scissor
//
//  Created by Sougato Roy on 30/07/25.
//

import SwiftUI

struct ButtonSelect : View{
    var playerPick : String
    
    var body: some View{
        Text(playerPick)
            .bold()
    }
}

struct ContentView: View {
    
    @State private var cpuPicks = ["Rock", "Paper", "Scissors"]
    @State private var cpuPrompts = ["WIN", "LOSE"]
    
    @State private var playerPicks = ["Rock", "Paper", "Scissors"]
    @State private var score = 0
    @State private var chance = 0
    
    @State private var cpuPicked : String = ""
    @State private var cpuPrompted : String = ""
    
    @State private var gameOver = false
        
    var body: some View {
        ZStack{
            LinearGradient(colors: [.white, .purple, .indigo, .yellow, .red], startPoint: .top, endPoint: .bottom)
//            LinearGradient(colors: [.indigo, .purple, .black], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack(spacing: 20){
                Section{
                    HStack(spacing: 12) {
                        Image("game_icon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.white)

                        Text("Rock, Paper or Scissors")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(.black)
                            .lineLimit(1)
                            .minimumScaleFactor(0.5)
                    }
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.ultraThinMaterial)
                            .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 4)
                    )
                    .padding(.top)
                    
                }
                Spacer()
                
                Text("Round : \(chance + 1)")
                    .font(.title2)
                    .foregroundStyle(.black.opacity(0.8))
                
                Spacer()
                
                VStack(spacing: 16){
                    
                    VStack(spacing: 20){
                        Text("🖥️ CPU has choosen ⬇️")
                            .font(.title2)
                            .foregroundStyle(.black.opacity(0.7))
                        
                        Text(cpuPicked)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .frame(width: 160, height: 50)
                            .background(.thinMaterial)
                            .clipShape(Capsule())
                            .shadow(radius: 3)
                    }
                    VStack(spacing: 10) {
                        Text("📢 CPU says...")
                            .font(.title2)
                            .foregroundStyle(.black.opacity(0.7))

                        Text(cpuPrompted)
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .frame(width: 160, height: 50)
                            .background(.thinMaterial)
                            .clipShape(Capsule())
                            .shadow(radius: 3)
                    }
                    
                }
                
                Spacer()
                Spacer()
                
                Text("CHOOSE YOUR MOVE")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                HStack(spacing: 20){
                    ForEach(0..<3){number in
                        Button{
                            //button tapped
                            buttonTapped(number)
                        } label:{
                            ButtonSelect(playerPick: playerPicks[number])
                        }
                        .frame(width: 100, height: 50)
                        .background(.purple)
                        .foregroundStyle(.white)
                        .clipShape(.capsule)
                    }
                }
                
                Spacer()
                
                Text("🏆 Score: \(score)")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                Spacer()
            }
            .padding()
        }
        .onAppear {
            startNewRound()
        }
        //Alert for Game over
        .alert("Final Score is \(score) out of 10", isPresented: $gameOver){
            Button("Restart", action: restartGame)
        }
    }
    func startNewRound() {
        let cpuIndex = Int.random(in: 0..<cpuPicks.count)
        let promptIndex = Int.random(in: 0..<cpuPrompts.count)
        
        cpuPicked = cpuPicks[cpuIndex]
        cpuPrompted = cpuPrompts[promptIndex]
    }
    
    func restartGame(){
        chance = 0
        score = 0
        cpuPicks.shuffle()
        startNewRound()
    }
    
    //Function to check move of player
    func buttonTapped(_ number: Int){
        // number: 0 = Rock, 1 = Paper, 2 = Scissors
        if cpuPicked == "Rock" && cpuPrompted == "WIN"{
            if number == 1{
                score += 1
            }else{
                score -= 1
            }
        }else if cpuPicked == "Paper" && cpuPrompted == "WIN"{
            if number == 2{
                score += 1
            }else{
                score -= 1
            }
        }else if cpuPicked == "Scissors" && cpuPrompted == "WIN"{
            if number == 0{
                score += 1
            }else{
                score -= 1
            }
        }else if cpuPicked == "Rock" && cpuPrompted == "LOSE"{
            if number == 2 {
                score += 1
            }else{
                score -= 1
            }
        }else if cpuPicked == "Paper" && cpuPrompted == "LOSE"{
            if number == 0{
                score += 1
            }else{
                score -= 1
            }
        }else if cpuPicked == "Scissors" && cpuPrompted == "LOSE"{
            if number == 1{
                score += 1
            }else{
                score -= 1
            }
        }else{
            //Do notthing
        }
        chance += 1
        if chance == 10{
            gameOver = true
        }else {
            startNewRound()
        }
    }
}

#Preview {
    ContentView()
}
