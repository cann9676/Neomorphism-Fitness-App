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
           DialHeaderView(name: "Olivia")
                .padding()
                //ok to keep padding in main body view. How Apple does it
            //best to spilt up sections into structs
            
                }
        .padding()
    }
}

struct DialHeaderView: View {
    
    let name: String
    
    var body: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading, spacing: 20) {
                Text("Morning \(name)")
                    .font(.title)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.leading)
                Text("Let's get started")
            }
            Spacer()
              
            Image("profile")
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .frame(width: 50)
            //always best practice to set a size on images
        }
        .foregroundColor(.accentColor)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DialView()
    }
}
