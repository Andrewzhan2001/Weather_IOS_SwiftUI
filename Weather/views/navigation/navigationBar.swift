//
//  navigationBar.swift
//  Weather
//
//  Created by Tianyi
//

import SwiftUI

struct navigationBar: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack(spacing: 8) {
            HStack {
                // MARK: back button
                Button {
                    dismiss()
                } label: {
                    HStack(spacing: 5) {
                        // MARK: back button icon
                        Image(systemName: "chevron.left").font(.system(size: 23).weight(.medium)).foregroundColor(.secondary)
                        // MARK: back button label
                        Text("Weather").font(.title).foregroundColor(.primary)
                    }.frame(height: 44)
                }
                Spacer()
                Image(systemName: "ellipsis.circle").font(.system(size: 28)).frame(width: 44, height: 44, alignment: .trailing)
            }.frame(height: 44)
        }.frame(height: 106, alignment: .top).padding(.horizontal, 16).padding(.top, 49).backgroundBlur(radius: 15, opaque: true).background(Color.navBarBackground).frame(maxHeight: .infinity, alignment: .top).ignoresSafeArea()
    }
}

struct navigationBar_Previews: PreviewProvider {
    static var previews: some View {
        navigationBar()
    }
}
