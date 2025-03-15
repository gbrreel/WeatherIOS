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
            LinearGradient(gradient: Gradient(colors: [.blue, Color("lightBlue")]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Joinville, SC")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                
                VStack(spacing: 8) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("36°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }
                
                Spacer()
                
                HStack(spacing: 20){
                    WeatherDayView(dayOfWeek: "DOM",
                                   imageName: "cloud.sun.fill",
                                   temperature: 36)
                    
                    WeatherDayView(dayOfWeek: "SEG",
                                   imageName: "sun.max.fill",
                                   temperature: 38)
                    
                    WeatherDayView(dayOfWeek: "TERC",
                                   imageName: "sun.dust.fill",
                                   temperature: 26)
                    
                    WeatherDayView(dayOfWeek: "QUA",
                                   imageName: "cloud.rain.fill",
                                   temperature: 22)
                    
                    WeatherDayView(dayOfWeek: "QUI",
                                   imageName: "cloud.sun.fill",
                                   temperature: 30)
                    
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

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default ))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
