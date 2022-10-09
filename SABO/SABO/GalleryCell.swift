//
//  GalleryCell.swift
//  SABO
//
//  Created by 이재웅 on 2022/10/09.
//

import SwiftUI

struct GalleryCell: View {
    @Binding var title: String
    @Binding var image: UIImage
    @Binding var userImage: UIImage
    @Binding var cardID: String
    
    var body: some View {
        ZStack {
            Image(uiImage: image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            VStack {
                Spacer()
                
                ZStack {
                    LinearGradient(
                        colors: [Color(hex: 0xF2F2F2, alpha: 1.0), Color(hex: 0xFFFFFF, alpha: 0.5), Color(hex: 0xFFFFFF, alpha: 0)],
                        startPoint: .bottom,
                        endPoint: .top
                    )
                        .frame(height: 45.0)
                    
                    HStack {
                        Image(uiImage: userImage)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 33.0, height: 33.0)
                            .cornerRadius(16.5)
                        
                        Text(title)
                            .font(.system(size: 12.0, weight: .bold))
                    }
                }
            }
        }
        .frame(width: 160, height: 160)
        .cornerRadius(16.0)
    }
}

struct GalleryCell_Previews: PreviewProvider {
    static var previews: some View {
        GalleryCell(
            title: .constant("어쩌고 저쩌고임"),
            image: .constant(UIImage(named: "DummyGalleryImage") ?? UIImage()),
            userImage: .constant(UIImage(named: "DummyProfileImage") ?? UIImage()),
            cardID: .constant("")
        )
    }
}