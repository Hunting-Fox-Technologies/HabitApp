//
//  WeekStarts.swift
//  Habitapp
//
//  Created by Brandon Suarez on 2/2/21.
//

import SwiftUI

struct DayStarts : View {
    @Environment(\.presentationMode) var presentationMode
    @State var hour = 1
    var body : some View {
        ZStack{
            VStack(alignment : .center) {
                HStack {
                    Text("WEEK STARTS")
                        .font(.system(size: 15, weight: .medium, design: .default))
                        .foregroundColor(Color(UIColor(named : "BBlue")!))
                        .kerning(2)
                    Spacer()
                        .frame(width : 133)
                    Button(action : {
                        //some actions
                    }){
                        Text("SAVE")
                            .font(.system(size: 10, weight: .regular, design: .default))
                            .foregroundColor(.white)
                            .frame(width: 49, height: 18, alignment: .center)
                            .background(Color(UIColor(named : "BBlue")!))
                            .cornerRadius(5)
                    }
                    Spacer()
                        .frame(width:30)
                    Button(action : {
                        //some actions
                        self.presentationMode.wrappedValue.dismiss()
                    }){
                        Image("Exit X")
                    }
                    
                }
                Spacer()
                    .frame(height : 120)
                Picker(selection: $hour, label : Text("") ,content: {
                    Text("12:00 AM")
                        .font(.system(size: 25, weight: .regular, design: .default))
                        .tag(1)
                    Text("1:00 AM")
                        .font(.system(size: 25, weight: .regular, design: .default))
                        .tag(2)
                    Text("2:00 AM")
                        .font(.system(size: 25, weight: .regular, design: .default))
                        .tag(3)
                    Text("3:00 AM")
                        .font(.system(size: 25, weight: .regular, design: .default))
                        .tag(4)
                    Text("4:00 AM")
                        .font(.system(size: 25, weight: .regular, design: .default))
                        .tag(5)
                    Text("5:00 AM")
                        .font(.system(size: 25, weight: .regular, design: .default))
                        .tag(6)
                    Text("6:00 AM")
                        .font(.system(size: 25, weight: .regular, design: .default))
                        .tag(7)
                }
                )
                Spacer()
            }
        
        }
    }
}

struct DayStarts_Previews : PreviewProvider {
    static var previews : some View {
        DayStarts()
    }
}

