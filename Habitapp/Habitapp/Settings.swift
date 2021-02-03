//
//  Settings.swift
//  Habitapp
//
//  Created by Brandon Suarez on 1/25/21.
//

import SwiftUI

struct Settings : View {
    @Environment(\.presentationMode) var presentationMode
    @State var set = false
    //State var for the SORT GOALS BY
    @State var z1 = 0
    //State var for the APP SETTINGS
    @State var z2 = 0 //SOUND
    @State var z3 = 0 //BACKGROUND
    @State var z4 = 0 //BACK UP REMINDERS
    @State var z5 = false //WEEK START DATE
    @State var z6 = false //WEEK START TIME
    
    //State var for the UTILITIES
    @State var z7 = false //TURN ON PASSCODE
    @State var z8 = false //ARCHIVE
    
    //State var for the REMINDERS
    @State var z9 = false //GENERAL APP REMINDERS
    @State var z10 = false //REMINDER SOUND
    @State var z11 = false //SNOOZE TIME
    @State var z12 = false //REMOVE ALL REMINDERS
    @State var z13 = false //REMOVE ALL ICON BADGES
    
    //State var for the SUMMARY SETTINGS
    @State var z14 = 0
    
    //State var for the HELP ICON ON MAIN LIST
    @State var z15 = 0
    
    //State var for the MAIN DISPLAY ON HABIT BAR
    @State var z16 = 0
    
    //State var for the SMALL DISPLAY ON HABIT BAR
    @State var z17 = 0
    
    //State var for the INSTRUCTIONS
    @State var z18 = false
    
