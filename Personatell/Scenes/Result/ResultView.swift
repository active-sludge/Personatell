//
//  ResultView.swift
//  Personatell
//
//  Created by Can on 28.11.2022.
//

import SwiftUI

struct ResultView: View {
    var body: some View {
        VStack(spacing: 12.0) {
            Image(systemName: "person.fill.questionmark")
                .imageScale(.large)
                .foregroundColor(.purple)
            
            Button {
                
            } label: {
                Text("To Landing")
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
