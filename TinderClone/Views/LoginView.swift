//
//  LoginView.swift
//  TinderClone
//
//  Created by Miłosz Samotyjak on 04/04/2023.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        ZStack {
            
            LinearGradient(colors: [Color(red: 255/255, green: 125/255, blue: 99/255), Color(red: 255/255, green: 23/255, blue: 93/255)], startPoint: .top, endPoint: .bottom)
            
            VStack(spacing:0) {
                
                Spacer()
                Spacer()
                
                HStack {
                    
                    TinderIcon()
                        .padding(.top, 5)
                    Text("tinder")
                        .font(.system(size: 52))
                        .fontWeight(.bold)
                }
                Spacer()
                Spacer()
                
                Text("By clicking Log In, you agree with our \(Text("Terms").underline()). Learn how we process your data in our \(Text("Privacy Policy").underline()) and \(Text("Cookies Policy").underline()).")
                    .multilineTextAlignment(.center)
                    .font(.system(size: 17))
                    .padding(.leading)
                    .padding(.trailing)
                
                VStack(spacing: 20) {
                    
                    Button(action: Login, label: {
                        
                        HStack(spacing: 0) {
                            
                            Image("google")
                                .padding(.leading)
                            
                            Text("LOG IN WITH GOOGLE")
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity)
                        }
                        .frame(maxWidth: .infinity, maxHeight: 55)
                        .background(.white)
                        .cornerRadius(50)
                    })
                    
                    Button(action: Login, label: {
                        
                        HStack(spacing: 0) {
                            
                            Image("facebook")
                                .padding(.leading)
                            
                            Text("LOG IN WITH FACEBOOK")
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity)
                        }
                        .frame(maxWidth: .infinity, maxHeight: 55)
                        .background(.white)
                        .cornerRadius(50)
                    })
                    
                    Button(action: Login, label: {
                        
                        HStack(spacing: 0) {
                            
                            PhoneIcon()
                                .padding(.leading)
                                
                            Text("LOG IN WITH PHONE NUMBER")
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity)
                        }
                        .frame(maxWidth: .infinity, maxHeight: 55)
                        .background(.white)
                        .cornerRadius(50)
                    })
                    
                    
                }
                .foregroundColor(.gray)
                .padding()
                
                Button("Trouble logging in?"){}
                    .font(.system(size: 18))
                    .fontWeight(.bold)
                    .padding()
            }
            .foregroundColor(.white)
            .padding()
        }
        .ignoresSafeArea()
    }
    
    func Login(){
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
