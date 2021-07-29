//
//  AnimatedGradientBackground.swift
//  gradientSamples
//
//  Created by Rodrigo Oliveira on 7/29/21.
//

import SwiftUI

struct AnimatedGradientBackground: View {
    
    let colors = [Color.blue, Color.purple, Color.pink, Color.pink, Color.red, Color.purple, Color.blue, Color.purple, Color.red, Color.purple, Color.pink, Color.pink]
    
    @State private var start = UnitPoint(x: 0, y: -2)
    @State private var end = UnitPoint(x: 4, y: 0)
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: colors), startPoint: start, endPoint: end)
            .animation(.easeInOut(duration: 3).repeatForever())
            .onAppear {
                self.start = UnitPoint(x: 4, y: 0)
                self.end = UnitPoint(x: 0, y: 2)
                self.start = UnitPoint(x: -4, y: 20)
                self.end = UnitPoint(x: 4, y: 0)
            }
    }
}

struct AnimatedGradientBackground_Previews: PreviewProvider {
    static var previews: some View {
        AnimatedGradientBackground()
    }
}
