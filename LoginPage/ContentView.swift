//
//  ContentView.swift
//  LoginPage
//
//  Created by Arturo Burigo on 12/14/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            
            Text("Login")
                .font(.largeTitle)
                .foregroundColor(.orange)
            InputStyle(content: "Email")
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















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
        
    }
}
