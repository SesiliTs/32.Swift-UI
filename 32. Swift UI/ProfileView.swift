//
//  ContentView.swift
//  32. Swift UI
//
//  Created by Sesili Tsikaridze on 06.12.23.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var nameTextField = ""
    @State private var emailTextField = ""
    @State private var passwordTextField = ""
    @State private var dateTextField = ""
    @State private var countryTextField = ""
    
    var body: some View {
        
        VStack(spacing: 23) {
            
            VStack(spacing: 23) {
                HStack {
                    
                    Button(action: {}) {
                        Image("BackButtonArrow")
                            .renderingMode(.original)
                    }
                    Spacer()
                    Text("Edit Profile")
                        .font(.system(size: 20, weight: .bold))
                    Spacer()
                }
                
                Image("ProfileImage")
                    .resizable()
                    .frame(width: 175, height: 175)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(.darkBlue, lineWidth: 1)
                            .frame(width: 180, height: 180)
                    )
                    .overlay(
                        Image("CameraIcon")
                            .frame(width: 20, height: 20)
                            .position(x: 150, y: 150)
                    )
            }
            
            VStack(spacing: 15) {
                
                VStack(alignment: .leading, spacing: 11) {
                    Text("Name")
                        .font(.system(size: 16, weight: .bold))
                    
                    TextField("", text: $nameTextField)
                        .frame(height: 44)
                        .overlay(
                            RoundedRectangle(cornerRadius: 6)
                                .stroke(Color.gray, lineWidth: 1)
                                .opacity(0.14)
                        )
                }
                
                VStack(alignment: .leading, spacing: 11) {
                    Text("Email")
                        .font(.system(size: 16, weight: .bold))
                    
                    TextField("", text: $emailTextField)
                        .frame(height: 44)
                        .overlay(
                            RoundedRectangle(cornerRadius: 6)
                                .stroke(Color.gray, lineWidth: 1)
                                .opacity(0.14)
                        )
                }
                
                VStack(alignment: .leading, spacing: 11) {
                    Text("Password")
                        .font(.system(size: 16, weight: .bold))
                    
                    SecureField("", text: $passwordTextField)
                        .frame(height: 44)
                        .overlay(
                            RoundedRectangle(cornerRadius: 6)
                                .stroke(Color.gray, lineWidth: 1)
                                .opacity(0.14)
                        )
                }
                
                VStack(alignment: .leading, spacing: 11) {
                    Text("Date of Birth")
                        .font(.system(size: 16, weight: .bold))
                    
                    TextField("", text: $dateTextField)
                        .frame(height: 44)
                        .overlay(
                            RoundedRectangle(cornerRadius: 6)
                                .stroke(Color.gray, lineWidth: 1)
                                .opacity(0.14)
                        )
                }
                
                VStack(alignment: .leading, spacing: 11) {
                    Text("Country/Region")
                        .font(.system(size: 16, weight: .bold))
                    
                    TextField("", text: $countryTextField)
                        .frame(height: 44)
                        .overlay(
                            RoundedRectangle(cornerRadius: 6)
                                .stroke(Color.gray, lineWidth: 1)
                                .opacity(0.14)
                        )
                }
            }
            
            Button("Save Changes") {
            }
            .frame(width: 221, height: 45)
            .font(.system(size: 20, weight: .semibold))
            .foregroundStyle(.white)
            .background(.darkBlue)
            .cornerRadius(6)
        }
        .padding(.horizontal, 24)
        .padding(.top, 26)
    }
}

#Preview {
    ProfileView()
}

