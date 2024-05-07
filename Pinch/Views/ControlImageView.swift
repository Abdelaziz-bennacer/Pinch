//
//  ControlImageView.swift
//  Pinch
//
//  Created by Abdelaziz Bennacer on 07/05/2024.
//

import SwiftUI

struct ControlImageView: View {
    let icon: String
    
    var body: some View {
        Image(systemName: icon)
            .font(.system(size: 36))
    }
}

#Preview {
    ControlImageView(icon: "minus.magnifyingglass")
}
