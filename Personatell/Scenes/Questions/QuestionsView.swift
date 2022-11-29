//
//  QuestionsView.swift
//  Personatell
//
//  Created by Can on 28.11.2022.
//

import SwiftUI

struct QuestionsView: View {
    @EnvironmentObject var viewModel: QuestionsViewModel
    
    @ViewBuilder
    var body: some View {
        if viewModel.isLoadingQuestion {
            ProgressView()
        } else {
            if viewModel.questions.isEmpty {
                EmptyView()
            } else {
                if viewModel.currentIndex < viewModel.questions.count {
                    Spacer()
                    Text(viewModel.currentQuestion.title)
                        .font(.system(size: 16))
                        .allowsTightening(true)
                        .foregroundColor(.red)
                        .lineLimit(5)
                        .multilineTextAlignment(.center)
                        .padding()
                    Spacer()
                    VStack(spacing: 25) {
                        ForEach(viewModel.currentQuestion.answers, id: \.title) { answer in
                            Button {
                                viewModel.currentIndex += 1
                                viewModel.score += answer.point
                                print(viewModel.currentIndex,
                                      viewModel.score)
                            } label: {
                                Text(answer.title)
                                    .font(.caption)
                            }
                            Divider()
                        }
                    }
                } else {
                    ResultView()
                }
            }
        }
    }
}

struct QuestionsView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionsView()
            .environmentObject(QuestionsViewModel())
    }
}
