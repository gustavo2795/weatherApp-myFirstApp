//
//  ContentView.swift
//  StudyWithMe
//
//  Created by Gustavo Braz on 06/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Text("Luziânia, GO")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundStyle(.white)
                    .padding()
                
                VStack(spacing: 10) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("38°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundStyle(.white)
                }
                Spacer()
                HStack {
                    WeatherDayView(dayOfWeek: "MON", weatherImage: "cloud.sun.fill", value: 40)
                    WeatherDayView(dayOfWeek: "TUE", weatherImage: "sun.max.fill", value: 40)
                    WeatherDayView(dayOfWeek: "WED", weatherImage: "cloud.bolt.fill", value: 40)
                    WeatherDayView(dayOfWeek: "THU", weatherImage: "cloud.heavyrain.fill", value: 40)
                    WeatherDayView(dayOfWeek: "FRI", weatherImage: "cloud.sun.fill", value: 40)
                    WeatherDayView(dayOfWeek: "SAT", weatherImage: "cloud.sun.fill", value: 40)
                }
                Spacer()
            }
            
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    var dayOfWeek: String
    var weatherImage: String
    var value: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium))
                .foregroundStyle(.white)
            Image(systemName: weatherImage)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(value)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundStyle(.white)
        }
    }
}
