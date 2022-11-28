//
//  QuestionsView.swift
//  Personatell
//
//  Created by Can on 28.11.2022.
//

import SwiftUI

struct QuestionsView: View {
    var body: some View {
        VStack(spacing: 12.0) {
            Image(systemName: "person.fill.questionmark")
                .imageScale(.large)
                .foregroundColor(.purple)
            
            Button {
                
            } label: {
                Text("To Result")
            }
        }
        .padding()
    }
}

struct QuestionsView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionsView()
    }
}
