//
//  LandingView.swift
//  Personatell
//
//  Created by Can on 28.11.2022.
//

import SwiftUI

struct LandingView: View {
    @State var shouldShowTest: Bool = false
    private var viewModel = LandingViewModel()
    
    var body: some View {
        if shouldShowTest {
            QuestionsView()
        } else {
            VStack(spacing: 12.0) {
                Image(systemName: "person.fill.questionmark")
                    .imageScale(.large)
                    .foregroundColor(.purple)
                Text(viewModel.title)
                    .font(.headline)
                Text(viewModel.subtitle)
                    .font(.subheadline)
                Button {
                    shouldShowTest = true
                } label: {
                    Text(viewModel.buttonTitle)
                }
            }
            .padding()
        }
    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        LandingView()
    }
}
