//
//  SwiftUIView.swift
//  Animaciones
//
//  Created by Jacob Aguilar on 02-12-20.
//

import SwiftUI

struct ProgressBarView: View {
    
    @State private var progress: CGFloat = 0.0
    @State private var size: CGFloat = 0.0
    @State private var isLoading = false
    
    var body: some View {
        ZStack() {
            
            VStack {
                Text("Cargando...")
                    .font(.system(size: 45, weight: .bold, design: .rounded))
                
                Text("\(Int(progress * 100))%")
                    .font(.system(size: 35, weight: .bold, design: .rounded))
            }
            
            RoundedRectangle(cornerRadius: 5)
                .stroke(Color(.systemGray4), lineWidth: 6)
                .frame(width: 300, height: 5, alignment: .center)
                .offset(x: 0, y: 60)
            
            RoundedRectangle(cornerRadius: 5)
                .stroke(Color(.systemPurple), lineWidth: 6)
                .frame(width: (size * 300), height: 5, alignment: .center)
                .offset(x: 0, y: 60)
                .animation(Animation.linear(duration: 2))
                .onAppear() {
                    Timer.scheduledTimer(withTimeInterval: 0.07, repeats: true) { timer in
                        self.progress += 0.01
                        self.size += 0.01
                        if self.progress >= 1.0 {
                            timer.invalidate()
                        }
                        
                    }
                }
            
        }
        
        
    }
}

struct ProgressBarView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBarView()
    }
}
