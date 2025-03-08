//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Gabriel Gallo on 08/03/25.
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack { // Substituí VStack por ZStack
            LinearGradient(gradient: Gradient(colors: [.blue, .white]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Joinville, SC")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                
                VStack{
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                }
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
