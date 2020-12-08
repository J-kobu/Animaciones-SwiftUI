//
//  RetoBarraCargaView.swift
//  Animaciones
//
//  Created by Jacob Aguilar on 02-12-20.
//

import SwiftUI

struct RetoBarraCargaView: View {
    
    @State private var isLoading = false
    
    var body: some View {
        ZStack {
            Text("Cargando")
                .font(.system(size: 35, weight: .bold, design: .rounded))
                .offset(x: 0, y: -30)
            
            RoundedRectangle(cornerRadius: 5)
                .stroke(Color(.systemGray4), lineWidth: 6)
                .frame(width: 300, height: 5, alignment: .center)
            
            RoundedRectangle(cornerRadius: 5)
                .stroke(Color(.systemPurple), lineWidth: 6)
                .frame(width: 50, height: 5, alignment: .center)
                .offset(x: isLoading ? 125 : -125, y: 0)
                .animation(Animation.linear(duration: 2).repeatForever(autoreverses: false))
                .onAppear() {
                    self.isLoading = true
                }
                
        }
        
            
    }
}

struct RetoBarraCargaView_Previews: PreviewProvider {
    static var previews: some View {
        RetoBarraCargaView()
    }
}
