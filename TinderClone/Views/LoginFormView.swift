//
//  LoginFormView.swift
//  TinderClone
//
//  Created by Miłosz Samotyjak on 04/04/2023.
//

import SwiftUI

struct LoginFormView: View {
    
    @State private var email:String = ""
    @State private var password:String = ""
    
    var body: some View {
        
        VStack(spacing: 50) {
            
            Text("Log in using e-mail")
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.system(size: 35))
                .bold()
                
            VStack(spacing: 35) {
                
                VStack{
                    
                    TextField("Your e-mail address is", text: self.$email)
                    
                    Divider()
                        .frame(height: 3)
                        .background(Color(red: 255/255, green: 23/255, blue: 93/255))
                }
                
                VStack {
                    
                    SecureField("Your password is", text: self.$password)
                    
                    Divider()
                        .frame(height: 3)
                        .background(Color(red: 255/255, green: 23/255, blue: 93/255))
                }
            }
            .tint(Color(red: 255/255, green: 23/255, blue: 93/255))
            .font(.system(size: 25))
            
            Button(action: {}, label: {
    
                Text("LOG IN")
                    .frame(maxWidth: .infinity, maxHeight: 55)
                    .font(.title)
                    .bold()
                    
            })
            .disabled(email == "" || password == "")
            .background(email == "" || password == "" ? LinearGradient(colors:[Color(red:0.8,green:0.8,blue:0.8)],  startPoint:.leading, endPoint: .trailing) : LinearGradient(colors:  [Color(red:255/255,green:125/255,blue:99/255), Color(red: 255/255, green: 23/255, blue: 93/255)], startPoint: .leading, endPoint: .trailing))
            .foregroundColor(email == "" || password == "" ? Color(red:0.4,green:0.4,blue:0.4) : Color(red:1.0,green:1.0,blue:1.0))
            .cornerRadius(50)
        
            Text("Don't have an account? \(Text("Sign up").foregroundColor(Color(red: 255/255, green: 23/255, blue: 93/255)))")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, -30)
                .font(.system(size: 18))
            
            Spacer()
        }
        .padding()
        .padding()
    }
}

struct LoginFormView_Previews: PreviewProvider {
    static var previews: some View {
        LoginFormView()
    }
}