    var body : some View {
        ScrollView(.vertical){
            VStack(alignment : .leading , spacing : 30){
                Group{
                    HStack(spacing : 165){
                        Text("SETTINGS")
                            .font(.system(size: 25, weight: .regular, design: .default))
                            .kerning(5)
                        Button(action : {
                            //Some actions
                            self.presentationMode.wrappedValue.dismiss()
                        }) {
                            Text("DONE")
                                .font(.system(size: 10, weight: .regular, design: .default))
                                .frame(width: 48, height: 18, alignment: .center)
                                .background(Color(UIColor(named: "BBlue")!))
                                .cornerRadius(5)
                                .foregroundColor(.white)
                        }
                        
                    }
                    VStack(alignment : .leading , spacing : 15){
                        Title(title: "SORT GOALS BY")
                        HStack(spacing : 9){
                            Spacer().frame(width: 30, height: 18)
                            Button(action : {
                                //Some actions
                                self.z1 = 0
                            }) {//NAME / w = 41 / 0 / z1
                                changeButton(title: "NAME", width: 41, access: 0, state: z1)
                            }
                            Button(action : {
                                //Some action
                                self.z1 = 1
                            }) {// START / w = 42 / 1 / z1
                                changeButton(title: "START", width: 42, access: 1, state: z1)
                                    
                            }
                            Button(action : {
                                //Some action
                                self.z1 = 2
                            }) {//LAST / w = 36 / 2 / z1
                                changeButton(title: "LAST", width: 36, access: 2, state: z1)
                            }
                            Button (action : {
                                //Some action
                                self.z1 = 3
                            }) {// CUSTOM / w = 55 / 3 / z1
                                changeButton(title: "CUSTOM", width: 55, access: 3, state: z1)
                            }
                            Button(action : {
                                //Some action
                                self.set.toggle()
                            }) {
                                Text("SET")
                                    .font(.system(size: 10, weight: .regular, design: .default))
                                    .foregroundColor(Color(UIColor(named : "DarkGray")!))
                                    .frame(width: 30, height: 18, alignment: .center)
                                    .background(Color(UIColor(named: "LightGray")!))
                                    .cornerRadius(5)
                            }
                            .fullScreenCover(isPresented: $set, content: FullScreenModalViewSetOrder.init)
                            
                        }
                    }
                    VStack(alignment : .leading , spacing : 15){
                        Title(title: "APP SETTINGS")
                        HStack{
                            Text("SOUND:")
                                .font(.system(size: 10, weight: .regular, design: .default))
                                .kerning(2)
                            Spacer().frame(width: 56, height: 18)
                            Button(action : {
                                //Some actions
                                self.z2 = 0
                            }){//ON / w = 28 / 0 / z2
                                changeButton(title: "ON", width: 28, access: 0, state: z2)
                            }
                            Button(action : {
                                //Some action
                                self.z2 = 1
                            }) {//YES / w = 10 / 1 / z2
                                changeButton(title: "OFF", width: 33, access: 1, state: z2)
                            }
                        }
                        HStack{
                            Text("BACKGROUND:")
                                .font(.system(size: 10, weight: .regular, design: .default))
                                .kerning(2)
                                .foregroundColor(.black)
                            Spacer()
                                .frame(width: 12, height: 18)
                            Button(action : {
                                //Some actions
                                self.z3 = 0
                            }) { // LIGHT / w = 45 / 0 / z3
                                changeButton(title: "LIGHT", width: 45, access: 0, state: z3)
                            }
                            Button(action : {
                                //Some actions
                                self.z3 = 1
                            }) { // DARK / w = 42 / 1 / z3
                                changeButton(title: "DARK", width: 42, access: 1, state: z3)
                            }
                                
                        }
                        HStack{
                            Text("BACK UP REMINDERS:")
                                .font(.system(size: 10, weight: .regular, design: .default))
                                .kerning(2)
                                .foregroundColor(.black)
                            Spacer()
                                .frame(width: 18, height: 18)
                            Button(action : {
                                //Some actions
                                self.z4 = 0
                            }) {//ON / w = 28 / 0 / z4
                                changeButton(title: "ON", width: 28, access: 0, state: z4)
                            }
                            Button(action : {
                                //Some actions
                                self.z4 = 1
                            }) {//OFF / w = 33 / 1 / z4
                                changeButton(title: "OFF", width: 33, access: 1, state: z4)
                            }
                                
                        }
                        HStack{
                            Text("WEEK START:")
                                .font(.system(size: 10, weight: .regular, design: .default))
                                .kerning(2)
                                .foregroundColor(.black)
                            Spacer()
                                .frame(width: 32, height: 18)
                            Button(action : {
                                //Some actions
                                self.z5.toggle()
                            }) {
                                HStack(spacing : 30){
                                    Text("SUNDAY")
                                        .font(.system(size: 10, weight: .regular, design: .default))
                                        .foregroundColor(.black)
                                        .frame(width: 57, height: 18, alignment: .center)
                                    Image("DownWardArrow")
                                }
                            }
                        }
                        
                        HStack{
                            Text("DAY START:")
                                .font(.system(size: 10, weight: .regular, design: .default))
                                .kerning(2)
                                .foregroundColor(.black)
                            Spacer()
                                .frame(width: 42, height: 18)
                            Button(action : {
                                //Some actions
                                self.z6.toggle()
                            }) {
                                HStack(spacing : 30){
                                    Text("12:00 AM")
                                        .font(.system(size: 10, weight: .regular, design: .default))
                                        .foregroundColor(.black)
                                        .frame(width: 57, height: 18, alignment: .center)
                                    Image("DownWardArrow")
                                }
                            }
                            
                                
                        }
                        
                    }
                    VStack(alignment : .leading , spacing : 15){
                        Title(title:"UTILITIES")
                        HStack{
                            Text("TURN ON PASSCODE:")
                                .font(.system(size: 10, weight: .regular, design: .default))
                                .kerning(2)
                                .foregroundColor(.black)
                            Spacer()
                                .frame(width: 18, height: 18)
                            Button(action : {
                                //Some actions
                                self.z7.toggle()
                            }) {//ON / w = 28 / 0 /z7
                                Text("ON")
                                    .font(.system(size: 10, weight: .regular, design: .default))
                                    .foregroundColor(.black)
                            }
                            .fullScreenCover(isPresented: $z7, content: FullScreenModalViewPasscode.init)
                                
                        }
                        Button(action : {
                            //Some actions
                            self.z8.toggle()
                        }) {
                            Text("ARCHIVE")
                                .font(.system(size: 10, weight: .regular, design: .default))
                                .kerning(2)
                                .foregroundColor(.black)
                        }
                        .fullScreenCover(isPresented: $z8, content: FullScreenModalViewArchive.init)
                        
                    }
                    VStack(alignment : .leading , spacing : 18){
                        Title(title:"REMINDERS")
                        Button(action : {
                            //Some actions
                            self.z9.toggle()
                        }) {
                            Text("GENERAL APP REMINDERS")
                                .font(.system(size: 10, weight: .regular, design: .default))
                                .kerning(2)
                                .foregroundColor(.black)
                        }
                        Button(action : {
                            //Some actions
                            self.z10.toggle()
                        }) {
                            HStack(spacing : 30){
                                Text("REMINDER SOUND : CLARINET")
                                    .font(.system(size: 10, weight: .regular, design: .default))
                                    .kerning(2)
                                    .foregroundColor(.black)
                                Image("DownWardArrow")
                            }
                        }
                        Button(action : {
                            //Some actions
                            self.z11.toggle()
                        }) {
                            HStack(spacing : 30){
                                Text("SNOOZE TIME : 15 MIN")
                                    .font(.system(size: 10, weight: .regular, design: .default))
                                    .kerning(2)
                                    .foregroundColor(.black)
                                Image("DownWardArrow")
                            }
                        }
                        Button(action : {
                            //Some actions
                            self.z12.toggle()
                        }) {
                            Text("REMOVE ALL REMINDERS")
                                .font(.system(size: 10, weight: .regular, design: .default))
                                .kerning(2)
                                .foregroundColor(.black)
                        }
                        Button(action : {
                            //Some actions
                            self.z13.toggle()
                        }) {
                            Text("REMOVE ALL ICON BADGES")
                                .font(.system(size: 10, weight: .regular, design: .default))
                                .kerning(2)
                                .foregroundColor(.black)
                        }
                    }
                    VStack(alignment : .leading , spacing : 15){
                        Title(title:"SUMMARY SETTINGS")
                        HStack{
                            Text("TIMESTAMP CHARTS:")
                                .font(.system(size: 10, weight: .regular, design: .default))
                                .kerning(2)
                                .foregroundColor(.black)
                            Spacer()
                                .frame(width: 18, height: 18)
                            Button(action : {
                                //Some actions
                                self.z14 = 0
                            }) {//ON / w = 28 / 0 / z14
                                changeButton(title: "ON", width: 28, access: 0, state: z14)
                            }
                            Button(action : {
                                //Some actions
                                self.z14 = 1
                            }) {//OFF / w = 33 / 1 / z14
                                changeButton(title: "OFF", width: 33, access: 1, state: z14)
                            }
                                
                        }
                    }
                    VStack(alignment : .leading , spacing : 15){
                        Title(title:"HELP ICON ON MAIN LIST")
                        HStack(spacing : 9){
                            Spacer().frame(width: 30, height: 18)
                            Button(action : {
                                //Some action
                                self.z15 = 0
                            }) {//SHOW / w = 46 / 0 / z15
                                changeButton(title: "SHOW", width: 46, access: 0, state: z15)
                            }
                            Button (action : {
                                //Some action
                                self.z15 = 1
                            }) {//HIDE / w = 38 / 1 / z15
                                changeButton(title: "HIDE", width: 38, access: 1, state: z15)
                            }
                            
                        }
                    }
                    VStack(alignment : .leading , spacing : 15){
                        Title(title:"MAIN DISPLAY ON HABIT BAR")
                        HStack(spacing : 9){
                            Spacer().frame(width: 30, height: 18)
                            Button(action : {
                                //Some action
                                self.z16 = 0
                            }) {// STREAK / w = 50 / 0 / z16
                                changeButton(title: "STREAK", width: 50, access: 0, state: z16)
                                    
                            }
                            Button(action : {
                                //Some action
                                self.z16 = 1
                            }) {// COUNT / w = 47 / 1 / z16
                                changeButton(title: "COUNT", width: 47, access: 1, state: z16)
                            }
                            Button (action : {
                                //Some action
                                self.z16 = 2
                            }) {//LEFT TO GOAL / 81 / 2 / z16
                                changeButton(title: "LEFT TO GOAL", width: 81, access: 2, state: z16)
                            }
                            
                        }
                    }
                    VStack(alignment : .leading , spacing : 15){
                        Title(title:"SMALL DISPLAY ON HABIT BAR")
                        HStack(spacing : 9){
                            Spacer().frame(width: 30, height: 18)
                            Button(action : {
                                //Some action
                                self.z17 = 0
                            }) {
                                changeButton(title: "GOAL", width: 39, access: 0, state: z17)
                            }
                            Button(action : {
                                //Some action
                                self.z17 = 1
                            }) {
                                changeButton(title: "LAST", width: 36, access: 1, state: z17)
                            }
                            Button (action : {
                                //Some action
                                self.z17 = 2
                            }) {
                                changeButton(title: "STREAK", width: 50, access: 2, state: z17)
                            }
                            Button (action : {
                                //Some action
                                self.z17 = 3
                            }) {
                                changeButton(title: "NOTE", width: 39, access: 3, state: z17)
                            }
                            
                        }
                    }
                    VStack(alignment : .leading , spacing : 15){
                        Title(title: "INSTRUCTIONS")
                        Button(action : {
                            //Some actions
                            self.z18.toggle()
                        }) {
                            Text("WALKTRHOUGH")
                                .font(.system(size: 10, weight: .regular, design: .default))
                                .foregroundColor(.black)
                                .kerning(2)
                        }
                        .sheet(isPresented: $z18, content: {
                            Walkthrough()
                        })
                        Spacer()
                    }
       
       
                }
                
            }
            .frame(maxWidth: .infinity)
        }
    }
}


struct Settigns_Preview : PreviewProvider {
    static var previews : some View {
        Settings()
    }
}


struct FullScreenModalViewSetOrder : View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View{
        VStack{
            SetOrder()
        }
    }
}

struct FullScreenModalViewArchive : View {
    @Environment(\.presentationMode) var presentationMode
    var body : some View {
        VStack{
            Archive()
        }
    }
}

struct FullScreenModalViewPasscode : View {
    @Environment(\.presentationMode) var presentationMode
    var body : some View {
        VStack{
            Passcode()
        }
        .onTapGesture {
            presentationMode.wrappedValue.dismiss()
        }
    }
}
