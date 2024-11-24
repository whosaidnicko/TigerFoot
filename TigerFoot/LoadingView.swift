//
//  LoadingView.swift
//  TigerFoot
//
//  Created by Nicolae Chivriga on 24/11/2024.
//

import SwiftUI

struct LoadingView: View {
    @State var navigateToMenu: Bool = false
    var body: some View {
        ZStack {
            Image("loadingBg")
                .resizable()
                .ignoresSafeArea()
            
            NavigationLink("", destination: MenuView(), isActive: $navigateToMenu)
            VStack {
                LoadingAnimation()
                
                Spacer()
                
                Image("malenkiiTigreonok")
                    .resizable()
                    .scaledToFit()
            }
            .padding()
            
        }
        .onAppear() {
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                navigateToMenu = true 
            }
        }
    }
}
