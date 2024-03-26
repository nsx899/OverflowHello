//
//  ReferencesView.swift
//  OverflowHello
//
//  Created by Kiss János on 24/03/2024.
//

import SwiftUI

struct ReferencesView: View {
    var body: some View {
        VStack {
            ScrollView {
                Image("icon-slash")
                    .padding()
                Text("referenciák")
                    .font(.title)
                    .foregroundStyle(.white)
                    .padding(.bottom)
                
                Text("korábbi munkáink")
                    .font(.title)
                    .bold()
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .padding(.bottom)
                HStack {
                    Image("ref-01")
                    Image("ref-02")
                }
                
                HStack {
                    Image("ref-03")
                    Image("ref-04")
                }
                
                HStack {
                    Image("ref-05")
                    Image("ref-06")
                }
                
                HStack {
                    Image("ref-07")
                    Image("ref-08")
                }
                
                HStack {
                    Image("ref-09")
                    Image("ref-10")
                }
                
                HStack {
                    Image("ref-11")
                    Image("ref-12")
                }
            }
        }
    }
}

#Preview {
    ReferencesView()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
