//
//  FoodListView.swift
//  SwiftUIApp
//
//  Created by Student 6 on 31/08/2020.
//  Copyright © 2020 Student 6. All rights reserved.
//

import SwiftUI

struct FoodListView: View {
    @ObservedObject var viewModel = FoodListViewModel()
    @State var favesShowed: Bool = false
    
    var body: some View {
        NavigationView{
            VStack{
                List {
                    FilterView(favesShowed: $favesShowed).environmentObject(viewModel)
                    ForEach(viewModel.foods) { food in
                        if !self.favesShowed || food.isFav {
                            NavigationLink(destination: FoodView()) {
                                Text(food.name)
                            }
                        }
                    }
                }
            }.navigationBarHidden(false)
            .navigationBarTitle("Foods")
        }
    }
}

final class FoodListViewModel: ObservableObject, FoodListViewModelProtocol {
    
    @Published private(set) var filterButtonName = "Switch Faves"
    
    @Published private(set) var foods = [Food(name: "Strawberry", isFav: true),
                 Food(name: "Cheese", isFav: false),
                 Food(name: "Apple", isFav: true),
                 Food(name: "Tomato", isFav: false)]
}

protocol FoodListViewModelProtocol {
    var filterButtonName: String { get }
}



struct Food: Identifiable {
    let id = UUID()
    let name: String
    let isFav: Bool
}


struct FilterView: View {
    
    @Binding var favesShowed: Bool
    @EnvironmentObject var viewModel: FoodListViewModel
    
    var body: some View {
        Toggle(isOn: $favesShowed) {
            Text(viewModel.filterButtonName)
        }
    }
}
