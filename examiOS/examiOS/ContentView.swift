//
//  ContentView.swift
//  examiOS
//
//  Created by Alibek Adhamov on 19/03/24.
//

import SwiftUI

struct ContentView: View {
    // переменная для отслеживания текущей страницы
    @State private var currentPage = 0
    
    var body: some View {
        ShopWindowView {
            ForEach(0..<3) { index in
                // доступ к геометрии
                GeometryReader { geometry in
                    ZStack {
                        Color.black
                            .frame(width: geometry.size.width, height: 200)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.red, lineWidth: 5)
                            )
                        VStack {
                            Text("Row \(index)")
                                .foregroundColor(.white)
                                .padding()
                            Image(systemName: "checkmark")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geometry.size.width * 0.8, height: 100)
                            HStack(spacing: 5) {
                                ForEach(0..<3) { pageIndex in
                                    Circle()
                                        .frame(width: 8, height: 8)
                                        .foregroundColor(pageIndex == index ? .white : .gray)
                                }
                            }
                            .padding(.top, 10)
                        }
                    }
                }
                .frame(width: 400)
            }
        }
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

