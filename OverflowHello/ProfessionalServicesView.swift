//
//  ProfessionalServicesView.swift
//  OverflowHello
//
//  Created by Kiss János on 23/03/2024.
//

import SwiftUI

struct ProfessionalServicesView: View {
    var body: some View {
        VStack {
            Image("icon-slash")
                .padding()
            Text("Overflow")
                .font(.title)
                .foregroundStyle(.white)
                .padding(.bottom)
            
            Text("Professzionális online szolgáltatások egy helyen ")
                .font(.title)
                .bold()
                .foregroundStyle(.white)
                .multilineTextAlignment(.center)
                .padding(.bottom)
            
            Image("img-02")
                .resizable()
                .scaledToFit()
                .padding()
        }
    }
}

#Preview {
    ProfessionalServicesView()
}
