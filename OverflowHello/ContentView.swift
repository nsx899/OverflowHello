//
//  ContentView.swift
//  OverflowHello
//
//  Created by Kiss János on 05/12/2023.
//

import SwiftUI

struct ContentView: View {
    let serviceItems = [
        ServiceItem(number: "01", name: "webfejlesztés", description: "Sed ut perspiciatis unde omnis iste natus error sit  voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et  quasi architecto beatae vitae dicta sunt explicabo.", image: "img-03"),
        ServiceItem(number: "02", name: "grafika & design", description: "Sed ut perspiciatis unde omnis iste natus error sit  voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et  quasi architecto beatae vitae dicta sunt explicabo.", image: "img-04"),
        ServiceItem(number: "03", name: "social & seo", description: "Sed ut perspiciatis unde omnis iste natus error sit  voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et  quasi architecto beatae vitae dicta sunt explicabo.", image: "img-05"),
        ServiceItem(number: "04", name: "logisztika", description: "Sed ut perspiciatis unde omnis iste natus error sit  voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et  quasi architecto beatae vitae dicta sunt explicabo.", image: "img-06")
    ]
    
    @State private var name = ""
    @State private var email = ""
    @State private var phone = ""
    @State private var message = ""
    
    @State private var showMenu = false 
    
    var body: some View {
        NavigationView {
            ZStack {
                
                VStack {
                    ScrollView {
                        VStack {
                            //TopMenuView()
                            //Teszt
                            HelloView()
                            
                            ProfessionalServicesView()
                            
                            ForEach(serviceItems) { item in
                                ServiceItemView(item: item)
                            }
                            
//                        ContactView(name: $name, email: $email, phone: $phone, message: $message)
                            
                        }
                    }
                    
                }
                
                SidebarView(isShowing: $showMenu)
            }
            //.toolbar(showMenu ? .hidden : .visible, for: .navigationBar)
            .toolbar {
                if !showMenu {
                    ToolbarItem(placement: .topBarLeading) {
                        Image("logo")
                            //.animation(.easeOut, value: showMenu)
                    }
                }
                
                ToolbarItem() {
                    Button(action: {
                        showMenu.toggle()
                    }, label: {
                        if !showMenu {
                            Image("icon-menu")
                            
                        } else {
                            Image(systemName: "xmark")
                                .bold()
                                .foregroundStyle(.white)
                        }
                            
                    })
                    
                }
            }
            .toolbarBackground(.black)
        }
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        
    }
}

#Preview {
    ContentView()
}

struct TopMenuView: View {
    var body: some View {
        HStack {
            Image("logo")
            Spacer()
            Image("icon-menu")
        }
        .padding()
    }
}






