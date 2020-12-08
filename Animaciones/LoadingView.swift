//
//  LoadingView.swift
//  Animaciones
//
//  Created by Jacob Aguilar on 02-12-20.
//

import SwiftUI

struct LoadingView: View {
    
    @State private var isLoading = false
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(Color(.systemGray6), lineWidth: 16)
                .frame(width: 150, height: 150, alignment: .center)
            
            Circle()
                .trim(from: 0.0, to: 0.85) //Recordar que trim, nos parte el circulo. //Debemos poner luego un stroke, para que nos quede similar a un círculo de carga
                .stroke(Color.green, lineWidth: 10)
                .frame(width: 150, height: 150, alignment: .center)
                .rotationEffect(Angle(degrees: isLoading ? 360 : 0))
                .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false))
                .onAppear() { //el modificador onAppear indica que se ejecutará al aparecer
                    self.isLoading = true
                }
        }
        
        
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
