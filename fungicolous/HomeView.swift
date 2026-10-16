//
//  HomeView.swift
//  fungicolous
//
//  Created by minami on 2026/10/14.
//

import SwiftUI

extension Color{
    static let bisque=Color(red:255/255,green:228/255,blue:196/255)
}

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
                    Text("図鑑を見る").fontWeight(.bold).frame(maxWidth: .infinity).padding(.vertical,20).background(.green)
                    Text("標本を記録する").fontWeight(.bold).frame(maxWidth: .infinity).padding(.vertical,20).background(.yellow)
                    Text("学ぶ・調べる").fontWeight(.bold).frame(maxWidth: .infinity).padding(.vertical,20).background(.purple).foregroundStyle(.white)
                }.fontWeight(.bold).frame(width: geometry.size.width,height:geometry.size.height*0.25)
                HStack{
                    Text("コミュニティ").fontWeight(.bold).frame(maxWidth: .infinity).padding(.vertical,20).background(.red).foregroundStyle(.white)
                    Text("Web版を開く").fontWeight(.bold).frame(maxWidth: .infinity).padding(.vertical,20).background(.blue).foregroundStyle(.white)
                }.fontWeight(.bold).frame(width:geometry.size.width,height:geometry.size.height*0.25)
                Text("お知らせ")
            }
        }.background(Color.bisque)
    }
}

#Preview {
    HomeView()
}


