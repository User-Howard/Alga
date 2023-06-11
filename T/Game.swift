//
//  Game.swift
//  T
//
//  Created by 吳浩瑋 on 2022/7/3.
//

import SwiftUI

struct Game: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    
    var body: some View {
        ZStack {
            Color.accentColor
            VStack {
                Spacer()
                HStack {
                    Color.white
                }.frame(minWidth: 0, maxWidth: .infinity, maxHeight: 70)
                    .cornerRadius(20)
                    .padding(30)
                    .shadow(radius: 10)
                    .offset(x: 2, y: -5)
                
            }
        }
        .edgesIgnoringSafeArea([.top, .bottom])
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading:
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "chevron.backward")
                    .foregroundColor(.white)
                    .padding()
            })
        )
    }
}

struct Game_Previews: PreviewProvider {
    static var previews: some View {
        Game()
    }
}

struct TabItemData {
    let image: String
    let selectedImage: String
    let title: String
}

struct TabItemView: View {
    
    let data: TabItemData
    let isSelected: Bool
    
    
    var body: some View {
        VStack {
            Image(isSelected ? data.selectedImage : data.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 32, height: 32)
            
            Spacer().frame(height: 4)
            
            Text(data.title)
                .foregroundColor(isSelected ? .black : .gray)
                .font(.system(size: 14))
        }
    }
}

