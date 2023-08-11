//
//  Login.swift
//  ExcursionX
//
//  Created by Tanjin Rashid Sezan on 8/4/23.
//

import SwiftUI

struct Login: View {
    @State private var username = ""
    @State private var password = ""
    var body: some View {
        NavigationView {
            VStack (spacing: 10) {
                Image("ExcursionX-logos_black")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250, height: 250)
                
                Text("Sign in to your account")
                    .font(.title)
                    .fontWeight(.heavy)
                    .padding(.bottom)
                
                TextField("Username", text: $username)
                
                    .padding(.horizontal)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                SecureField("Password", text: $password)
                    .padding(.horizontal)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                    
                    Button(action: {
                        print("Button tapped!")
                    }) {
                        NavigationLink("Forget Password?", destination: Home())
                            .font(.callout)
                            .foregroundColor(.black)
                }
                
                Button(action: {
                    print("Button tapped!")
                }) {
                    NavigationLink("Log in", destination: Home())
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
                    Text("Don't have an account?")
                        .foregroundColor(.black)
                }
                
                
                Button(action: {
                    print("Button tapped!")
                }) {
                    NavigationLink("Sign up", destination: Signup())
                        .foregroundColor(.white)
                        .padding()
                        .background(Capsule()
                        .frame(width: 350, height: 40)
                        .foregroundColor(.secondary))
                        .fontWeight(.heavy)
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
//        NavigationStack{
            Login()
//        }
    }
}


