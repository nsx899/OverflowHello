//
//  HelloView.swift
//  OverflowHello
//
//  Created by Kiss János on 23/03/2024.
//

import SwiftUI

struct HelloView: View {
    var body: some View {
        VStack {
            Image("img-01")
                .resizable()
                .scaledToFit()
            
            
            VStack(alignment: .center) {
                Text("hello")
                    .font(.system(size: 155))
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                
                Text("Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.")
                    .foregroundStyle(.white)
                    .padding(.bottom)
                    .multilineTextAlignment(.center)
                
                Button("referenciák") {
                    
                }
                .padding()
                .border(.white)
                .foregroundColor(.white)
            }
            .padding()
        }
    }
}

#Preview {
    HelloView()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
