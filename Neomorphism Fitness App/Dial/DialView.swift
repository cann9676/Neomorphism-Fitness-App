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
