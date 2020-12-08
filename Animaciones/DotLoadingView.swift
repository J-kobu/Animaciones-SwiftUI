//
//  DotLoadingView.swift
//  Animaciones
//
//  Created by Jacob Aguilar on 03-12-20.
//

import SwiftUI

struct DotLoadingView: View {
    
    @State private var isLoading = false
    
    var body: some View {
        HStack {
            ForEach(0...5, id: \.self) { index in //index es la variable que va recorriendo el ForEach y esta es la que irá de 0 a 5
                Circle()
                    .frame(width: 16, height: 16, alignment: .center)
                    .foregroundColor(.red)
                    .scaleEffect(self.isLoading ? 0 : 1) //scaleEffect se utiliza para reducir el tamaño de la escala de un objeto. 1 es el tamaño normal
                    .animation(Animation .linear(duration: 0.8).repeatForever().delay(Double(index)/6)) //Sin el delay, todos los puntos se agrandan y se achican al mismo tiempo
            }
        }.onAppear() {
            self.isLoading = true
        }
    }
}

struct DotLoadingView_Previews: PreviewProvider {
    static var previews: some View {
        DotLoadingView()
    }
}
