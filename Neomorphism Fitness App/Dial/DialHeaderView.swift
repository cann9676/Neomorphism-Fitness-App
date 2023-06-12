//
//  DialHeaderView.swift
//  Neomorphism Fitness App
//
//  Created by Chelsea Hannah on 6/12/23.
//

import Foundation
import SwiftUI

struct DialHeaderView: View {
    
    let name: String
    let image: String
    
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
              
            Image(image)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .frame(width: 50)
            //always best practice to set a size on images
        }
        .foregroundColor(.accentColor)
    }
}
