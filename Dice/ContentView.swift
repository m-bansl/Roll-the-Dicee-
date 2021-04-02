//
//  ContentView.swift
//  Dice
//
//  Created by Mehak Bansal on 26/02/21.
//

import SwiftUI
struct ContentView: View {
    @State var one = "Dice1"
    @State var two = "Dice2"
    @State var three = "Dice3"
    @State var four = "Dice4"
    @State var five = "Dice5"
    @State var six = "Dice6"
    var body: some View {
        
        ZStack{
           
           Image("table").resizable().aspectRatio(contentMode: .fill).ignoresSafeArea()
            
        VStack{
            Spacer()
            Text("ROLL THE DICE!!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
            Spacer()
            HStack{
                Spacer()
                Image(one)
                Spacer()
                Image(two)
                Spacer()
            }
                
                
            
            Button(action: {
                
            let diceRand  = Int.random(in: 1...6)
                let diceRandom = Int.random(in:1...6)
             one = "Dice" + String(diceRand)
             two = "Dice" + String(diceRandom)
                
            },
                   
                   label: {
                    Text("Roll").font(.largeTitle).padding(.all).frame(width: 200, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).foregroundColor(Color.black).background(Color.orange).cornerRadius(10.0)
                   })
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Spacer()
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
