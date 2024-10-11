//
//  ListView.swift
//  profile
//
//  Created by Jiwon Kim on 10/11/24.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        TabView {
            ProfileView().tabItem {
                Label("Personal Profile", systemImage: "person.crop.circle")
                NavigationLink{
                    DetailView()
                } label: {
                    
                }
            }
            TeamProfileView().tabItem {
                Label("Team Profile", systemImage: "person.3.fill")
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
