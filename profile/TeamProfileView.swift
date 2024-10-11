//
//  TeamProfileView.swift
//  MountainApp
//
//  Created by Jiwon Kim on 9/12/24.
//

import SwiftUI

struct TeamProfileView: View {
    @State private var isTextVisible = false
    
    let backgroundGradient = LinearGradient(
        colors: [Color.purple, Color.white],
        startPoint: .top, endPoint: .bottom)
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Image(systemName: "person.3.fill")
                .font(.system(size: 60))
                .foregroundColor(.blue)
                .scaleEffect(isTextVisible ? 1 : 0.5)
                .animation(.easeIn(duration: 1), value: isTextVisible)
            Image("Apple")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
                .scaleEffect(isTextVisible ? 1 : 0.5)
                .animation(.easeIn(duration: 1.2), value: isTextVisible)
            Text("Team Andrew")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.blue)
            Divider()
            HStack {
                Text("Apple Developer Academy@POSTECH")
                Spacer()
                Text("Foundation Program")
            }
            .font(.subheadline)
            .foregroundColor(.gray)
            .opacity(isTextVisible ? 1 : 0)
            .animation(.easeIn(duration: 1.8), value: isTextVisible)
            Text("문의는 DM으로 부탁드릴게요🙏")
                .font(.body)
                .foregroundColor(.secondary)
                .opacity(isTextVisible ? 1 : 0)
                .animation(.easeIn(duration: 2), value: isTextVisible)
        }
        .padding()
        .background(backgroundGradient)
        .cornerRadius(10)
        .shadow(radius: 10)
        .onAppear {
            isTextVisible = true
        }
    }
}

struct TeamProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
