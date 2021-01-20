//
//  ButtonImage.swift
//  SOS-Test
//
//  Created by Joshua Retallick on 20/01/2021.
//

import SwiftUI

struct ButtonImage: View {
    var body: some View {
        ZStack {
            circleButton()
        }
    }
}

struct ButtonImage_Previews: PreviewProvider {
    static var previews: some View {
        ButtonImage()
    }
}

struct circleButton: View {
    
    @State var circleTapped = false
    @State var circlePressed = false
    
    var body: some View {
        ZStack {
            Text("HELP")
                .font(.system(size: 25, weight: .light))
                .offset(x: circlePressed ? -90 : 0, y: circlePressed ? -90 : 0)
                .rotation3DEffect(Angle(degrees: circlePressed ? 20 : 0),
                                  axis: (x: 10, y: -10, z: 0))
                .colorInvert()
        }
        .frame(width: 60, height: 60)
        .background(
            ZStack {
                Circle()
                    .fill(Color("Red"))
                    .frame(width: 150, height: 150)
                    .shadow(color: Color("LightShadow"), radius: 8, x: -8, y: -8)
                    .shadow(color: Color("DarkShadow"), radius: 8, x: 8, y: 8)
            }
        )
        .scaleEffect(circleTapped ? 1.2 : 1)
        .onTapGesture(count: 1) {
            self.circleTapped.toggle()
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                self.circleTapped = false
            }
        }
    }
}
