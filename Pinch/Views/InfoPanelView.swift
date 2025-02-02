//
//  InfoPanelView.swift
//  Pinch
//
//  Created by Abdelaziz Bennacer on 07/05/2024.
//

import SwiftUI

struct InfoPanelView: View {
    @State private var isInfoPanelVisible: Bool = false
    
    var scale: CGFloat
    var offset: CGSize
    
    var body: some View {
        HStack {
            // MARK: - HOTSPOT
            Image(systemName: "circle.circle")
                .symbolRenderingMode(.hierarchical)
                .resizable()
                .frame(width: 30, height: 30)
                .onLongPressGesture(minimumDuration: 1, perform: {
                    withAnimation(.easeOut) {
                        isInfoPanelVisible.toggle()
                    }
                })
            
            Spacer()
            
            // MARK: - INFO PANEL
            HStack(spacing: 2) {
                Image(systemName: "arrow.up.left.and.arrow.down.right")
                Text("\(scale)")
                Spacer()
                Image(systemName: "arrow.left.and.right")
                Text("\(offset.width)")
                Spacer()
                Image(systemName: "arrow.up.and.down")
                Text("\(offset.height)")
                Spacer()
            }
            .font(.footnote)
            .padding()
            .background(.ultraThinMaterial)
            .cornerRadius(8)
            .frame(maxWidth: 420)
            .opacity(isInfoPanelVisible ? 1 : 0)
            
            Spacer()
        }
    }
}

#Preview {
    InfoPanelView(scale: 1, offset: .zero)
        .previewLayout(.sizeThatFits)
        .padding()
}
