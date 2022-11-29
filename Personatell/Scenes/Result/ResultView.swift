//
//  ResultView.swift
//  Personatell
//
//  Created by Can on 28.11.2022.
//

import SwiftUI

struct ResultView: View {
    @EnvironmentObject var viewModel: QuestionsViewModel
    
    var body: some View {
        VStack(spacing: 12.0) {
            Spacer()
            Image(systemName: "person.fill.checkmark")
                .imageScale(.large)
                .foregroundColor(.purple)
            Text(viewModel.personalityResult)
              .fontWeight(.bold)
              .foregroundColor(.gray)
            Spacer()
            Button {
                viewModel.currentIndex = 0
                viewModel.score = 0
            } label: {
                Text("Retry")
            }
        }
        .padding()
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView()
    }
}
