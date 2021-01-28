//
//  Reminders.swift
//  Habitapp
//
//  Created by Brandon Suarez on 1/27/21.
//

import SwiftUI

struct Reminders : View {
    var body : some View {
        ZStack{
            VStack(spacing : 30){
                HStack{
                    BigTitle(title: "REMINDERS")
                    Spacer()
                        .frame(width : 137)
                    Button(action : {
                        //Some Actions
                    }) {
                        Text("DONE")
                            .font(.system(size: 10, weight: .regular, design: .default))
                            .kerning(2)
                            .foregroundColor(.white)
                            .frame(width: 52, height: 18, alignment: .center)
                            .background(Color(UIColor(named : "DarkGray")!))
                            .cornerRadius(5)
                    }
                }
                Button(action : {
                    //Some Action
                }) {
                    Image("White Small Plus")
                        .frame(width: 354, height: 30, alignment: .center)
                        .background(Color(UIColor(named : "BBlue")!))
                        .cornerRadius(17)
                }
                Spacer()
            }
        }
    }
}

struct Reminders_Preview : PreviewProvider {
    static var previews : some View {
        Reminders()
    }
}

