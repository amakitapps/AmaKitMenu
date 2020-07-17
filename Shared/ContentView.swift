//
//  ContentView.swift
//  Shared
//
//  Created by Kenneth Jackson on 7/17/20.
//

import SwiftUI

struct ContentView: View {
    
    var menuItems = [
        Menu(name: "Chicken Salad", image: "chickensalad"),
        Menu(name: "Reuben", image: "reuben"),
        Menu(name: "Chicken Fried Steak", image: "chickenfriedsteak"),
        Menu(name: "Frito Pie", image: "fritopie")
    ]
    
    var body: some View {
        NavigationView {
            List(menuItems, id: \.id) { item in
                HStack {
                    Image(item.image)
                        .resizable()
                        .frame(width: 40, height: 40)
                        .cornerRadius(5)
                    Text(item.name)
                }
            }
            .navigationBarTitle("Kenneth's Cozy Cafe")
        }
    }
}

struct Menu: Identifiable {
    var id = UUID()
    var name: String
    var image: String
}


struct MenuDetail: View {
    var menu: Menu
    
    var body: some View {
        VStack {
            Image(menu.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 40, height: 40)
                .cornerRadius(5)
            Text(menu.name)
                .font(.system(.title, design: .rounded))
                .fontWeight(.black)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
