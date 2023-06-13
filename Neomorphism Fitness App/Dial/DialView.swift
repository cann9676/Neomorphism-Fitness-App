//
//  ContentView.swift
//  Neomorphism Fitness App
//
//  Created by Chelsea Hannah on 6/11/23.
//

import SwiftUI

struct DialView: View {
    var body: some View {
        VStack {
            DialHeaderView(name: "Olivia", image: "profile")
                .padding()
            //ok to keep padding in main body view. How Apple does it
            //best to spilt up sections into structs
            
            Dial()
                .padding()
            Spacer()
        }
        .padding()
        .background(Color.backgroundGrey)
        
    }
}

struct Dial: View {
    
    let shadowOffset: CGFloat = 8
    let shadowRadius: CGFloat = 9
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                ForEach(0..<360, id: \.self) { index in
                    if (Double(index).truncatingRemainder(dividingBy: 2.25) == 0) {
                        Rectangle()
                            .frame(width: 1)
                            .rotationEffect(.degrees(Double(index)))
                        
                        
                    }
                }
                
                Circle().fill(Color.backgroundGrey)
                    .shadow(color: .gray, radius: shadowRadius, x: shadowOffset, y: shadowOffset)
                    .shadow(color: .white, radius: shadowRadius, x: -shadowOffset, y: -shadowOffset)
                
                ZStack {
                    Circle().fill(Color.backgroundGrey)
                        .shadow(color: .gray, radius: shadowRadius, x: shadowOffset, y: shadowOffset)
                        .shadow(color: .white, radius: shadowRadius, x: -shadowOffset, y: -shadowOffset)
                    
                    Circle().stroke(style: StrokeStyle(lineWidth: 12))
                        .padding(20)
                }
                .padding()
                
                
            }
            .foregroundColor(.accentColor)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DialView()
    }
}


extension Color {
    
    static let backgroundGrey =  Color(red: 0.922, green: 0.925, blue: 0.941)
    
}
