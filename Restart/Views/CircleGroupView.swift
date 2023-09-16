//
//  CircleGroupView.swift
//  Restart
//
//  Created by Prathap Reddy on 17/09/23.
//

import SwiftUI

struct CircleGroupView: View {
    // MARK: - PROPERTY
    
    @State var shapeColor: Color
    @State var shapeOpacity: Double
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(shapeColor.opacity(shapeOpacity), lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
            Circle()
                .stroke(shapeColor.opacity(shapeOpacity), lineWidth: 80)
                .frame(width: 260, height: 260, alignment: .center)
        } //: ZSTACK
    }
}

// MARK: - PREVIEW

struct CircleGroupView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            
            Color("ColorBlue")
                .ignoresSafeArea(.all, edges: .all)
            
            CircleGroupView(shapeColor: .white, shapeOpacity: 0.2)
        }
    }
}
