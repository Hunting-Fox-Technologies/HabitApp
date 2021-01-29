//
//  Settings.swift
//  Habitapp
//
//  Created by Brandon Suarez on 1/25/21.
//

import SwiftUI

struct Settings : View {
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
                            }) {
                                Text("NAME")
                                    .font(.system(size: 10, weight: .regular, design: .default))
                                    .foregroundColor(.black)
                                    .frame(width: 41, height: 18, alignment: .center)
                            }
                            Button(action : {
                                //Some action
                            }) {
                                Text("START")
                                    .font(.system(size: 10, weight: .regular, design: .default))
                                    .foregroundColor(.black)
                                    .frame(width: 42, height: 18, alignment: .center)
                                    
                            }
                            Button(action : {
                                //Some action
                            }) {
                                Text("LAST")
                                    .font(.system(size: 10, weight: .regular, design: .default))
                                    .foregroundColor(.black)
                                    .frame(width: 36, height: 18, alignment: .center)
                            }
                            Button (action : {
                                //Some action
                            }) {
                                Text("CUSTOM")
                                    .font(.system(size: 10, weight: .regular, design: .default))
                                    .foregroundColor(.black)
                                    .frame(width: 55, height: 18, alignment: .center)
                                    .background(Color(UIColor(named: "LightGray")!))
                                    .cornerRadius(5)
                            }
                            Button(action : {
                                //Some action
                            }) {
                                Text("SET")
                                    .font(.system(size: 10, weight: .regular, design: .default))
                                    .foregroundColor(Color(UIColor(named : "DarkGray")!))
                                    .frame(width: 30, height: 18, alignment: .center)
                                    .background(Color(UIColor(named: "LightGray")!))
                                    .cornerRadius(5)
                            }
                            
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
                            }){
                                Text("ON")
                                    .font(.system(size: 10, weight: .regular, design: .default))
                                    .foregroundColor(.black)
                                    .frame(width: 28, height: 18, alignment: .center)
                                    .background(Color(UIColor(named : "LightGray")!))
                                    .cornerRadius(5)
                            }
                            Button(action : {
                                //Some action
                            }) {
                                Text("YES")
                                    .font(.system(size: 10, weight: .regular, design: .default))
                                    .foregroundColor(.black)
                                    .frame(width: 33, height: 18, alignment: .center)
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
                            }) {
                                Text("LIGHT")
                                    .font(.system(size: 10, weight: .regular, design: .default))
                                    .foregroundColor(.black)
                                    .frame(width: 45, height: 18, alignment: .center)
                                    .background(Color(UIColor(named : "LightGray")!))
                                    .cornerRadius(5)
                            }
                            Button(action : {
                                //Some actions
                            }) {
                                Text("DARK")
                                    .font(.system(size: 10, weight: .regular, design: .default))
                                    .foregroundColor(.black)
                                    .frame(width: 42, height: 18, alignment: .center)
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
                            }) {
                                Text("ON")
                                    .font(.system(size: 10, weight: .regular, design: .default))
                                    .foregroundColor(.black)
                                    .frame(width: 28, height: 18, alignment: .center)
                            }
                            Button(action : {
                                //Some actions
                            }) {
                                Text("OFF")
                                    .font(.system(size: 10, weight: .regular, design: .default))
                                    .foregroundColor(.black)
                                    .frame(width: 33, height: 18, alignment: .center)
                                    .background(Color(UIColor(named : "LightGray")!))
                                    .cornerRadius(5)
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
                            Text("WEEK START:")
                                .font(.system(size: 10, weight: .regular, design: .default))
                                .kerning(2)
                                .foregroundColor(.black)
                            Spacer()
                                .frame(width: 32, height: 18)
                            Button(action : {
                                //Some actions
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
                            }) {
                                Text("ON")
                                    .font(.system(size: 10, weight: .regular, design: .default))
                                    .foregroundColor(.black)
                                    .frame(width: 28, height: 18, alignment: .center)
                            }
                            Button(action : {
                                //Some actions
                            }) {
                                Text("OFF")
                                    .font(.system(size: 10, weight: .regular, design: .default))
                                    .foregroundColor(.black)
                                    .frame(width: 33, height: 18, alignment: .center)
                                    .background(Color(UIColor(named : "LightGray")!))
                                    .cornerRadius(5)
                            }
                                
                        }
                        Button(action : {
                            //Some actions
                        }) {
                            Text("ARCHIVE")
                                .font(.system(size: 10, weight: .regular, design: .default))
                                .kerning(2)
                                .foregroundColor(.black)
                        }
                        
                    }
                    VStack(alignment : .leading , spacing : 18){
                        Title(title:"REMINDERS")
                        Button(action : {
                            //Some actions
                        }) {
                            Text("GENERAL APP REMINDERS")
                                .font(.system(size: 10, weight: .regular, design: .default))
                                .kerning(2)
                                .foregroundColor(.black)
                        }
                        Button(action : {
                            //Some actions
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
                        }) {
                            Text("REMOVE ALL REMINDERS")
                                .font(.system(size: 10, weight: .regular, design: .default))
                                .kerning(2)
                                .foregroundColor(.black)
                        }
                        Button(action : {
                            //Some actions
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
                            }) {
                                Text("ON")
                                    .font(.system(size: 10, weight: .regular, design: .default))
                                    .foregroundColor(.black)
                                    .frame(width: 28, height: 18, alignment: .center)
                            }
                            Button(action : {
                                //Some actions
                            }) {
                                Text("OFF")
                                    .font(.system(size: 10, weight: .regular, design: .default))
                                    .foregroundColor(.black)
                                    .frame(width: 33, height: 18, alignment: .center)
                                    .background(Color(UIColor(named : "LightGray")!))
                                    .cornerRadius(5)
                            }
                                
                        }
                    }
                    VStack(alignment : .leading , spacing : 15){
                        Title(title:"HELP ICON ON MAIN LIST")
                        HStack(spacing : 9){
                            Spacer().frame(width: 30, height: 18)
                            Button(action : {
                                //Some action
                            }) {
                                Text("SHOW")
                                    .font(.system(size: 10, weight: .regular, design: .default))
                                    .foregroundColor(.black)
                                    .frame(width: 46, height: 18, alignment: .center)
                            }
                            Button (action : {
                                //Some action
                            }) {
                                Text("HIDE")
                                    .font(.system(size: 10, weight: .regular, design: .default))
                                    .foregroundColor(.black)
                                    .frame(width: 38, height: 18, alignment: .center)
                                    .background(Color(UIColor(named: "LightGray")!))
                                    .cornerRadius(5)
                            }
                            
                        }
                    }
                    VStack(alignment : .leading , spacing : 15){
                        Title(title:"MAIN DISPLAY ON HABIT BAR")
                        HStack(spacing : 9){
                            Spacer().frame(width: 30, height: 18)
                            Button(action : {
                                //Some action
                            }) {
                                Text("STREAK")
                                    .font(.system(size: 10, weight: .regular, design: .default))
                                    .foregroundColor(.black)
                                    .frame(width: 50, height: 18, alignment: .center)
                                    .background(Color(UIColor(named: "LightGray")!))
                                    .cornerRadius(5)
                                    
                            }
                            Button(action : {
                                //Some action
                            }) {
                                Text("COUNT")
                                    .font(.system(size: 10, weight: .regular, design: .default))
                                    .foregroundColor(.black)
                                    .frame(width: 47, height: 18, alignment: .center)
                            }
                            Button (action : {
                                //Some action
                            }) {
                                Text("LEFT TO GOAL")
                                    .font(.system(size: 10, weight: .regular, design: .default))
                                    .foregroundColor(.black)
                                    .frame(width: 81, height: 18, alignment: .center)
                            }
                            
                        }
                    }
                    VStack(alignment : .leading , spacing : 15){
                        Title(title:"SMALL DISPLAY ON HABIT BAR")
                        HStack(spacing : 9){
                            Spacer().frame(width: 30, height: 18)
                            Button(action : {
                                //Some action
                            }) {
                                Text("GOAL")
                                    .font(.system(size: 10, weight: .regular, design: .default))
                                    .foregroundColor(.black)
                                    .frame(width: 39, height: 18, alignment: .center)
                                    .background(Color(UIColor(named: "LightGray")!))
                                    .cornerRadius(5)
                                    
                            }
                            Button(action : {
                                //Some action
                            }) {
                                Text("LAST")
                                    .font(.system(size: 10, weight: .regular, design: .default))
                                    .foregroundColor(.black)
                                    .frame(width: 36, height: 18, alignment: .center)
                            }
                            Button (action : {
                                //Some action
                            }) {
                                Text("STREAK")
                                    .font(.system(size: 10, weight: .regular, design: .default))
                                    .foregroundColor(.black)
                                    .frame(width: 50, height: 18, alignment: .center)
                            }
                            Button (action : {
                                //Some action
                            }) {
                                Text("NOTE")
                                    .font(.system(size: 10, weight: .regular, design: .default))
                                    .foregroundColor(.black)
                                    .frame(width: 39, height: 18, alignment: .center)
                            }
                            
                        }
                    }
                    VStack(alignment : .leading , spacing : 15){
                        Title(title: "INSTRUCTIONS")
                        Button(action : {
                            //Some actions
                        }) {
                            Text("WALKTRHOUGH")
                                .font(.system(size: 10, weight: .regular, design: .default))
                                .foregroundColor(.black)
                                .kerning(2)
                        }
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

