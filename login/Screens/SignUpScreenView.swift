//
//  SignUpScreenView.swift
//  login
//
//  Created by user216710 on 3/27/22.
//

import SwiftUI

struct SignUpScreenView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var confirmpassword: String = ""
    
    var body: some View {
        ZStack {
                   Color("BgColor").edgesIgnoringSafeArea(.all)
                   VStack {
                       ZStack{
                           
                           NavigationLink(destination:
                                           Home()
                               .navigationBarHidden(true),
                               label: {
                               Text("Guest >")
                                   .foregroundColor(.blue)
                                   .frame(width: 350, height: 50, alignment: .trailing)})
                           
                        }
                           
                       
                       VStack {
                           Text("Register")
                               .font(.largeTitle)
                               .fontWeight(.bold)
                               .padding(.bottom, 30)
                           
                           SocalLoginButton(image: Image(uiImage: #imageLiteral(resourceName: "google")), text: Text("Sign Up with Google").foregroundColor(Color("PrimaryColor")))
                               .padding(.vertical)
                           
                           Text("Enter Details")
                               .foregroundColor(Color.black.opacity(0.4))
                           
                           TextField("Email Address", text: $email)
                               .font(.title3)
                               .padding()
                               .frame(maxWidth: .infinity)
                               .background(Color.white)
                               .cornerRadius(50.0)
                               .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
                               .padding(.vertical)
                           
                           SecureField("Password", text: $password)
                               .font(.title3)
                               .padding()
                               .frame(maxWidth: .infinity)
                               .background(Color.white)
                               .cornerRadius(50.0)
                               .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
                           
                           SecureField("Confirm Password", text: $confirmpassword)
                               .font(.title3)
                               .padding()
                               .frame(maxWidth: .infinity)
                               .background(Color.white)
                               .cornerRadius(50.0)
                               .shadow(color: Color.black.opacity(0.08), radius: 60, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 16)
                               .padding(.bottom, 30)
                           
                           NavigationLink(destination:
                                           SignUpScreenView()
                               .navigationBarHidden(true),
                               label: {
                               Text("Sign Up")
                                   .font(.title3)
                                   .fontWeight(.bold)
                                   .foregroundColor(Color("PrimaryColor"))
                                   .padding()
                                   .frame(maxWidth: .infinity)
                                   .background(Color.white)
                                   .cornerRadius(50.0)
                                   .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0.0, y: 16)
                                   .padding(.vertical)                    })
                           
                       }
                       
                       Spacer()
                       Divider()
                       Spacer()
                       Text("Read our Terms & Conditions.")
                           .foregroundColor(Color("PrimaryColor"))
                       Spacer()
                       
                   }
                   .padding()
               }
    }
}

struct SignUpScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpScreenView()
    }
}
