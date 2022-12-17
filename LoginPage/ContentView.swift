//
//  ContentView.swift
//  LoginPage
//
//  Created by Arturo Burigo on 12/14/22.
//

import SwiftUI

struct ContentView: View {
    @State var ToggleOn = true

    var body: some View {
        VStack {
            Spacer()
            Text("Login")
                .font(.largeTitle)
                .foregroundColor(.orange)
            InputStyle(content: "Email")
            PasswordField(content: "Password")
            Button(action:{}){
                Text("SignIn")
                    .foregroundColor(.black)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(.orange)
                    .cornerRadius(8)
            }
            Spacer() 
            Toggle(isOn: $ToggleOn, label: {
                HStack {
                    Image(systemName: "faceid")
                        .font(.system(size: 24))
                    Text("Face ID")
                        .font(.system(size: 24))
                }.foregroundColor(.blue)
            }).frame(width: 200)
            
        }
        .foregroundColor(.white)
        .padding()
        
    }
}


struct InputStyle: View {
    @State var username: String = ""
    @State var password: String = ""
    var content : String
    var body: some View {
        ZStack {
            TextField(content, text: $username)
                .padding()
                .background(.gray)
                .cornerRadius(8)
                .textInputAutocapitalization(.never)
                .disableAutocorrection(true)
        }
    }
}

struct PasswordField: View {
    @State var password: String = ""
    var content : String
    var body: some View {
        ZStack {
            SecureField(content, text: $password)
                .padding()
                .background(.gray)
                .cornerRadius(8)
                .textInputAutocapitalization(.never)
                .disableAutocorrection(true)
        }
    }
}















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
        
    }
}
