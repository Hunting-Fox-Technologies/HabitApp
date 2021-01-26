//
//  Create.swift
//  Habitapp
//
//  Created by Brandon Suarez on 1/21/21.
//

import SwiftUI

struct Create: View {
    @State var habitName : String = ""
    @State var notes : String = ""
    @State var quote : String = ""
    @State var count : Int = 1
    
    var body: some View {
        ScrollView(.vertical){
                VStack(alignment : .leading , spacing : 30 ){
                    Group {
                    HStack(spacing : 141){
                        Text("CREATE").font(.system(size: 25, weight: .regular, design: .default))
                            .kerning(5)
                        
                        HStack(spacing : 9){
                            Button(action: {
                                //My action here
                            }){
                                Text("CANCEL")
                                    .font(.system(size: 10, weight: .regular, design: .default))
                                    .frame(width: 48, height: 18, alignment: .center)
                                    .background(Color(UIColor(named:"DarkGray")!))
                                    .cornerRadius(5)
                                    .foregroundColor(.white)
                            }
                            Button(action: {
                                //My action here
                            }){
                                Text("SAVE")
                                    .font(.system(size: 10, weight: .regular, design: .default))
                                    .frame(width: 48, height: 18, alignment: .center)
                                    .background(Color(UIColor(named:"BBlue")!))
                                    .cornerRadius(5)
                                    .foregroundColor(.white)
                            }

                        }
                    }
                    VStack(alignment : .leading){
                        Title(title: "NAME YOUR HABIT")
                        HStack(spacing : 15){
                            TextField("Workout , Study , Yoga ,etc", text: $habitName)
                                .font(.system(size: 10, weight: .regular, design: .default))
                                .frame(width: 302, height: 36, alignment: .center)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .cornerRadius(5)
                                
                            
                            Button(action : {
                                //Some action here
                            }) {
                                Text("IDEAS")
                                    .font(.system(size: 10, weight: .regular, design: .default))
                                    .frame(width: 48, height: 18, alignment: .center)
                                    .background(Color(UIColor(named: "LightGray")!))
                                    .cornerRadius(5)
                                    .foregroundColor(.black)
                            }
                            
                        }
                    }
                    VStack(spacing : 15){
                        Title(title: "BUILD OR QUIT THIS HABIT ?")
                        HStack(spacing : 9){
                            Button(action : {
                                
                            }){
                                Text("BUILD")
                                    .font(.system(size: 10, weight: .regular, design: .default))
                                    .foregroundColor(.black)
                                    .frame(width: 45, height: 18, alignment: .center)
                                    .background(Color(UIColor(named: "LightGray")!))
                                    .cornerRadius(5)
                                    
                            }
                            Button(action : {
                                //Some action here
                            }) {
                                Text("QUIT")
                                    .font(.system(size: 10, weight: .regular, design: .default))
                                    .foregroundColor(.black)
                                    .frame(width: 38, height: 18, alignment: .center)
                            }
                        }
                    }
                    VStack(alignment : .leading ,spacing : 15){
                        Title(title: "CHOSE YOUR GOAL PERIOD")
                        HStack(spacing : 9){
                            Button(action : {
                                //An Action here
                            }){
                                Text("DAILY")
                                    .font(.system(size: 10, weight: .regular, design: .default))
                                    .foregroundColor(.black)
                                    .frame(width: 43, height: 18, alignment: .center)
                                    .background(Color(UIColor(named: "LightGray")!))
                                    .cornerRadius(5)
                                        
                                
                            }
                            Button(action: {
                                //Some action
                            }){
                                Text("WEEKLY")
                                    .font(.system(size: 10, weight: .regular, design: .default))
                                    .foregroundColor(.black)
                                    .frame(width: 56, height: 18, alignment: .center)
                                
                            }
                            Button(action : {
                                //Some Action
                            }){
                                Text("MONTHLY")
                                    .font(.system(size: 10, weight: .regular, design: .default))
                                    .foregroundColor(.black)
                                    .frame(width: 75, height: 18, alignment: .center)
                            }
                            Button(action : {
                                //Some action here
                            }){
                                Text("MONTHLY")
                                    .font(.system(size: 10, weight: .regular, design: .default))
                                    .foregroundColor(.black)
                                    .frame(width: 54, height: 18, alignment: .center)
                            }
                        }
                    }
                    VStack(alignment : .leading , spacing : 15){ //I still need to finish this
                        Title(title : "SET YOUR GOAL")
                        HStack(spacing : 15){
                            
                        }
                    }
                    VStack(alignment : .leading , spacing : 15){
                        Title(title: "DEFAULT COUNT")
                        HStack{
                            Stepper(value: $count, in: 1...20) {
                                Text("\(count)")
                                    .font(.system(size: 15, weight: .regular, design: .default))
                            }
                            .frame(width: 146, height: 33, alignment: .center)
                        }
                    }
                    VStack(alignment: .leading, spacing: 15) {
                        Title(title : "LOG ACTIVITY USING")
                        HStack(spacing : 9){
                            Button(action : {
                                //Some code in here
                            }){
                                Text("CUSTOM VALUE")
                                    .font(.system(size: 10, weight: .regular, design: .default))
                                    .foregroundColor(.black)
                                    .frame(width: 100, height: 18, alignment: .center)
                                    .background(Color(UIColor(named:"LightGray")!))
                                    .cornerRadius(5)
                            }
                            Button(action : {
                                //Some ACtion here
                            }){
                                Text("DEFAULT COUNT")
                                    .font(.system(size: 10, weight: .regular, design: .default))
                                    .foregroundColor(.black)
                                    .frame(width: 104, height: 18, alignment: .center)
                            }
                        }
                        
                    }
                    VStack(alignment: .leading, spacing: 15) {
                        Title(title: "TRACK GOALS IN WHICH DAYS ?")
                        HStack(spacing : 9){
                            RoundButton(day : "SUN")
                            RoundButton(day : "MON")
                            RoundButton(day : "TUE")
                            RoundButton(day : "WED")
                            RoundButton (day : "THU")
                            RoundButton(day : "FRI")
                            RoundButton(day : "SAT")
                        }
                    }
                    VStack(alignment : .leading , spacing : 15){
                        Title(title: "GROUP :")
                        Button(action: {
                            //Some actions
                        }) {
                            HStack(spacing : 296){
                                Text("NONE")
                                    .font(.system(size: 10, weight: .regular, design: .default))
                                    .foregroundColor(.blue)
                                Image("DownWardArrow")
                            }
                        }
                    }
                    VStack(alignment: .leading, spacing: 15 ) {
                        Title(title: "CHOSE A COLOR ")
                        HStack(spacing : 15) {
                            ForEach(1..<9) {
                                ColorCircle(color: "CC\($0)")
                            }
                            
                        }
                        HStack(spacing : 15) {
                            ForEach(9..<16){
                                ColorCircle(color: "CC\($0)")
                            }
                            ColorCircle(color: "LightGray")
                        }
                      
                        
                            
                    }
                    }
                    Group{
                        VStack(alignment : .leading , spacing:15){
                            Title(title:"REMINDERS")
                            Button(action : {
                                //Some actions
                            }) {
                                HStack(spacing:296){
                                    Text("NONE")
                                        .foregroundColor(.blue)
                                        .font(.system(size: 10, weight: .regular, design: .default))
                                    Image("DownWardArrow")
                                }
                            }
                        }
                        VStack(alignment : .leading ,spacing:15){
                            Title(title:"SHOW BADGE IF NO ACTIVITY TODAY:")
                            HStack(spacing : 9){
                                Button(action: {
                                    //Some actions
                                }){
                                    Text("NO")
                                        .font(.system(size: 10, weight: .regular, design: .default))
                                        .foregroundColor(.black)
                                        .frame(width: 28, height: 18, alignment: .center)
                                        .background(Color(UIColor(named : "LightGray")!))
                                        .cornerRadius(5)
                                        
                                }
                                Button(action : {
                                    //Some actions here
                                }) {
                                    Text("YES")
                                        .font(.system(size: 10, weight: .regular, design: .default))
                                        .foregroundColor(.black)
                                        .frame(width: 33, height: 18, alignment: .center)
                                }
                            }
                            
                        }
                        VStack(alignment : .leading ,spacing:15){
                            Title(title: "SHOW TARGET LINE IN CHARTS")
                            HStack(spacing : 9){
                                Button(action:{
                                    //Some actions
                                }){
                                    Text("NO")
                                        .font(.system(size: 10, weight: .regular, design: .default))
                                        .foregroundColor(.black)
                                        .frame(width: 28, height: 18, alignment: .center)
                                        .background(Color(UIColor(named : "LightGray")!))
                                        .cornerRadius(5)
                                }
                                Button(action : {
                                    //Some actions
                                }){
                                    Text("YES")
                                        .font(.system(size: 10, weight: .regular, design: .default))
                                        .foregroundColor(.black)
                                        .frame(width: 33, height: 18, alignment: .center)
                                        
                                }
                            }
                            
                        }
                        VStack(alignment : .leading ,spacing:15){
                            Title(title: "HABIT UNITS")
                            HStack{
                                Button(action : {
                                    //Some actions
                                }) {
                                    Text("NONE")
                                        .font(.system(size: 10, weight: .regular, design: .default))
                                        .foregroundColor(.black)
                                        .frame(width: 43, height: 18, alignment: .center)
                                        .background(Color(UIColor(named : "LightGray")!))
                                        .cornerRadius(5)
                                }
                                Button(action : {
                                    //Some actions
                                }) {
                                    Text("CUSTOM")
                                        .font(.system(size: 10, weight: .regular, design: .default))
                                        .foregroundColor(.black)
                                        .frame(width: 60, height: 18, alignment: .center)
                                }
                            }
                        }
                        VStack(alignment : .leading ,spacing:15){
                            Title(title:"ADD A NOTE")
                            VStack{
                                TextEditor(text : $notes)
                                    .font(.system(size: 10, weight: .regular, design: .default))
                                    .frame(width: 277, height: 78, alignment: .center)
                                
                            }
                            .frame(width: 289, height: 90, alignment: .center)
                            .overlay(RoundedRectangle(cornerRadius: 5)
                                        .stroke(Color(UIColor(named : "LightGray")!), lineWidth: 0.5))
                        }
                        VStack(alignment : .leading ,spacing:15){
                            Title(title:"WRITE SOMETHING TO MOTIVATE YOU")
                            TextField( "", text : $quote)
                                .font(.system(size: 10, weight: .regular, design: .default))
                                .frame(width: 289, height: 36, alignment: .center)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .cornerRadius(5)
                        }
                        Spacer()
                    }
                }
                .frame(maxWidth : .infinity)
            }
        
    }
}

struct Create_Previews: PreviewProvider {
    static var previews: some View {
        Create()
    }
}


struct RoundButton: View { // Got to fix the buttons. so far they are only text
    var day : String
    var body: some View {
        Text(day)
            .font(.system(size: 10, weight: .regular, design: .default))
            .foregroundColor(.black)
            .frame(width: 32, height: 32, alignment: .center)
            .background(Color(UIColor(named: "LightGray")!))
            .cornerRadius(20)
    }
}

struct Title: View {
    var title : String
    var body : some View {
        Text("\(title)")
            .font(.system(size: 10, weight: .bold, design: .default))
            .kerning(2)
    }
}

struct ColorCircle: View {
    var color : String
    var body : some View{
        Circle()
            .frame(width: 20, height: 20, alignment: .center)
            .foregroundColor(Color(UIColor(named: "\(color)")!))
    }
}


