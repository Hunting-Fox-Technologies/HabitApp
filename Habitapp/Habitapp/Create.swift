//
//  Create.swift
//  Habitapp
//
//  Created by Brandon Suarez on 1/21/21.
//

import SwiftUI

struct Create: View {
    //State variables for the NAME YOUR HABIT
    @State var habitName : String = ""
    @State var change = false
    
    //State Variable for the BUILD OR QUIT THIS HABIT ?
    @State var z1 = 0
    //State Variable for the CHOSE YOUR GOAL PERIOD
    @State var z2 = 0
    //State Variables for the SET YOUR GOAL
    @State var setyourgoal : String = ""
    //State Varibles for the DEFAULT COUNT
    @State var count : Int = 1
    //State Variables for the LOG ACTIVITY USING
    @State var z3 = 0
    //State Variables for TRACK GOALS IN WHICH ACTIVITY DAY
    @State var z4 = 0
    //
    @State var notes : String = ""
    @State var quote : String = ""
        
    @State var groups = false
    @State var reminders = false
    
    //
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
                        HStack(spacing : 15){ // ---------------------xxxxx
                            TextField("Workout , Study , Yoga ,etc", text: $habitName)
                                .font(.system(size: 10, weight: .regular, design: .default))
                                .frame(width: 302, height: 36, alignment: .center)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .cornerRadius(5)
                                
                            
                            Button(action : {
                                //Some action here
                                self.change.toggle()
                            }) {
                                Text("IDEAS")
                                    .font(.system(size: 10, weight: .regular, design: .default))
                                    .frame(width: 48, height: 18, alignment: .center)
                                    .background(Color(UIColor(named: "LightGray")!))
                                    .cornerRadius(5)
                                    .foregroundColor(.black)
                            }
                            .sheet(isPresented : $change) {
                                Ideas()
                            }
                            
                        }
                    }
                    VStack(spacing : 15){
                        Title(title: "BUILD OR QUIT THIS HABIT ?")
                        HStack(spacing : 9){
                            Button(action : {
                                self.z1 = 0
                            }){ // BUILD / w = 45 / 0 / z1
                                changeButton(title: "BUILD", width: 45, access: 0, state: z1)
                            }
                            Button(action : {
                                //Some action here
                                self.z1 = 1
                            }) { // QUIT / w = 38 / 1 / z1
                                changeButton(title: "QUIT", width: 38, access: 1, state: z1)
                                
                            }
                        }
                    }
                    VStack(alignment : .leading ,spacing : 15){
                        Title(title: "CHOSE YOUR GOAL PERIOD")
                        HStack(spacing : 9){
                            Button(action : {
                                //An Action here
                                self.z2 = 0
                            }){// DAILY / w = 43 / 0 / z2
                                changeButton(title: "DAILY", width: 43, access: 0, state: z2)
                            }
                            Button(action: {
                                //Some action
                                self.z2 = 1
                            }){// WeEKLY / w = 56 / 1 / z2
                                changeButton(title: "WEEKLY", width: 56, access: 1, state: z2)
                            }
                            Button(action : {
                                //Some Action
                                self.z2 = 2
                            }){// MONTHLY / W = 65 / 2 / z2
                                changeButton(title: "MONTHLY", width: 65, access: 2, state: z2)
                            }
                            Button(action : {
                                //Some action here
                                self.z2 = 3
                            }){// YEARLY / w = 54 / 3 / z2
                                changeButton(title: "YEARLY", width: 54, access: 3, state: z2)
                            }
                        }
                    }
                    VStack(alignment : .leading , spacing : 15){ //I still need to finish this
                        Title(title : "SET YOUR GOAL")
                        HStack(spacing : 15){
                            TextField("", text : $setyourgoal)
                                .font(.system(size:10))
                                .foregroundColor(.black)
                                .frame(width: 106, height: 30, alignment: .center)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                            Text("OR MORE TIMES PER DAY")
                                .foregroundColor(.black)
                                .font(.system(size: 10, weight: .regular, design: .default))
                                .kerning(2)
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
                                self.z3 = 0
                            }){// CUSTOM VALUE / w = 100 / 0 / z5
                                changeButton(title: "CUSTOM VALUE", width: 100, access: 0, state: z3)
                            }
                            Button(action : {
                                //Some ACtion here
                                self.z3 = 1
                            }){// DEFAULT COUNT  / w = 104 / 1 / z5
                                changeButton(title: "DEFAULT BUTTON", width: 104, access: 1, state: z3)
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
                        Title(title: "GROUP :")//------------------------------------
                        Button(action: {
                            //Some actions
                            self.groups.toggle()
                        }) {
                            HStack(spacing : 296){
                                Text("NONE")
                                    .font(.system(size: 10, weight: .regular, design: .default))
                                    .foregroundColor(.blue)
                                Image("DownWardArrow")
                            }
                        }
                        .fullScreenCover(isPresented: $groups, content: FullScreenModalViewGroups.init)
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
                            Title(title:"REMINDERS")//--------------------------------
                            Button(action : {
                                //Some actions
                                self.reminders.toggle()
                            }) {
                                HStack(spacing:296){
                                    Text("NONE")
                                        .foregroundColor(.blue)
                                        .font(.system(size: 10, weight: .regular, design: .default))
                                    Image("DownWardArrow")
                                }
                                
                            }
                            .fullScreenCover(isPresented: $reminders, content: FullScreenModalViewReminders.init)
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
            .foregroundColor(.black)
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

//This is the calling fuction for the Group Button
struct FullScreenModalViewGroups : View {
    @Environment(\.presentationMode) var presentationMode
    var body : some View {
        VStack{
            Groups()
                .onTapGesture {
                    presentationMode.wrappedValue.dismiss()
                }
        }
    }
}
//-------------------------------------------------

//This is the calling fuction for the Group Button
struct FullScreenModalViewReminders : View {
    @Environment(\.presentationMode) var presentationMode
    var body : some View {
        VStack{
            Reminders()
                .onTapGesture {
                    presentationMode.wrappedValue.dismiss()
                }
        }
    }
}
//-------------------------------------------------

//-------------------------------------------------
struct activeButton : View {
    var title : String
    var width : CGFloat
    var body : some View {
        Text("\(title)")
            .font(.system(size: 10, weight: .regular, design: .default))
            .foregroundColor(.black)
            .frame(width: width, height: 18, alignment: .center)
            .background(Color(UIColor(named: "LightGray")!))
            .cornerRadius(5)
    }
}

//-------------------------------------------------

//-------------------------------------------------
struct noActiveButton : View {
    var title : String
    var width : CGFloat
    var body : some View {
        Text("\(title)")
            .font(.system(size: 10, weight: .regular, design: .default))
            .foregroundColor(.black)
            .frame(width: width, height: 18, alignment: .center)
    }
}

//-------------------------------------------------

//-------------------------------------------------
struct changeButton : View {
    var title : String
    var width : CGFloat
    var access : Int
    var state : Int
    
    var body : some View {
        if state == access {
            activeButton(title: "\(title)", width: width)
        }
        else {
            noActiveButton(title: "\(title)", width: width)
        }
    }
}

//-------------------------------------------------
