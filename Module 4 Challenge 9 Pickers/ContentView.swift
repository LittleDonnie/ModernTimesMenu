//
//  ContentView.swift
//  Module 4 Challenge 9 Pickers
//
//  Created by Monty Montgomery on 1/1/22.
//

import SwiftUI

struct ContentView: View {
    @State var selectedOrder = "1"
    @State var selectedLocation = "1"
    @State var selectedPickUpTime = "1"
    
    var body: some View {
    
        VStack{
            Text("Modern Times")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            
            Picker("Pick Me", selection: $selectedOrder) {
                          Text("Vegan Southside Hash").tag("1")
                          Text("Vegan Breakfast Burrito").tag("2")
                          Text("Vegan Avocado Brown Rice Salad").tag("3")
                          Text("Vegan Tempeh Reuben").tag("4")
                          Text("Monty's Mush Foos").tag("5")
                          }
                         .pickerStyle(DefaultPickerStyle())
                GeometryReader() {geo in
                    Image(getImage())
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: geo.size.width)
                            .clipped()   
                            }
             
                
            Picker("Pick Me", selection: $selectedLocation) {
                          Text("Minneapolis").tag("1")
                          Text("St Paul").tag("2")
                          Text("Oshkosh").tag("3")
                          Text("Madison").tag("3")
                          }
                         .pickerStyle(WheelPickerStyle())
            
            Picker("Pick Me", selection: $selectedPickUpTime) {
                          Text("8AM").tag("1")
                          Text("9AM").tag("2")
                          Text("10AM").tag("3")
                          Text("11AM").tag("4")
                          Text("12PM").tag("5")
                          }
                          .pickerStyle(SegmentedPickerStyle())
                          .padding(.bottom)
            

            
            
            Text("Your Order: \(getOrder()) Will be ready at \(getTime()) At our \(getLocation()) Location")
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
            
            
            
        }.padding(.horizontal)
        
    }
    
    

func getImage()->String
    {
    switch (selectedOrder) {
        case "1": return("SouthSideHash")
        case "2": return("BreakfastBurrito")
        case "3": return("VeganAvocadoBrownRiceSalad")
        case "4": return("VeganTempehReuben")
        case "5": return("montyfood")

        default: return("pppp")
        }
        }


    
    
func getLocation()->String
    {
    switch (selectedLocation) {
        case "1": return("MPLS")
        case "2": return("St Paul")
        case "3": return("Oshkosh")
        case "4": return("Madison")

        default: return("pppp")
        }
    }

    
    
    
func getTime()->String
    {
    switch (selectedPickUpTime) {
        case "1": return("8AM")
        case "2": return("9AM")
        case "3": return("10AM")
        case "4": return("11AM")
        case "5": return("12PM")

        default: return("pppp")
        }
    }


    
func getOrder()->String
    {
    switch (selectedOrder) {
        case "1": return ("Vegan Southside Hash")
        case "2": return("Vegan Breakfast Burrito")
        case "3": return("Vegan Avocado Brown Rice Salad")
        case "4": return("Vegan Tempeh Reuben")
        case "5": return("Monty's Mush Food")

        default: return("pppp")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
