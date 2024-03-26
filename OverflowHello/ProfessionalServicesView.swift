//
//  ProfessionalServicesView.swift
//  OverflowHello
//
//  Created by Kiss János on 23/03/2024.
//

import SwiftUI

struct ProfessionalServicesView: View {
    
    var beforeTitleImage: String = "icon-slash"
    var title: String = "Overflow"
    var subTitle: String = ""
    var description: String = ""
    var imageString: String = ""
    
    var body: some View {
        VStack {
            ScrollView {
                Image(beforeTitleImage)
                    .padding()
                Text(title)
                    .font(.title)
                    .foregroundStyle(.white)
                    .padding(.bottom)
                
                Text(subTitle)
                    .font(.title)
                    .bold()
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .padding(.bottom)
                
                Text(description)
                    .font(.caption)
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .padding(.bottom)
                
                if !imageString.isEmpty {
                    Image(imageString)
                        .resizable()
                        .scaledToFit()
                        .padding()
                }
                
            }
            
        }
    }
}

#Preview {
    ProfessionalServicesView()
        .preferredColorScheme(.dark)
}
