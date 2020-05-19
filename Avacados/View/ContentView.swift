//
//  ContentView.swift
//  Avacados
//
//  Created by Sandesh on 15/05/20.
//  Copyright © 2020 sandesh. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    //MARK:- PROPERTIES
    var headers: [Header] = headerData
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                //MARK:- HEADER
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(headers) { item in
                            HeaderView(header: item)
                        }
                        
                    }
                }
                
                
                //MARK: - FOOTER
                VStack(alignment: .center, spacing: 20) {
                    Text("All About Avocados")
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color("ColorGreenAdaptive"))
                        .padding(8)
                    
                    Text("Every thing you wanted to know about avocados but were too afraid to ask")
                        .font(.system(.body, design: .serif))
                        .foregroundColor(.gray)
                }
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(headers: headerData)
    }
}
