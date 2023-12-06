//
//  ChatView.swift
//  32. Swift UI
//
//  Created by Sesili Tsikaridze on 06.12.23.
//

import SwiftUI

struct Person: Identifiable {
    var id = UUID()
    let name: String
    let message: String
    let time: String
    let image: Image
}

struct ChatView: View {
    
    @State private var peopleArray = [
        Person(name: "Levi", message: "Give up on your dream and die!", time: "today", image: Image("Levi")),
        Person(name: "Hange", message: "Ahhh!! Titans truly are incredible", time: "yesterday", image: Image("Hange")),
        Person(name: "Kenny", message: "Everyone was a slave to something.", time: "20:25", image: Image("Kenny")),
        Person(name: "Erwin", message: "My Soldiers, Rage! My Soldiers, Scream!", time: "06:55", image: Image("Erwin")),
        Person(name: "Kruger", message: "The only truth on this world is that there is no truth", time: "yesterday", image: Image("Kruger")),
        Person(name: "Reiner", message: "I'm the Armored Titan and he's the Colossal Titan", time: "today", image: Image("Reiner")),
        Person(name: "Zeke", message: "Well the first pitch was a warmup. I'm going for the perfect game", time: "yesterday", image: Image("Zeke")),
        Person(name: "Willy", message: "To the enemy forces on Paradis, this is a declaration of war!!", time: "10.09.45", image: Image("Willy")),
        Person(name: "Mikasa", message: "The world is cruel, yet beautiful", time: "today", image: Image("Mikasa")),
        Person(name: "Jean", message: "I just don't want those charred bones i saw to be disappointed in me", time: "yesterday", image: Image("Jean"))
    ]
    
    @State private var showingAlert = false
    
    var body: some View {
        
        ZStack {
            Color.appDarkGrey
                .ignoresSafeArea()
            
            VStack(spacing: 34) {
                
                Text("Chat")
                    .font(.system(size: 17, weight: .bold))
                    .foregroundColor(.white)
                
                ScrollView {
                    ForEach(peopleArray) { person in
                        HStack(spacing: 10) {
                            person.image
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                            
                            VStack(alignment: .leading, spacing: 4) {
                                
                                HStack {
                                    Text(person.name)
                                        .font(.system(size: 17))
                                    Spacer()
                                    Text(person.time)
                                        .font(.system(size: 12, weight: .light))
                                        .opacity(0.5)
                                }
                                Text(person.message)
                                    .font(.system(size: 12, weight: .light))
                                    .opacity(0.5)
                                    .lineLimit(1)
                            }
                        }
                        .padding(.vertical, 12)
                    }
                    
                }
                .colorScheme(.dark)
                
                
                Button("Clear Chat") {
                    peopleArray.removeAll()
                    showingAlert = true
                }
                .alert("messages deleted successfully", isPresented: $showingAlert) {
                            Button("OK", role: .cancel) { }
                        }
                .frame(width: 221, height: 45)
                .font(.system(size: 20, weight: .semibold))
                .foregroundStyle(.white)
                .background(.darkBlue)
                .cornerRadius(6)
            }
            .padding(.all, 16)
        }
    }
}

#Preview {
    ChatView()
}
