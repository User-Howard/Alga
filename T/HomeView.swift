//
//  HomeView.swift
//  T
//
//  Created by 吳浩瑋 on 2022/7/3.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            
            // 主要
            MajorView()

            // 次要區域（紀錄、遊戲）
            MinorView()
            
            Spacer()
             
        }.padding()
            
    }

}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .previewDevice("iPhone 13 Pro Max")
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

struct ButtonTemplate: View {
    
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
        .frame(maxWidth: t.width, minHeight: 0, idealHeight: t.height, maxHeight: t.height)
        .padding()
        .background(bgcolor)
        .cornerRadius(20)
    }
}

struct RingShape: Shape {
    
    var startAngle: Double = -0.25
    var progress: Double = 0.0
    var thickness: CGFloat = 30.0
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addArc(center: CGPoint(x: rect.width / 2.0, y: rect.height / 2.0), radius: min(rect.width, rect.height) / 2.0,startAngle: .degrees(startAngle*360),endAngle: .degrees(360 * progress+startAngle*360), clockwise: false)
        
        return path.strokedPath(.init(lineWidth: thickness, lineCap: .round))
    }
}

struct HistoryView: View {
    var body: some View {
        VStack {
            Color.accentColor
        }.edgesIgnoringSafeArea([.top, .bottom])
        
    }
}

struct MajorView: View {
    var body: some View {
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
            HStack {
                ZStack {
                    RingShape(startAngle: 0, progress: 0.4, thickness: 1)                        .stroke(Color("MainLightRed"), lineWidth: 25)
                    RingShape(startAngle: 0.4, progress: 0.3, thickness: 1)                        .stroke(Color("MainLightYellow"), lineWidth: 25)
                    RingShape(startAngle: 0.7, progress: 0.3, thickness: 1)                        .stroke(Color("MainLightBlue"), lineWidth: 25)

                    
                }.frame(width: 170, height: 170)
                    .padding()
                
                Color.secondary
                    .cornerRadius(20)
            }
            Spacer()
        }
        .frame(height: 350)
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(20)
    }
}

struct MinorView: View {
    
    @State var showHistoryView: Bool = false
    
    
    var body: some View {
        HStack {
            Button{
                showHistoryView = true
            }label: {
                ButtonTemplate(title: "紀錄", subtitle: "碳排放", bgcolor: Color(red: 46 / 255 , green: 173 / 255, blue: 170 / 255), t:CGSize(width: 120, height: 200))
            }
            .sheet(isPresented: $showHistoryView, content: {
                HistoryView()
            })
            
            Spacer()
            NavigationLink {
                Game()
            }label: {
                ButtonTemplate(title: "養藻減碳", subtitle: "我的藻類培養瓶", bgcolor: Color(red: 103 / 255 , green: 188 / 255, blue: 224 / 255), t:CGSize(width: 220, height: 200))
            }.navigationBarTitleDisplayMode(.inline)
            
        }
    }
}
