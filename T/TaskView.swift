//
//  TaskView.swift
//  T
//
//  Created by 吳浩瑋 on 2022/7/3.
//

import SwiftUI

struct TaskView: View {
    
    @State private var isPlaying: Bool = true;
    
    var body: some View {
        
        ZStack {
            Color.accentColor
        }
    }
}

struct TaskView_Previews: PreviewProvider {
    static var previews: some View {
        TaskView()
            .previewDevice("iPhone 11")
            
    }
}
