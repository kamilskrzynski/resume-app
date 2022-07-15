//
//  JobView.swift
//  Resume
//
//  Created by Kamil Skrzyński on 15/07/2022.
//

import SwiftUI

struct JobView: View {
    
    let job: Job
    
    var body: some View {
        VStack(alignment: .leading) {
            Circle()
                .frame(width: 10, height: 10)
            
            HStack {
                RoundedRectangle(cornerRadius: 5)
                    .frame(width: 3)
                    .padding(.leading, 3)
                VStack(alignment: .leading) {
                    Text(job.jobName)
                        .font(.title3)
                        .fontWeight(.medium)
                    Text(job.jobRole)
                        .fontWeight(.medium)
                    Text(job.jobLocation)
                        .foregroundColor(.primary.opacity(0.8))
                    Text(job.employmentTime)
                        .italic()
                        .foregroundColor(.primary.opacity(0.6))
                        .fontWeight(.medium)
                }
                .padding(.leading)
            }
            .fixedSize()
        }
    }
}

struct JobView_Previews: PreviewProvider {
    static var previews: some View {
        JobView(job: Job(jobName: "Nike Store", jobRole: "Deputy Manager", jobLocation: "Olsztyn, Poland", employmentTime: "September 2020 - March 2022"))
    }
}
