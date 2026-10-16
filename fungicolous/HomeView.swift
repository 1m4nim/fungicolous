//
//  HomeView.swift
//  fungicolous
//
//  Created by minami on 2026/10/14.
//

import SwiftUI

struct HomeView:View{
    var body: some View{
        GeometryReader{geometry in
            VStack{
                ZStack{
                    Image("backgroundImg").resizable().scaledToFill().frame(width:geometry.size.width,height: geometry.size.height*0.15).clipped()
                    Text("Fungicolous fungi \n 菌寄生菌の世界を身近に").foregroundStyle(.white).shadow(color:.black.opacity(0.7),radius: 5).background(.brown)
                    //検索のやつを入れたい
                }
                HStack{
                    Text("図鑑を見る")
                    Text("標本を記録する")
                    Text("学ぶ・調べる")
                }
                HStack{
                    Text("コミュニティ")
                    Text("WEB版を開く")
                }
                Text("お知らせ")
            }
        }
    }
}

#Preview {
    HomeView()
}


