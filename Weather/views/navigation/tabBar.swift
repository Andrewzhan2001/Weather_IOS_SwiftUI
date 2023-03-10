//
//  tabBar.swift
//  Weather
//
//  Created by Tianyi
//

import SwiftUI

struct tabBar: View {
    // later we can modify it to change the action of button
    var action : () ->Void
    @Binding var forecastCity : ForecastCity
    var body: some View {
        ZStack{
            //MARK: the arc shape
            Arc().fill(Color.tabBarBackground).frame(height: 88)
                .overlay {
                    Arc().stroke(Color.tabBarBorder, lineWidth: 0.5)
                }
            //MARK: button to navigate to the weather screen
            HStack{
                //MARK: button to expand to the home screen
                // Button(action: {}, label: {})
                Button {
                    action()
                } label: {
                    Image(systemName: "mappin.and.ellipse").frame(width: 44, height: 44, alignment: .center)
                    
                }
                Spacer()
                //MARK: navigation button the navigate to different weather
                // NavigationLink(destination: <#T##() -> _#>, label: <#T##() -> _#>)
                NavigationLink {
                    weatherView(forecastCity: $forecastCity)
                } label: {
                    Image(systemName: "list.star").frame(width: 44, height: 44)
                }
            }.font(.title2).foregroundColor(.white).padding(EdgeInsets(top: 20, leading: 32, bottom: 24, trailing: 32))
        }.frame(maxHeight: .infinity, alignment: .bottom).ignoresSafeArea()
    }
}

struct tabBar_Previews: PreviewProvider {
    static var previews: some View {
        EmptyView()
    }
}
