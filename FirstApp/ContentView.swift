//
//  ContentView.swift
//  FirstApp
//
//  Created by Umang Kumar on 8/25/20.
//  Copyright © 2020 Umang Kumar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var isHearted = false
    @State private var numHearts = 999
    var body: some View {
        VStack{
            Image("pinkbuilding")
                .resizable()
                .cornerRadius(20)
                .padding()
                .shadow(radius: 10)
            HStack{
                Button(action: {
                    self.isHearted.toggle()
                    
                    if self.isHearted{
                        self.numHearts += 1
                    }
                    else{
                        self.numHearts -= 1
                    }
                    
                }){
                    if self.isHearted{
                        Image(systemName: "heart.fill")
                    }
                    else{
                        Image(systemName: "heart")
                    }

                }
                Text(String(numHearts))
            }
            
            
            
           
            Text("This building is pink and I love it")
                .fontWeight(.heavy)
                .foregroundColor(.pink)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .shadow(color: .black, radius: 0.1, x: 2, y: 2)
            
            
        }
    }
}


























struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
