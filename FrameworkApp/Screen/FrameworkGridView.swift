//
//  FrameworkGridView.swift
//  FrameworkApp
//
//  Created by Bhavin  Oza on 2/18/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        // using navigation stack as a dataAPI for passing details and data
//        NavigationStack {
//            ScrollView {
//                LazyVGrid(columns: viewModel.columns) {
//                    ForEach(MockData.frameworks) { frmwrk in
//                        NavigationLink(value: frmwrk) {
//                            FrameworkTitleView(framework: frmwrk)
//                        }
//                    }
//                }
//            }
//            .navigationTitle("Apple Frameworks")
//            .navigationDestination(for: Framework.self) { framework in
//                FrameworkDetailView(frmwrk: framework)// remove this property isShowingDetailView from the detailview since we dont need it
//            }
//        }
        
        
        NavigationView {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { frmwrk in//id: \.id) { content in //id only needed if the struct obj is not conforming to identifiable
                        FrameworkTitleView(framework: frmwrk)
                            .onTapGesture {
                                viewModel.selectedFrmwrk = frmwrk
                            }
                    }
                }
//                .scenePadding()
            }
            .navigationTitle("Apple Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView, content: {
                FrameworkDetailView(frmwrk: viewModel.selectedFrmwrk ?? MockData.sampleFramework, isShowingDetailView: $viewModel.isShowingDetailView)
            })
        }
    }
}
