//
//  RuleTigerView.swift
//  TigerFoot
//
//  Created by Nicolae Chivriga on 24/11/2024.
//


import SwiftUI

struct RuleTigerView: View {
    var body: some View {
        ZStack {
            Image("autobusBg")
                .resizable()
                .ignoresSafeArea()
            VStack {
                RoundedRectangle(cornerRadius: 25)
                    .fill(LinearGradient(colors: [Color.init(hex: "#E46E02"), Color.init(hex: "#DB5C01")], startPoint: .topLeading, endPoint: .bottomTrailing))
                    .background() {
                        VStack {
                            HStack {
                                Spacer()
                                Image("malenkiiTigreonok")
                                    .offset(y: -150)
                            }
                            Spacer()
                        }
                    }
                    .overlay {
                        Text("Players control a tiger sprinting through bustling city streets. The tiger leaps over cars, slides under scaffolding, and weaves through pedestrians and urban obstacles like trash cans and street signs. Along the way, players collect coins, power-ups (speed boosts, coin magnets, protective shields), and complete challenges such as 'jump over 10 obstacles' or 'run 500 meters without crashing.' The goal is to run as far as possible, set high scores, and explore the vibrant cityscape while avoiding obstacles.")
                            .multilineTextAlignment(.center)
                            .font(.system(size: 16, weight: .semibold, design: .monospaced))
                            .padding(.horizontal)
                            .foregroundStyle(.white)
                    }
                    .frame(height: 350)
                    .padding(.horizontal)
            }
        }
        .navigationBarBackButtonHidden()
        .navigationBarItems(leading: Back())
    }
}
extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }

        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}
