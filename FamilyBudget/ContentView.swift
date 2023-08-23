//
//  ContentView.swift
//  FamilyBudget
//
//  Created by M sreekanth  on 19/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .padding()
                .background(.red)
                .padding(24.0)
            VStack(alignment: .leading, spacing: 8.0) {
                Text("Welcome back!")
                    .font(.title)
                    .bold()
                Text("Let's login for tracking expenses")
                    .font(.headline)
                    .foregroundColor(.gray)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.bottom, 16.0)
            
            VStack {
                // Build Email and passward entry fields with envelop and lock icons on the left side for each field
                HStack {
                    Image(systemName: "envelope")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .padding(.leading, 8.0)
                    TextField("Email", text: .constant(""))
                }
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(8)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray, lineWidth: 1.8)
                )
                .padding(.bottom, 8.0)
                
                HStack {
                    Image(systemName: "lock")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .padding(.leading, 8.0)
                    TextField("Password", text: .constant(""))
                }
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(8)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray, lineWidth: 1.8)
                )
                .padding(.bottom, 8.0)
            }
            Text("Forgot Password?")
                .frame(maxWidth: .infinity, alignment: .trailing)
                .foregroundColor(.blue)
                .padding(.bottom, 16.0)
            
            Button("Sign In") {
                
            }
            .bold()
            .frame(maxWidth: .infinity)
            .frame(height: 50)
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
            
            LineView(text: "You can connect with")
                .padding(.top, 8.0)
                .padding(.bottom, 8.0)
            
            GoogleButton()
                .frame(maxWidth: .infinity)
                .padding(.bottom, 16.0)
            
            SignUpButton()
            Spacer()
        }
        .padding(24.0)
    }
}

// Design a line view accepts text in it and displays it in a line

struct LineView: View {
    var text: String
    var body: some View {
        ZStack {
            Rectangle()
                .frame(height: 1)
                .foregroundColor(.gray)
            Text(text)
                .font(.caption)
                .padding()
                .background(Color.white)
        }
    }
}

// Design Sign up with Google button

struct GoogleButton: View {
    var body: some View {
        HStack {
            Spacer()
            Image(systemName: "globe")
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
            Text("Sign Up with Google")
                .font(.title3)
                .bold()
            Spacer()
        }
        .padding()
        .background(Color.white)
        .cornerRadius(8)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color.gray, lineWidth: 1.8)
        )
    }
}

// Design Don't have account? Sign up button
struct SignUpButton: View {
    var body: some View {
        HStack {
            Text("Don't have an account?")
                .font(.caption)
            Text("Sign Up")
                .font(.caption)
                .bold()
                .foregroundColor(.blue)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


