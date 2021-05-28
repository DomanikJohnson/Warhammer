//
//  ContentView.swift
//  war-challenge
//
//  Created by Domanik Johnson on 5/27/21.
//

import SwiftUI

struct ContentView: View {
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
                    Image("card3")
                    Spacer()
                    Image("card4")
                    Spacer()
                }
                Spacer()
                Image("dealbutton")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline).foregroundColor(.white)
                        Text("0")
                            .font(.title).foregroundColor(.white)
                    }
                    Spacer()
                    VStack{
                        Text("CPU").font(.headline).foregroundColor(.white)
                        Text("0").font(.title).foregroundColor(.white)
                    }
                    Spacer()
        
                }
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
