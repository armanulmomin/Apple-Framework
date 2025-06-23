//
//  AFButton.swift
//  Apple Framework
//
//  Created by Arman on 23/6/25.
//

import SwiftUI

struct AFButton: View {
    var body: some View {
        Text("Learn More")
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

#Preview {
    AFButton()
}
