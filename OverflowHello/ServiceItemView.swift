//
//  ServiceItemView.swift
//  OverflowHello
//
//  Created by Kiss János on 05/12/2023.
//

import SwiftUI

struct ServiceItemView: View {
    let item: ServiceItem
    
    var body: some View {
        VStack {
            Image("img-line")
            
            Text(item.number)
                .font(.system(size: 60))
                .fontWeight(.black)
                .foregroundStyle(.overflowBlue)
            
            Text(item.name)
                .font(.system(size: 40))
                .fontWeight(.black)
                .foregroundStyle(.white)
            
            Text(item.description)
                .foregroundStyle(.white)
                .multilineTextAlignment(.center)
                .padding(.top)
            
            Image(item.image)
                .resizable()
                .scaledToFit()
        }
        .padding()
    }
}

#Preview {
    ServiceItemView(item: ServiceItem(number: "01", name: "webfejlesztés", description: "Lorem ipsum dolor sit amet", image: "img-03"))
}
