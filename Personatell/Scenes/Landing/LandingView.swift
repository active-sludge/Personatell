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
    
    private let iconWidth = 150.0
    
    var body: some View {
        if shouldShowTest {
            QuestionsView()
        } else {
            VStack(spacing: 12.0) {
                Spacer()
                Image(systemName: "person.fill.questionmark")
                    .resizable()
                    .imageScale(.small)
                    .frame(width: iconWidth, height: iconWidth)
                    .foregroundColor(.purple)
                Text(viewModel.title)
                    .font(.headline)
                Text(viewModel.subtitle)
                    .font(.subheadline)
                Spacer()
                Button {
                    shouldShowTest = true
                } label: {
                    HStack {
                        Image(systemName: "play")
                        Text(verbatim: viewModel.buttonTitle)
                    }
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
