//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Aleksandar Mijadzevic on 4. 1. 2022..
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(
                colors: [.blue, Color("lightBlue")]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Cupertino, CA")
                    .font(.system(size: 32,weight:.medium,design:.default))
                    .foregroundColor(.white)
                    .padding()
                VStack(spacing: 8) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    Text("76°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white )
                }
                .padding(.bottom, 40)
                HStack(spacing: 20) {
                    WeatherDayView(
                        dayOfWeek: "TUE", icon :"cloud.sun.fill", temperature: 76)
                    WeatherDayView(
                        dayOfWeek: "TUE", icon :"cloud.sun.fill", temperature: 45)
                    WeatherDayView(
                        dayOfWeek: "TUE", icon :"cloud.sun.fill", temperature: 22)
                    WeatherDayView(
                        dayOfWeek: "TUE", icon :"cloud.sun.fill", temperature: 26)
                    WeatherDayView(
                        dayOfWeek: "TUE", icon :"cloud.sun.fill", temperature: 104)
                   
                }
                Spacer()
                Button {
                  print("Tapped")
                } label: {
                    Text("Change Day Time")
                        .frame(width: 280, height: 50 )
                        .background(.white)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .cornerRadius(10.0)
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
    var dayOfWeek : String
    var icon : String
    var temperature : Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .foregroundColor(.white)
                .font(.system(size: 20, weight: .medium))
            Image(systemName: icon)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .font(.system(size: 20, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
