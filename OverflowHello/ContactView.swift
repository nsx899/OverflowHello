//
//  ContactView.swift
//  OverflowHello
//
//  Created by Kiss János on 23/03/2024.
//

import SwiftUI

struct ContactView: View {
    @Binding var name: String
    @Binding var email: String
    @Binding var phone: String
    @Binding var message: String
    
    var body: some View {
        VStack {
            Image("icon-slash")
            
            Text("kontakt")
                .font(.title)
                .foregroundStyle(.white)
            
            Text("Ha kérdéses lenne..")
                .font(.title)
                .foregroundStyle(.white)
                .bold()
                .padding(.vertical)
            
            TextField("", text: $name, prompt: Text("Név").foregroundStyle(.white))
                .padding()
                .foregroundStyle(.white)
                .border(.white)
            
            TextField("", text: $email, prompt: Text("Email").foregroundStyle(.white))
                .padding()
                .foregroundStyle(.white)
                .border(.white)
            
            TextField("", text: $phone, prompt: Text("Telefon").foregroundStyle(.white))
                .padding()
                .foregroundStyle(.white)
                .border(.white)
            
            TextField("", text: $message, prompt: Text("Üzenet").foregroundStyle(.white), axis: .vertical)
                .padding()
                .foregroundStyle(.white)
                .border(.white)
            
            Text("kontakt")
                .font(.system(size: 95))
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .padding()
            
            Text("Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.")
                .foregroundStyle(.white)
                .multilineTextAlignment(.center)
                .padding(.bottom)
            
            VStack {
                Image("icon-phone")
                    .padding(.bottom, 8)
                Text("06 30 555 55 55")
            }
            .padding(.bottom)
            
            VStack {
                Image("icon-mail")
                    .padding(.bottom, 8)
                Text("hello@overflow.hu")
                    .tint(.white)
            }
            .padding(.bottom)
            
            VStack {
                Image("icon-place")
                    .padding(.bottom, 8)
                Text("Pécs, Munkácsy Mihály utca 24")
            }
            .padding(.bottom)
        }
        .padding()
    }
}
//
//#Preview {
//    ContactView()
//}
