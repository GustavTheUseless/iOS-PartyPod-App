//
//  SpeakerCardView.swift
//  PartyPod
//
//  Created by Gustav Walker Petersen on 30/06/2021.
//

import SwiftUI

struct SpeakerCardView: View {
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .center), content: {
            RoundedRectangle(cornerRadius: 15.0)
                .foregroundColor(.white)
                .shadow(radius: 10)
            HStack(alignment: .center, spacing: -5, content: {
                Image(Constants.SPEAKER_IMAGE_LARGE)
                VStack(alignment: .leading, spacing: 10, content: {
                    Text("SPECIFICATIONS").font(.callout).bold().italic()
                    VStack(alignment: .leading, spacing: 5, content: {
                        Text("- CHARCOAL BLUE").font(.footnote).bold().italic()
                        Text("- 128 DB").font(.footnote).bold().italic()
                        Text("- UP TO 40 HOURS PLAYTIME").font(.footnote).bold().italic()
                    })
                })
                Spacer()
                VStack {
                    Spacer()
                    Text("INFO").font(.footnote).italic().padding()
                }
            })
        })
//        HStack(alignment: .center, spacing: 30, content: {
//            HStack(alignment: .center, spacing: -5, content: {
//                Image(Constants.SPEAKER_IMAGE_LARGE)
//                VStack(alignment: .leading, spacing: 10, content: {
//                    Text("SPECIFICATIONS").font(.callout).bold().italic()
//                    VStack(alignment: .leading, spacing: 5, content: {
//                        Text("- CHARCOAL BLUE").font(.footnote).bold().italic()
//                        Text("- 128 DB").font(.footnote).bold().italic()
//                        Text("- UP TO 40 HOURS PLAYTIME").font(.footnote).bold().italic()
//                    })
//                })
//            })
//            VStack {
//                Spacer()
//                Text("INFO").font(.footnote).italic().padding()
//            }
//        }).background(Color.white).cornerRadius(15).shadow(radius: 10)
    }
}

struct SpeakerCardView_Previews: PreviewProvider {
    static var previews: some View {
        SpeakerCardView().previewLayout(.fixed(width: 375, height: 200))
    }
}
