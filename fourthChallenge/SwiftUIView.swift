//
//  SwiftUIView.swift
//  fourthChallenge
//
//  Created by Bruno Nascimento on 08/04/22.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        VStack {
            GeometryReader {
                size in
                
                Rectangle()
                    .frame(height: size.size.height / 3)
                    .padding(.horizontal)
            }
        }
    }
    
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
