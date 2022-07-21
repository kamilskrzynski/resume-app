//
//  AppModel.swift
//  Resume
//
//  Created by Kamil Skrzyński on 15/07/2022.
//

import Foundation

final class ViewModel: ObservableObject {
    
    let myResume = Resume(
        name: "Kamil Skrzyński",
        role: "iOS Developer",
        location: "Olsztyn, Poland",
        description: "Self-taught iOS developer passionate about tech, UI/UX enthusiast.",
        skills:
            [
                Skill(
                    image: "iOS",
                    name: "iOS"
                ),
                Skill(
                    image: "Swift",
                    name: "Swift 5"
                ),
                Skill(
                    image: "UIUX",
                    name: "UI/UX"
                ),
                Skill(
                    image: "CoreData",
                    name: "CoreData"
                ),
                Skill(
                    image: "Firebase",
                    name: "Firebase"
                ),
            ],
        jobs: [
            Job(
                jobName: "Adidas Store",
                jobRole: "Deputy Manager",
                jobLocation: "Olsztyn, Poland",
                employmentTime: "March 2022 - Present"
            ),
            Job(
                jobName: "Nike Store",
                jobRole: "Deputy Manager",
                jobLocation: "Olsztyn, Poland",
                employmentTime: "Septemper 2020 - March 2022"
            ),
            Job(
                jobName: "Nike Store",
                jobRole: "Sales Trainer",
                jobLocation: "Olsztyn, Poland",
                employmentTime: "August 2018 - August 2020"
            ),
            Job(
                jobName: "Nike Store",
                jobRole: "Salesman",
                jobLocation: "Olsztyn, Poland",
                employmentTime: "July 2016 - August 2018"
            ),
        ],
        projects: [
            Project(
                appName: "Expense Tracker",
                appDescription: "Expense tracker app made with SwiftUI and CoreData. My app is copy of Five Cents App from AppStore.",
                githubLink: "https://github.com/kamilskrzynski/expenses-tracker"
            ),
            Project(
                appName: "SF Symbols",
                appDescription: "SF Symbols browser app.",
                githubLink: "https://github.com/kamilskrzynski/sfsymbols"
            ),
            Project(
                appName: "Crypto Tracker",
                appDescription: "Simple crypto tracking app made using SwiftUI, Combine and CoinGecko API.",
                githubLink: "https://github.com/kamilskrzynski/crypto-tracker"
            ),
            Project(
                appName: "Habit Tracker",
                appDescription: "Habit tracker app made with SwiftUI, JSONDecoder/Encoder, UserDefaults.",
                githubLink: "https://github.com/kamilskrzynski/habit-tracker"
            ),
            Project(
                appName: "Calculator",
                appDescription: "Recreated Apple's calculator app for iOS.",
                githubLink: "https://github.com/kamilskrzynski/calculator"
            ),
        ]
    )
}
