//
//  ContentView.swift
//  gradientSamples
//
//  Created by Rodrigo Oliveira on 7/28/21.
//

import SwiftUI

struct ContentView: View {
    
    var brandGradient = Gradient(colors: [.gray, .orange, .red, .blue, .purple])
    
    var body: some View {
        VStack(spacing: 60) {
            Button {
                print("Linear gradient button tapped")
            } label: {
                Text("Linear gradient")
                    .bold()
                    .frame(width: 280, height: 50)
                    .foregroundColor(.white)
                    .background(LinearGradient(gradient: brandGradient, startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                    .clipShape(Capsule())
            }
            Button {
                print("Linear gradient button tapped")
            } label: {
                Text("Linear border")
                    .bold()
                    .frame(width: 280, height: 50)
                    .foregroundColor(.white)
                    .overlay(Capsule().stroke(LinearGradient(gradient: brandGradient, startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/), lineWidth: 2))
            }
            Button {
                print("Radial gradient button tapped")
            } label: {
                Text("Radial gradient")
                    .bold()
                    .frame(width: 150, height: 150)
                    .foregroundColor(.white)
                    .background(RadialGradient(gradient: brandGradient, center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, startRadius: 5, endRadius: 120))
                    .clipShape(Circle())
            }
            HStack(spacing: 20) {
                Button {
                    print("Angular Gradient button tapped")
                } label: {
                    Text("Angular gradient")
                        .bold()
                        .frame(width: 150, height: 150)
                        .foregroundColor(.white)
                        .background(AngularGradient(gradient: brandGradient, center: .center, startAngle: .zero, endAngle: .degrees(360)))
                        .clipShape(Circle())
                }
                Button {
                    print("Angular Gradient button tapped")
                } label: {
                    Text("Angular border")
                        .bold()
                        .frame(width: 150, height: 150)
                        .foregroundColor(.white)
                        .overlay(Circle().stroke(AngularGradient(gradient: brandGradient, center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, startAngle: .zero, endAngle: .degrees(360)), lineWidth: 2 ))
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        .background(Color.black)
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}
