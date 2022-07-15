//
//  JobsView.swift
//  Resume
//
//  Created by Kamil Skrzyński on 15/07/2022.
//

import SwiftUI

struct JobsView: View {
    
    @State private var isExpanded: Bool = false
    @StateObject private var vm = ViewModel()
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Experience")
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
                ForEach(vm.myResume.jobs, id: \.self) { job in
                    JobView(job: job)
                        .padding(.bottom)
                }
            }
        }
    }
}

struct JobsView_Previews: PreviewProvider {
    static var previews: some View {
        JobsView()
    }
}
