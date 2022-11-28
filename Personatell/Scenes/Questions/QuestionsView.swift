//
//  QuestionsView.swift
//  Personatell
//
//  Created by Can on 28.11.2022.
//

import SwiftUI

struct QuestionsView: View {
    @EnvironmentObject var questionsViewModel: QuestionsViewModel
    
    var body: some View {
        Spacer()
        Text("Question")
            .font(.system(size: 64))
            .allowsTightening(true)
            .foregroundColor(.red)
            .lineLimit(5)
            .multilineTextAlignment(.center)
        Spacer()
        VStack(spacing: 25) {
            ForEach(0 ..< 4) { index in
                Button {
                    questionsViewModel.currentIndex += 1
                    questionsViewModel.score += 2
                    print(questionsViewModel.currentIndex, questionsViewModel.score)
                } label: {
                    Text("Answer")
                        .font(.largeTitle)
                }
                Divider()
            }
        }
    }
}

struct QuestionsView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionsView()
    }
}
