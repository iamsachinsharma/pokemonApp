//
//  shape.swift
//  pokemonApp
//
//  Created by Sachin Sharma on 29/12/23.
//

import SwiftUI

struct shape: View {
    var body: some View {
        ZStack {
            ShapeWithArc()
                .rotation(Angle(degrees: 180))
                .fill(Color.gray.opacity(0.3))
                .clipShape(
                    RoundedRectangle(cornerRadius: 20)
                )
                .padding()
        }
        
    }
}

struct ShapeWithArc: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            //top left
            path.move(to: CGPoint(x: rect.minX, y: rect.minY))
            
            //top right
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
            
            //mid right
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))
            
            //bottom
            //top right
            path.addArc(
                center: CGPoint(x: rect.midX, y: rect.midY - 65),
                radius: rect.height / 2,
                startAngle: Angle(degrees: 0),
                endAngle: Angle(degrees: 180),
                clockwise: false)
            //path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
            
            //mid left
            path.addLine(to: CGPoint(x: rect.minX, y: rect.midY))
        }
    }
}

#Preview {
    shape()
}
