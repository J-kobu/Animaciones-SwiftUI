//
//  ProgressView.swift
//  Animaciones
//
//  Created by Jacob Aguilar on 02-12-20.
//

import SwiftUI

struct ProgressView: View {
    
    @State private var progress: CGFloat = 0.0
    
    var body: some View {
        ZStack {
            Text("\(Int(progress * 100))%")
                .font(.system(size: 40, weight: .bold, design: .rounded))
            
            Circle()
                .stroke(Color(.systemGray4), lineWidth: 14)
                .frame(width: 150, height: 150, alignment: .center)
            
            Circle()
                .trim(from: 0, to: progress)
                .stroke(Color(.systemGreen), lineWidth: 13)
                .frame(width: 150, height: 150, alignment: .center)
                .rotationEffect(Angle(degrees: -90))
        }
        .onAppear() {
            Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
                self.progress += 0.01
                if self.progress >= 1.0 {
                    timer.invalidate()
                }
            }
        }
        
    }
}

struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView()
    }
}
