//
//  HomeView.swift
//  ShareContent
//
//  Created by David on 1/31/24.
//

import SwiftUI

struct HomeView: View {
    @State var showTheShareView = false
    
    var body: some View {
        switch showTheShareView{
        case false:
            Button {
                withAnimation {
                    showTheShareView.toggle()
                }
            } label: {
                Label("Share", systemImage: "square.and.arrow.up")
            }
            .frame(maxWidth: .infinity)
            .transition(.asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .leading)))

        case true:
            ShareView(showShareView: $showTheShareView)
                .transition(.asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .trailing)))
        }
    }
}

#Preview {
    HomeView()
}
