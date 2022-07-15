//
//  ResumeModel.swift
//  Resume
//
//  Created by Kamil Skrzyński on 15/07/2022.
//

import Foundation

struct Resume: Hashable {
    let name: String
    let role: String
    let location: String
    let description: String
    let skills: [Skill]
    let jobs: [Job]
    let projects: [Project]
}

struct Skill: Hashable {
    let image: String
    let name: String
}

struct Job: Hashable {
    let jobName: String
    let jobRole: String
    let jobLocation: String
    let employmentTime: String
}

struct Project: Hashable {
    let appName: String
    let appDescription: String
    let githubLink: String
}
