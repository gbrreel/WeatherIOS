//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Gabriel Gallo on 08/03/25.
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .white]),
                           startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
