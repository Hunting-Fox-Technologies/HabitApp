//
//  Summary.swift
//  Habitapp
//
//  Created by Brandon Suarez on 1/30/21.
//

import SwiftUI

struct Summary : View {
    //Environment Var for the Exit X Button
    @Environment(\.presentationMode) var presentationMode
    //State Var for the MOONTH WEEK YEAR buttons
    @State var z1 = 0
    
    var body : some View {
        VStack(alignment : .leading ){
            HStack(spacing : 195){
                Text("SUMMARY")
                    .font(.system(size: 25, weight: .regular, design: .default))
                    .foregroundColor(.black)
                    .kerning(5)
                Button(action : {
                    //Some actions
                    self.presentationMode.wrappedValue.dismiss()
                }){
                    Image("Exit X")
                }
                
            }
            Spacer()
                .frame(height : 15)
            Text("JAN 24 - JAN 30 , 2021")
                .font(.system(size: 15, weight: .regular, design: .default))
                .kerning(2)
            Spacer()
                .frame(height : 15)
            HStack(spacing : 18){
                Button(action : {
                    //some action
                    self.z1 = 0
                }){
                    cornerChangeButton(title: "WEEK", width: 64, access: 0, state: z1)
                }
                Button(action : {
                    //some action
                    self.z1 = 1
                }){
                    cornerChangeButton(title: "MONTH", width: 64, access: 1, state: z1)
                }
                Button(action : {
                    //some action
                    self.z1 = 2
                }){
                    cornerChangeButton(title: "YEAR", width: 64, access: 2, state: z1)
                }
            }
            Spacer()
                .frame(height : 60)
            HStack{
                Text("TIMES")
                    .font(.system(size: 10, weight: .regular, design: .default))
                    .foregroundColor(.black)
                    .rotationEffect(Angle(degrees: 270))
                VStack(alignment : .leading){
                    Text("SAMPLE 1")
                        .font(.system(size: 15, weight: .semibold , design: .default))
                        .foregroundColor(.black)
                        .kerning(2)
                    Spacer()
                        .frame(height : 6)
                    HStack(spacing : 6){
                        Text("WEEK TOTAL:")
                        Text("3")
                        Text("|")
                        Text("COMPLETION:")
                        Text("67 %")
                    }
                    .font(.system(size: 10, weight: .semibold, design: .default))
                    .foregroundColor(Color(UIColor(named : "CC4")!))
                    HStack(spacing : 3){
                        VStack(spacing : 121){
                            Text("1")
                            Text("0")
                        }
                        .frame(width : 6)
                        .font(.system(size: 10, weight: .regular, design: .default))
                        .foregroundColor(.black)
                        HStack{
                            Rectangle()
                                .fill(Color.white)
                                .frame(width: 288, height: 133)//w = 288 , h = 133
                                .border(Color(UIColor(named : "DarkGray")!))
                                .overlay(
                                    HStack(spacing : 36){
                                        Color.gray.frame(width:CGFloat(1) / UIScreen.main.scale)
                                        Color.gray.frame(width:CGFloat(1) / UIScreen.main.scale)
                                            .overlay(
                                                Rectangle()
                                                    .fill(Color(UIColor(named : "CC4")!))
                                                    .frame(width: 13, height: 131, alignment: .center)
                                            )
                                        Color.gray.frame(width:CGFloat(1) / UIScreen.main.scale)
                                            .overlay(
                                                Rectangle()
                                                    .fill(Color(UIColor(named : "CC4")!))
                                                    .frame(width: 13, height: 131, alignment: .center)
                                            )
                                        Color.gray.frame(width:CGFloat(1) / UIScreen.main.scale)
                                            .overlay(
                                                Rectangle()
                                                    .fill(Color(UIColor(named : "CC4")!))
                                                    .frame(width: 13, height: 131, alignment: .center)
                                            )
                                        Color.gray.frame(width:CGFloat(1) / UIScreen.main.scale)
                                        Color.gray.frame(width:CGFloat(1) / UIScreen.main.scale)
                                        Color.gray.frame(width:CGFloat(1) / UIScreen.main.scale)
                                    }
                                )
                                
                        }
                    }
                    .frame(alignment: .leading)
                    HStack{
                        Group{
                            Spacer()
                                .frame(width : 30)
                            
                            Text("SUN")
                                .frame(width : 28)
                            Spacer()
                                .frame(width : 7)
                            
                            Text("MON")
                                .frame(width : 31)
                            Spacer()
                                .frame(width : 8)
                            
                            Text("TUE")
                                .frame(width : 25)
                            Spacer()
                                .frame(width : 9)
                            
                        }
                        Group {
                            Text("*")
                                .frame(width : 29)
                            Spacer()
                                .frame(width : 8)
                            
                            Text("THU")
                                .frame(width : 27)
                            Spacer()
                                .frame(width : 15)
                            
                            Text("FRI")
                                .frame(width : 21)
                            Spacer()
                                .frame(width : 13)
                            
                            Text("SAT")
                                .frame(width : 24)
                        }
                    }
                    .font(.system(size: 12, weight: .regular, design: .default))
                    Spacer()
                        .frame(height : 30)
                    HStack(alignment : .center){
                        Group {
                            Text("GOALS \nMEET")
                                .font(.system(size: 10, weight: .regular, design: .default))
                                .foregroundColor(Color(UIColor(named : "CC4")!))
                                .frame(width : 38)

                            Spacer()
                                .frame(width : 21)
                            Text("4")
                                .font(.system(size: 12, weight: .bold, design: .default))
                                .foregroundColor(.black)
                                .frame(width : 7)
                            Spacer()
                                .frame(width : 39)
                        }
                        Group{
                            Text("CURRENT \nSTREAK")
                                .font(.system(size: 10, weight: .regular, design: .default))
                                .foregroundColor(Color(UIColor(named : "CC4")!))
                                .frame(width : 56)
                            Spacer()
                                .frame(width : 21)
                            Text("4")
                                .font(.system(size: 12, weight: .bold, design: .default))
                                .foregroundColor(.black)
                                .frame(width : 7)
                            Spacer()
                                .frame(width : 28)
                        }
                        Group{
                            Text("LONGEST \nSTREAK")
                                .font(.system(size: 10, weight: .regular, design: .default))
                                .foregroundColor(Color(UIColor(named : "CC4")!))
                                .frame(width :52)
                            Spacer()
                                .frame(width : 21)
                            Text("4")
                                .font(.system(size: 12, weight: .bold, design: .default))
                                .foregroundColor(.black)
                                .frame(width : 7)
                        }
                    }
                }
            }
            Spacer()
            HStack{
                Spacer()
                    .frame(width : 80)
                
                VStack(spacing : 5){
                    Image("Bars")
                    Circle()
                        .fill(Color(UIColor(named : "DarkGray")!))
                        .frame(width: 4, height: 4, alignment: .center)
                }
                Spacer()
                    .frame(width : 190)
                
                VStack(spacing : 5){
                    Image("Clock")
                    Circle()
                        .fill(Color.white)
                        .frame(width: 4, height: 4, alignment: .center)
                }
            }
        }
    }
}

struct Summary_Previews : PreviewProvider {
    static var previews: some View  {
        Summary()
    }
}

struct cornerChangeButton : View {
    var title : String
    var width : CGFloat
    var access : Int
    var state : Int
    
    var body: some View{
        if state == access {
            Text("\(title)")
                .font(.system(size: 10, weight: .regular, design: .default))
                .foregroundColor(.black)
                .frame(width: width, height: 18, alignment: .center)
                .background(Color(UIColor(named : "LightGray")!))
                .cornerRadius(5)
        }
        else {
            Text("\(title)")
                .font(.system(size: 10, weight: .regular, design: .default))
                .foregroundColor(.black)
                .frame(width: width, height: 18, alignment: .center)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color(UIColor(named: "LightGray")!), lineWidth: 1)
                )
            
        }
    }
}
