//
//  OverflowView.swift
//  OverflowHello
//
//  Created by Kiss János on 23/03/2024.
//

import SwiftUI

struct OverflowView: View {
    var body: some View {
        VStack {
            ScrollView {
                HelloView(imageString: "img-overflow-01", title: "ismerj meg!", titleFontSize: 64)
                
                ProfessionalServicesView(subTitle: "Céljaink", description: "Sed ut perspiciatis unde omnis iste natus error sit  voluptatem accusantium doloremquelaudantium, totam  rem aperiam, eaque ipsa quae ab illo inventore veritatis et  quasi architecto beatae vitae dicta sunt explicabo.")
                
                ProfessionalServicesView(subTitle: "Elképzeléseink", description: "Sed ut perspiciatis unde omnis iste natus error sit  voluptatem accusantium doloremquelaudantium, totam  rem aperiam, eaque ipsa quae ab illo inventore veritatis et  quasi architecto beatae vitae dicta sunt explicabo.")
                
                ProfessionalServicesView(subTitle: "Jövőképünk", description: "Sed ut perspiciatis unde omnis iste natus error sit  voluptatem accusantium doloremquelaudantium, totam  rem aperiam, eaque ipsa quae ab illo inventore veritatis et  quasi architecto beatae vitae dicta sunt explicabo.")
                
                Image("img-overflow-02")
                    .padding(.vertical)
                
                ReferencesView()
            }
            
        }
        .padding()
        .multilineTextAlignment(.center)
        
    }
}

#Preview {
    OverflowView()
        .preferredColorScheme(.dark)
}
