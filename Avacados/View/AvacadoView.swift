//
//  AvacadoView.swift
//  Avacados
//
//  Created by Sandesh on 16/05/20.
//  Copyright © 2020 sandesh. All rights reserved.
//

import SwiftUI

struct AvacadoView: View {
    var body: some View {
        VStack {
            Spacer()
            Image("avocado")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 240, height: 240)
                .shadow(color: Color("ColorBlackTransperantDark"), radius: 12, x: 0, y: 8)
            VStack {
                Text("Avocados")
                    .font(.system(size: 42, weight: .bold, design: .serif))
                    .foregroundColor(Color.white)
                    .padding()
                    .shadow(color: Color("ColorBlackTransperantDark"), radius: 4, x: 0, y: 4)
                
                Text("""
Creamy, green, and full of nutrients!
 Avocado is a powerhouse ingredient at any meal.Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more!
""")
                .lineLimit(nil)
                    .font(.system(.headline, design: .serif))
                    .foregroundColor(Color("ColorGreenLight"))
                    .multilineTextAlignment(.center)
                .lineSpacing(8)
                    .frame(maxWidth: 640, minHeight: 120)
            }
            .padding()
            Spacer()
        }
            
        .background(
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
        )
            .edgesIgnoringSafeArea(.all)
    }
}

struct AvacadoView_Previews: PreviewProvider {
    static var previews: some View {
        AvacadoView()
        .previewDevice("iPhone 11 Pro")
            .environment(\.colorScheme, .dark)
    }
}


struct AvacadoView_Preview: PreviewProvider {
    static var previews: some View {
        AvacadoView()
        .previewDevice("iPad Pro (9.7-inch)")
            .environment(\.colorScheme, .light)
    }
}
