//
//  HomeView.swift
//  T
//
//  Created by 吳浩瑋 on 2022/7/3.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        HStack {
            Spacer()
            VStack {
                VStack {
                    HStack(alignment: .bottom) {
                        Text("我的綠點")
                        Image("greenpoint_icon")
                            .resizable()
                            .frame(width: 50, height: 50)
                        Text("1,080")
                            .font(.system(size: 50))
                            .fontWeight(.bold)
                        Text("點")
                    }
                    CustomDivider(color: Color.secondary, height: 3)
                        .padding()
                    Spacer()
                }
                .frame(height: 350)
                .padding(10)
                .background(Color(red: 0.9, green: 0.9, blue: 0.9))
                .cornerRadius(20)
                .shadow(color: .secondary, radius: 8, x: 2, y: 2)

                HStack {
                    Button{
                        
                    }label: {
                        Button_template(title: "紀錄", subtitle: "碳排放", bgcolor: Color(red: 46 / 255 , green: 173 / 255, blue: 170 / 255), t:CGSize(width: 120, height: 200)).shadow(color: .secondary, radius: 2, x: 2, y: 2)
                    }
                    
                    Spacer()
                    NavigationLink {
                        Game()
                    }label: {
                        Button_template(title: "養藻減碳", subtitle: "我的藻類培養瓶", bgcolor: Color(red: 103 / 255 , green: 188 / 255, blue: 224 / 255), t:CGSize(width: 220, height: 200)).shadow(color: .secondary, radius: 2, x: 2, y: 2)
                    }.navigationBarTitleDisplayMode(.inline)
                    
                    
                }
                .frame(height: 200)
                Spacer()
                
            }.padding()
            Spacer()
        }
    }

}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .previewDevice("iPhone 11")
    }
}

struct CustomDivider: View {
    let color: Color
    let height: CGFloat
    
    init(color: Color = .gray.opacity(0.5), height: CGFloat = 0.5) {
        self.color = color
        self.height = height
    }

    var body: some View {
        Rectangle()
            .fill(color)
            .frame(height: height)
            .edgesIgnoringSafeArea(.horizontal)
    }
}

struct Button_template: View {
    
    var title: String
    var subtitle: String
    var bgcolor: Color
    var t: CGSize
    
    var body: some View {
        VStack() {
            Text(title)
                .font(.system(.largeTitle))
                .fontWeight(.bold)
                .foregroundColor(Color.white)
            Text(subtitle)
                .foregroundColor(Color.white)
        }
        .frame(maxWidth: t.width, minHeight: 0, idealHeight: t.height, maxHeight: .infinity)
        .padding(10)
        .background(bgcolor)
        .cornerRadius(20)
    }
}
