//
//  LoadingAnimation.swift
//  TigerFoot
//
//  Created by Nicolae Chivriga on 24/11/2024.
//

import SwiftUI


struct LoadingAnimation: View {
    @State var startAnimation: Bool = false
    @State var loadingImgs: [String] = ["l", "o", "a", "d", "i", "n", "g"]
    var body: some View {
        VStack {
            Image("rotationCircleL")
                .rotationEffect(.degrees(startAnimation ? 360 : 0))
                .animation(Animation.linear(duration: 3).repeatForever(), value: startAnimation)
            
            HStack {
                ForEach(loadingImgs.indices, id: \.self) { index in
                    Image(loadingImgs[index])
                        .scaleEffect(startAnimation ? 1 : 0.7)
                        .animation(Animation.bouncy.delay(Double(index) / 4).repeatForever(), value:   startAnimation)
                }
            }
            .padding(.top, 200)
            
            .onAppear() { startAnimation = true }
            
        }
    }
}
