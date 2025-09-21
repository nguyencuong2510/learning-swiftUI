//
//  MatchedGeometryEffectBootcamp.swift
//  LearningSwiftUI
//
//  Created by nguyen cuong on 21/9/25.
//

import SwiftUI

struct MatchedGeometryEffectBootcamp: View {
    @State private var isClicked = false
    @Namespace private var namespace

    var body: some View {
        VStack {
            if !isClicked {
                RoundedRectangle(cornerRadius: 25)
                    .matchedGeometryEffect(id: "rectangle", in: namespace)
                    .frame(width: 100, height: 100)
            }

            Spacer()
            
            if isClicked {
                RoundedRectangle(cornerRadius: 25)
                    .matchedGeometryEffect(id: "rectangle", in: namespace)
                    .offset(x: -(UIScreen.main.bounds.width/2 - 50), y: 0)
                    .frame(width: 100, height: 100)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.red)
        .onTapGesture {
            withAnimation(.easeInOut) {
                isClicked.toggle()
            }
        }
        .clipped()
    }
}

struct MatchedGeometryEffectBootcamp2: View {
    
    let categories: [String] = ["Nguyen", "Van", "Cuong"]
    
    @Namespace private var namespace
    @State private var selected: String = "Nguyen"

    var body: some View {
        HStack {
            ForEach(categories, id: \.self) { categorie in
                ZStack(alignment: .bottom) {
                    if selected == categorie {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.red)
                            .matchedGeometryEffect(id: "category_background", in: namespace)
                            .frame(width: 35, height: 2)
                            .offset(y: 10)
                    }
                    
                    Text(categorie)
                        
                }
                .frame(maxWidth: .infinity)
                .frame(height: 55)
                .onTapGesture {
                    withAnimation(.spring()) {
                        selected = categorie
                    }
                }
            }
          
        }
        .padding()
        .clipped()
    }
}

#Preview {
    MatchedGeometryEffectBootcamp2()
}
