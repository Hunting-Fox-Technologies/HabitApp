//
//  Walktrhough.swift
//  Habitapp
//
//  Created by Brandon Suarez on 2/2/21.
//

import SwiftUI

struct Walkthrough : View {
    @Environment(\.presentationMode) var presentationMode
    var body : some View {
        LazyVStack{
            Spacer()
                .padding(.bottom,18)
            HStack{
                Spacer()
                    .frame(width : 366)
                Button(action :{
                    //some actions
                    self.presentationMode.wrappedValue.dismiss()
                }){
                    Image("Exit X")
                }
            }
            Text("DONE CAN HELP YOU")
                .font(.system(size: 15, weight: .medium, design: .default))
                .foregroundColor(Color(UIColor(named : "CC1")!))
                .padding(.bottom , 21)
            Text("TRACK \nANY GOAL")
                .font(.system(size: 25, weight: .bold, design: .default))
                .multilineTextAlignment(.center)
                .padding(.bottom,45)
            ZStack {
                Image("Phone")
                VStack{
                    Spacer()
                    HStack{
                        Spacer()
                            .frame(width : 315)
                        Button(action : {
                            //some actions
                        }){
                            Circle()
                                .fill(Color(UIColor(named : "CC1")!))
                                .frame(width: 50, height: 50, alignment: .center)
                                .overlay(
                                    Image("Right Chevron")
                                )
                        }
                    }
                    Spacer()
                        .frame(height : 25)
                }
            }
            
        }
    }
}

struct Walkthrough_Previews : PreviewProvider {
    static var previews : some View {
        Walkthrough()
    }
}

