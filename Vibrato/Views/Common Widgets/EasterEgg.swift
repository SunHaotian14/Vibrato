//
//  RecordMapView.swift
//  Vibrato
//
//  Created by Haotian SUN on 2022/1/13.
//

import SwiftUI

struct EasterEggView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 60)
            .padding(.all)
            .foregroundColor(.white)
            .frame(width: 400, height: 600)
            .blur(radius: 100, opaque: false)
            .shadow(radius: 50)
            .overlay(
        ZStack {
            Circle()
                .fill(Color.blue)
                .frame(width: 20, height: 20)
                .modifier(ParticlesModifier())
                .offset(x: -100, y : -50)
            
            Circle()
                .fill(Color.red)
                .frame(width: 20, height: 20)
                .modifier(ParticlesModifier())
                .offset(x: 60, y : 70)
            
            Circle()
                .fill(Color.yellow)
                .frame(width: 20, height: 20)
                .modifier(ParticlesModifier())
                .offset(x: 0, y : 0)
            
            VStack{
                Image("Cake")
                    .shadow(radius: 7)
                    .offset(y:50)
                Text("Hi SUN,")
                    .font(.system(size: 35))
                    .fontWeight(.regular)
                    .offset(x:-47,y: 70)
                LinearGradient(gradient: Gradient(colors: [.orange, .purple, .red, ]),
                               startPoint: .leading,
                               endPoint: .bottomTrailing)
                    .mask(Text("Happy\nBirthday!")
                            .font(.system(size: 50))
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                            .offset(y:-20))
            }
            .padding(.all)
            .cornerRadius(10)
        }
        )
        
    }
}

struct FireworkParticlesGeometryEffect : GeometryEffect {
    var time : Double
    var speed = Double.random(in: 20 ... 200)
    var direction = Double.random(in: -Double.pi ...  Double.pi)
    
    var animatableData: Double {
        get { time }
        set { time = newValue }
    }
    func effectValue(size: CGSize) -> ProjectionTransform {
        let xTranslation = speed * cos(direction) * time
        let yTranslation = speed * sin(direction) * time
        let affineTranslation =  CGAffineTransform(translationX: xTranslation, y: yTranslation)
        return ProjectionTransform(affineTranslation)
    }
}

struct ParticlesModifier: ViewModifier {
    @State var time = 0.0
    @State var scale = 0.1
    let duration = 5.0
    
    func body(content: Content) -> some View {
        ZStack {
            ForEach(0..<80, id: \.self) { index in
                content
                    .hueRotation(Angle(degrees: time * 80))
                    .scaleEffect(scale)
                    .modifier(FireworkParticlesGeometryEffect(time: time))
                    .opacity(((duration-time) / duration))
            }
        }
        .onAppear {
            withAnimation (.easeOut(duration: duration)) {
                self.time = duration
                self.scale = 1.0
            }
        }
    }
}

struct EasterEgg_Previews: PreviewProvider {
    static var previews: some View {
        EasterEggView()
    }
}
