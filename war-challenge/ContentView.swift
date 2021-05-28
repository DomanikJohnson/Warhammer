//
//  ContentView.swift
//  war-challenge
//
//  Created by Domanik Johnson on 5/27/21.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard = "card5"
    @State var cpu = "card9"
    @State var playerScore: Int = 0
    @State  var cpuScore:Int = 0
    
    var body: some View {
        ZStack{
            Image("background")
                .resizable().aspectRatio(contentMode: .fill)
            
            VStack(alignment: .center){
                Spacer()
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpu)
                    Spacer()
                }
                Spacer()
                Button(action: {
                    // Get random number
                    var randNum =  Int.random(in: 2...14)
                    var cpuRand = Int.random(in: 2...14)
                    
                    // Update the cards
                    playerCard = "card\(randNum)"
                    cpu = "card\(cpuRand)"
                    if(randNum >  cpuRand) {
                        playerScore += 1
                    }else {
                        cpuScore += 1
                    }
                }, label: {
                    Image("dealbutton")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)                })
            
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline).foregroundColor(.white).padding(.bottom)
                        Text(String(playerScore))
                            .font(.title).foregroundColor(.white)
                    }
                    Spacer()
                    VStack{
                        Text("CPU").font(.headline).foregroundColor(.white).padding(.bottom)
                        Text(String(cpuScore)).font(.title).foregroundColor(.white)
                    }
                    Spacer()
                }
                Spacer()
                Spacer()
            }
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
