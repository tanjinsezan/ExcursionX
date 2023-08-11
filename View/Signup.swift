//
//  Signup.swift
//  ExcursionX
//
//  Created by Tanjin Rashid Sezan on 8/4/23.
//

import SwiftUI

struct Signup: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        NavigationView{
            VStack (spacing: 10){
                Image("ExcursionX-logos_black")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250, height: 250)
                
                Text("Create your account")
                    .font(.title)
                    .fontWeight(.heavy)
                    .padding(.bottom)
                
                TextField("Email", text: $email)
                    .padding(.horizontal)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                SecureField("Password", text: $password)
                    .padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                SecureField("Confirm Password", text: $password)
                    .padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                
                Button(action: {
                    print("Button tapped!")
                }) {
                    NavigationLink("Sign up", destination: Home())
                        .foregroundColor(.white)
                        .padding()
                        .background(Capsule()
                            .frame(width: 350, height: 40)
                            .foregroundColor(.black))
                        .fontWeight(.heavy)
                }
                Button(action: {
                    print("Button tapped!")
                }) {
                    Text("Already have an account?")
                        .padding(/*@START_MENU_TOKEN@*/[.top, .leading, .trailing]/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.black)
                }
                
                
                Button(action: {
                    print("Button tapped!")
                }) {
                    NavigationLink("Login Here", destination: Login())
                        .foregroundColor(.black)
                        .fontWeight(.heavy)
                }
                Spacer()
            }
        }
    }
    
    struct Signup_Previews: PreviewProvider {
        static var previews: some View {
            Signup()
        }
    }
}
