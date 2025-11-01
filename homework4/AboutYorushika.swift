//
//  ContentView.swift
//  Demo5
//
//  Created by 114iosClassStudent04 on 2025/10/17.
//

import SwiftUI

struct AboutYorushika: View {
    
    var body: some View {
        TabView{
            ZStack{
                RoundedRectangle(cornerRadius: 26, style: .continuous)
                    .fill(Color.orange)
                    .opacity(0.3)
                VStack(spacing: 12) {
                    Image("n-buna")
                        .resizable()
                        .scaledToFit()
                        .padding()

                    Text("n-buna（ナブナ)")
                        .font(.largeTitle)
                        .bold()
                    Text("Yorushika的吉他手兼作詞、作曲、編曲")
                        .foregroundStyle(Color.gray)
                    ScrollView(.vertical, showsIndicators: false) {
                        Text("""
                             日本作詞家、作曲家、編曲家，男性VOCALOID P主。自2012年開始使用VOCALOID製作樂曲參加VOCALOID活動。在為其他藝人及樂隊提供樂曲的同時，自2017年開始擔任男女2人組合樂隊： Yorushika的吉他手兼演奏者。所屬唱片公司為日本環球音樂。\n
                            因為「不希望為音樂帶來先入為主的偏見」，所以關於n-buna和suis的官方消息除上述外別無其他，至今仍未公布兩人的樣貌等相關資料。
                               
                            """)
                            .bold()
                            .multilineTextAlignment(.leading)
                            .lineSpacing(3)
                            .padding(.vertical, 6)
                            .padding(.horizontal, 10)
                            .background(.white.opacity(0.8))
                            .cornerRadius(8)
                            .padding(.horizontal, 8)
                            .padding(.vertical, 4)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
                .padding()
            }
            .padding(.horizontal)

            ZStack {
                RoundedRectangle(cornerRadius: 26, style: .continuous)
                    .fill(Color.pink)
                    .opacity(0.3)

                // Make the content hug the top
                VStack(spacing: 12) {
                    Image("suis")
                        .resizable()
                        .scaledToFit()
                        .padding()

                    Text("suis（スイ)")
                        .font(.largeTitle)
                        .bold()
                    Text("Yorushika的主唱")
                        .foregroundStyle(.gray)
                    ScrollView(.vertical, showsIndicators: false) {
                        Text("""
                            日本女性歌手，樂團Yorushika（ヨルシカ）的主唱。2016年在VOCALOID製作人n-buna的1st Live「月を歩いている」首次以Guest Vocalist身份出場，後於2017年與n-buna組成雙人搖滾樂團Yorushika。所屬唱片公司為日本環球音樂。\n
                            因為「不希望為音樂帶來先入為主的偏見」，所以關於n-buna和suis的官方消息除上述外別無其他，至今仍未公布兩人的樣貌等相關資料。
                            """)
                        .bold()
                        .multilineTextAlignment(.leading)
                        .lineSpacing(3)
                        .padding(.vertical, 6)
                        .padding(.horizontal, 10)
                        .background(.white.opacity(0.8))
                        .cornerRadius(8)
                        .padding(.horizontal, 8)
                        .padding(.vertical, 4)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top) // ensure top alignment
                .padding()
            }
            .padding(.horizontal)
            
            ZStack {
                RoundedRectangle(cornerRadius: 26, style: .continuous)
                    .fill(Color.purple)
                    .opacity(0.3)
                
                VStack(spacing: 12) {
                    Image("Kitani Tatsuya")
                        .resizable()
                        .scaledToFit()
                        .padding()
                    
                    Text("木谷龍也(キタニタツヤ)")
                        .font(.largeTitle)
                        .bold()
                    
                    Text("Yorushika的支援樂手")
                        .foregroundStyle(.gray)
                    ScrollView(.vertical, showsIndicators: false) {
                        Text("""
                            日本男性創作歌手、貝斯手、詞曲作家。三人樂隊sajou no hana的貝斯手(現已退團 )、雙人樂隊ヨルシカ的支援樂手。曾以こんにちは谷田さん的名義創作Vocaloid歌曲，作品包括《惡魔的舞蹈方法》（悪魔の踊り方）等。經紀公司是Smile Company（スマイルカンパニー），唱片公司是Sony Music Records旗下的MASTERSIX FOUNDATION。
                            """)
                        .bold()
                        .multilineTextAlignment(.leading)
                        .lineSpacing(3)
                        .padding(.vertical, 6)
                        .padding(.horizontal, 10)
                        .background(.white.opacity(0.8))
                        .cornerRadius(8)
                        .padding(.horizontal, 8)
                        .padding(.vertical, 4)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top) // ensure top alignment
                .padding()
            }
            .padding(.horizontal)
        }
        .tabViewStyle(.page)
        .background{
            Image("Yorushika_Logo 1")
                .resizable()
                .scaledToFit()
                .ignoresSafeArea()
                .opacity(0.4)
        }
    }
}

#Preview {
    AboutYorushika()
}
