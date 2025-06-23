//
//  FrameworkGridViewModel.swift
//  Apple Framework
//
//  Created by Arman on 23/6/25.
//

import SwiftUI

final class FramworkGridViewModel: ObservableObject {
    var selectedFramework: Framework?
    {
        didSet {
            isShowingDetailView = true 
        }
    }
    @Published var isShowingDetailView = false
    
    
}
