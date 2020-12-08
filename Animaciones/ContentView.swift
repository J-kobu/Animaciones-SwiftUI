//
//  ContentView.swift
//  Animaciones
//
//  Created by Jacob Aguilar on 01-12-20.
//

import SwiftUI

struct ContentView: View {
    
    @State private var buttonColorChanged = false
    @State private var iconColorChanged = false
    @State private var iconSizeChanged = false
    
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 180, height: 180, alignment: .center)
                .foregroundColor(buttonColorChanged ? Color(.systemGray4) : .green)
                //.animation(.default) //Añadimos el modificador animation para que realice la animación //.default indica que hará la transición que trae swift por defecto
            
            Image(systemName: "keyboard")
                .font(.system(size: 80))
                .foregroundColor(iconColorChanged ? .green : Color(.systemGray6))
                .scaleEffect(iconSizeChanged ? 1.0 : 0.5)
               // .animation(.default)
            //Podemos añadir la animación (.animation) a cada una de las vistas, o, podemos añadirsela a la Stack, y dejarle el trabajo a Swift
        }
        //.animation(.spring(response: 0.5, dampingFraction: 0.4, blendDuration: 0.5)) //response: tiempo de respuesta //Esto es una animación implicita
        .onTapGesture { //Este modificador nos permite darle la funcionalidad a nuestro difujo como si fuera un botón
            withAnimation(.spring(response: 0.5, dampingFraction: 0.4, blendDuration: 0.5)) { //De esta manera utilizamos las animaciones implícitas. La gracia es que podemos ponder los modificadores fuera de la animación y da otro efecto.(Linea 37)
                self.buttonColorChanged.toggle() //recordar que toggle nos cambia el estado 
                self.iconColorChanged.toggle()
                self.iconSizeChanged.toggle()
            }
            //self.iconSizeChanged.toggle()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
