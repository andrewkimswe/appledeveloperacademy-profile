//
//  DetailView.swift
//  profile
//
//  Created by Jiwon Kim on 10/11/24.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        Text("Detail View")
            .navigationTitle("디테일 화면")
            .navigationBarTitleDisplayMode(.large)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
