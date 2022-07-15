//
//  ContentView.swift
//  Resume
//
//  Created by Kamil Skrzyński on 15/07/2022.
//

import SwiftUI

extension View {
    func resumeStyling() -> some View {
        self
            .padding(.horizontal)
            .padding(.bottom, 24)
    }
}

struct ResumeView: View {
    
    @StateObject private var vm = ViewModel()
    
    var body: some View {
        ZStack {
            Color(uiColor: .systemBackground)
                .ignoresSafeArea()
            ScrollView(showsIndicators: false) {
                HeaderView()
                    .resumeStyling()
                
                SkillsView()
                    .resumeStyling()
                
                JobsView()
                    .resumeStyling()
                
                ProjectsView()
                    .resumeStyling()
            }
        }
    }
}

struct ResumeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ResumeView()
                .preferredColorScheme(.light)
            ResumeView()
                .preferredColorScheme(.dark)
        }
    }
}
