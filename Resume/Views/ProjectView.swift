//
//  ProjectView.swift
//  Resume
//
//  Created by Kamil Skrzyński on 15/07/2022.
//

import SwiftUI

struct ProjectView: View {
    
    var project: Project
    @State private var showGithub: Bool = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(project.appName)
                .font(.title3)
                .fontWeight(.medium)
                .padding(.top)
            Text(project.appDescription)
                .foregroundColor(.primary.opacity(0.8))
                .italic()
                .padding(.top)
            Link(destination: URL(string: project.githubLink)!) {
                Image("GitHub")
                    .resizable()
                    .frame(width: 75, height: 40)
            }
        }
    }
}

struct ProjectView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectView(project: Project(appName: "Calculator", appDescription: "Lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum ", githubLink: "https://github.com/kamilskrzynski/calculator"))
    }
}
