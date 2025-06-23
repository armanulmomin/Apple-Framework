//
//  ContentView.swift
//  Apple Framework
//
//  Created by Arman on 23/6/25.
//

import SwiftUI

struct FrameWorkGridView: View {
    
    @StateObject var viewModel = FramworkGridViewModel()
    
    let column: [GridItem] = [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: column) {
                    ForEach(MockData.frameworks)
                    {
                        framework in   FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                    
                    
                }
                .navigationTitle("Apple FrameWork")
                .sheet(isPresented: $viewModel.isShowingDetailView)
                {
                    FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework, isShowingDetailView: $viewModel.isShowingDetailView)
                }
            }
        }
        
    }
}

#Preview {
    FrameWorkGridView()
       
}

struct FrameworkTitleView: View {
    let framework : Framework
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90,height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
    
}
