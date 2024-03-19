//
//  ShopWindowView.swift
//  examiOS
//
//  Created by Alibek Adhamov on 19/03/24.
//


import SwiftUI

//Кастомный компонент ShopWindowView создаёт список View
struct ShopWindowView<Content: View>: View {
    var content: Content
    
    // инициализатор передаёт View внутрь
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: true) {
            HStack(spacing: 0) {
                // вставляем переданный content
                content
            }
            .padding()
        }
    }
}
