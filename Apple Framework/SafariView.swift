//
//  SafariView.swift
//  Apple Framework
//
//  Created by Arman on 23/6/25.
//

import Foundation
import UIKit
import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable{
    let url: URL
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {
        
    }
    
}
