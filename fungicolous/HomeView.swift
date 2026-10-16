//
//  HomeView.swift
//  fungicolous
//
//  Created by minami on 2026/10/14.
//

import SwiftUI

extension Color{
    static let bisque=Color(red:255/255,green:228/255,blue:196/255)
    static let ForesGreen=Color(red:53/255,green:94/255,blue: 75/255)
    static let SandBeige=Color(red:216/255,green: 199/255,blue: 163/255)
    static let RussetBrown=Color(red:139/255,green: 94/255,blue: 75/255)
    static let SageGreen=Color(red:168/255,green:184/255,blue: 160/255)
    static let DustyBlue=Color(red:125/255,green: 145/255,blue:168/255)
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
                    Text("図鑑を見る").fontWeight(.bold).frame(maxWidth: .infinity).padding(.vertical,20).background(Color.ForesGreen).foregroundStyle(.white)
                    Text("標本を記録する").fontWeight(.bold).frame(maxWidth: .infinity).padding(.vertical,20).background(Color.SandBeige)
                    Text("学ぶ・調べる").fontWeight(.bold).frame(maxWidth: .infinity).padding(.vertical,20).background(Color.RussetBrown).foregroundStyle(.white)
                }.fontWeight(.bold).frame(width: geometry.size.width,height:geometry.size.height*0.25)
                HStack{
                    Text("コミュニティ").fontWeight(.bold).frame(maxWidth: .infinity).padding(.vertical,20).background(Color.SageGreen).foregroundStyle(.black)
                    Text("Web版を開く").fontWeight(.bold).frame(maxWidth: .infinity).padding(.vertical,20).background(Color.DustyBlue).foregroundStyle(.white)
                }.fontWeight(.bold).frame(width:geometry.size.width,height:geometry.size.height*0.25)
                Text("お知らせ")
            }
        }.background(Color.bisque)
    }
}

#Preview {
    HomeView()
}


