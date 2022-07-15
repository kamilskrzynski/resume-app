//
//  SkillView.swift
//  Resume
//
//  Created by Kamil Skrzyński on 15/07/2022.
//

import SwiftUI

struct SkillView: View {
    
    let skill: Skill
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.primary.opacity(0.1))
                .frame(width: 100, height: 100)
            
            VStack {
                Image(skill.image)
                    .resizable()
                    .frame(width: 40, height: 40)
                Text(skill.name)
                    .font(.subheadline)
                    .fontWeight(.medium)
            }
        }
    }
}

struct SkillView_Previews: PreviewProvider {
    static var previews: some View {
        SkillView(skill: Skill(image: "iOS", name: "iOS"))
    }
}
