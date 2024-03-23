//
//  SidebarView.swift
//  OverflowHello
//
//  Created by Kiss János on 23/03/2024.
//

import SwiftUI

struct SidebarView: View {
    
    @Binding var isShowing: Bool
    
    var body: some View {
        ZStack {
            if isShowing {
                Rectangle()
                    .opacity(0.05)
                    .ignoresSafeArea()
                    .onTapGesture {
                        isShowing.toggle()
                    }
                
                HStack {
                    VStack(alignment: .leading, spacing: 32) {
                        
//                        NavigationLink {
//                            ContentView()
//                        } label: {
//                            Text("home")
//                        }
                        
                        NavigationLink {
                            OverflowView()
                                .onAppear(perform: {
                                    isShowing.toggle()
                                })
                        } label: {
                            Text("overflow")
                        }
                        
                        NavigationLink {
                            OurWorksView()
                                .onAppear(perform: {
                                    isShowing.toggle()
                                })
                        } label: {
                            Text("munkáink")
                        }
                        
                        NavigationLink {
                            ServicesView()
                                .onAppear(perform: {
                                    isShowing.toggle()
                                })
                        } label: {
                            Text("szolgáltatásaink")
                        }
                        
                        NavigationLink {
                            ContactMainView()
                                .onAppear(perform: {
                                    isShowing.toggle()
                                })
                        } label: {
                            Text("kapcsolat")
                        }
                        
                        Spacer()
                    }
                    .font(.title)
                    .bold()
                    .padding(.top, 30)
                    .padding(.horizontal)
                    .frame(width: 300, alignment: .leading)
                    .foregroundStyle(.white)
                    .background(.black)
                    
                    Spacer()
                }
            }
        }
        .transition(.move(edge: .leading))
        .animation(.easeOut, value: isShowing)
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    SidebarView(isShowing: .constant(true))
}
