//
//  MorphView.swift
//  Animaciones
//
//  Created by Jacob Aguilar on 07-12-20.
//

import SwiftUI

struct MorphView: View {
    
    @State private var animationBegin = false
    @State private var animationCompleted = false
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: animationBegin ? 30 : 10)
                .frame(width: animationBegin ? 60 : 250, height: 60, alignment: .center)
                .foregroundColor(animationBegin ? .blue : .green)
                .overlay(
                    Image(systemName: "keyboard")
                        .font(.system(.largeTitle))
                        .foregroundColor(.white)
                        .scaleEffect(animationCompleted ? 0.5 : 1.0)
                )
            
//            RoundedRectangle(cornerRadius: animationBegin ? 40 : 20)
//                .stroke(lineWidth: 8)
//                .frame(width: animationBegin ? 80: 270, height: 80, alignment: .center)
//                .foregroundColor(animationBegin ? .blue : .green)
            
            
        }
        .offset(x: animationBegin ? 140 : 0, y: animationBegin ? 350 : 0)
        .onTapGesture {
            withAnimation(Animation.spring()) {
                self.animationBegin.toggle()
            }
            
            withAnimation(Animation.spring()) {
            //withAnimation(Animation.spring().repeatForever().delay(0.25)) {
                self.animationCompleted.toggle()
            }
        }
    }
}

struct MorphView_Previews: PreviewProvider {
    static var previews: some View {
        MorphView()
    }
}
