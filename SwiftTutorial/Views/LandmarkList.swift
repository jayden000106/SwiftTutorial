//
//  LandmarkList.swift
//  SwiftTutorial
//
//  Created by 정지혁 on 2022/04/07.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .previewDevice("iPhone SE (3rd generation)")
        LandmarkList()
            .previewDevice("iPhone 13 Pro Max")
    }
}
