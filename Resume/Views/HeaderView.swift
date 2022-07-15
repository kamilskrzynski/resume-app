//
//  HeaderView.swift
//  Resume
//
//  Created by Kamil Skrzyński on 15/07/2022.
//

import SwiftUI

struct HeaderView: View {
    
    @StateObject private var vm = ViewModel()
    
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .frame(width: 105, height: 105)
                    .foregroundColor(.secondary)
                    .shadow(color: .secondary, radius: 2, x: 1, y: 1)
            Image("Picture")
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                
            }
            .padding(.top)
            VStack(spacing: 10) {
                VStack {
                    Text(vm.myResume.name)
                        .font(.title2)
                        .fontWeight(.semibold)
                    Text(vm.myResume.role)
                        .font(.title3)
                        .fontWeight(.medium)
                        .italic()
                        .foregroundColor(.primary.opacity(0.8))
                }
                HStack {
                    Image(systemName: "paperplane.fill")
                    Text(vm.myResume.location)
                        .fontWeight(.medium)
                }
                .font(.body)
                .foregroundColor(.primary.opacity(0.5))
                .padding(.bottom)
                Text(vm.myResume.description)
                    .foregroundColor(.primary.opacity(0.6))
                    .italic()
                    .fontWeight(.regular)
                    .padding(.horizontal)
            }
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
