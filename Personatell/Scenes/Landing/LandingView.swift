//
//  LandingView.swift
//  Personatell
//
//  Created by Can on 28.11.2022.
//

import SwiftUI

struct LandingView: View {
    @State var shouldShowTest: Bool = false
    
    var body: some View {
        if shouldShowTest {
            QuestionsView()
                .environmentObject(QuestionsViewModel())
        } else {
            VStack(spacing: 12.0) {
                Spacer()
                Image(systemName: "person.fill.questionmark")
                    .imageScale(.small)
                    .foregroundColor(.purple)
                Text("Welcome to your personality test!")
                    .font(.headline)
                Text("Find out whether you are an introvert or an extrovert.")
                    .font(.subheadline)
                Spacer()
                Button {
                    shouldShowTest = true
                } label: {
                    HStack {
                        Image(systemName: "play")
                        Text(verbatim: "Start")
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
