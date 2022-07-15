//
//  SkillsView.swift
//  Resume
//
//  Created by Kamil Skrzyński on 15/07/2022.
//

import SwiftUI

struct SkillsView: View {
    
    @State private var isExpanded: Bool = false
    @StateObject private var vm = ViewModel()
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Skills")
                    .font(.title3)
                    .fontWeight(.medium)
                Button {
                    withAnimation(.easeInOut(duration: 0.3)) {
                        isExpanded.toggle()
                    }
                } label: {
                    Image(systemName: "chevron.down")
                        .rotationEffect(isExpanded ? .degrees(180) : .zero)
                }
                Spacer()
            }
            .font(.title3)
            .foregroundColor(.primary.opacity(0.8))
            
            if isExpanded {
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem()], alignment: .center, spacing: 15) {
                ForEach(vm.myResume.skills, id: \.self) { skill in
                        SkillView(skill: skill)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct SkillsView_Previews: PreviewProvider {
    static var previews: some View {
        SkillsView()
    }
}
