//
//  Create.swift
//  Habitapp
//
//  Created by Brandon Suarez on 1/21/21.
//

import SwiftUI

struct Create: View {
    @Environment(\.presentationMode) var presentationMode
    
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
    @State var sun = true
    @State var mon = true
    @State var tue = true
    @State var wed = true
    @State var thu = true
    @State var fri = true
    @State var sat = true
    //State Variable for GROUPS
    @State var groups = false
    //State Variables for the CHOSE A COLOR
    @State var z4 = 1
    //State Variable for REMINDERS
    @State var reminders = false
    //State Var for SHOW BADGE IF NO ACTIVITY TODAY
    @State var z5 = 0
    //State Var for SHOW TARGET LINE IN CHARTS
    @State var z6 = 0
    //State Var for HABIT UNITS
    @State var z7 = 0
    //State Var for ADD NOTE
    @State var notes : String = ""
    //State Var for WRITE SOMETHING THAT MOTIVATE YOU
    @State var quote : String = ""
    
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
                                self.presentationMode.wrappedValue.dismiss()
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
                        HStack(spacing : 9){ //
                            ChangeRoundButton(day : "SUN",state: self.sun)
                            ChangeRoundButton(day : "MON",state: self.mon)
                            ChangeRoundButton(day : "TUE",state: self.tue)
                            ChangeRoundButton(day : "WED",state: self.wed)
                            ChangeRoundButton (day : "THU",state: self.thu)
                            ChangeRoundButton(day : "FRI",state: self.fri)
                            ChangeRoundButton(day : "SAT",state: self.sat)
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
                            Button(action : {
                                //Some actions
                                self.z4 = 1
                            }){
                                ColorCircle(color: "CC1",access: 1 , state: self.z4)
                            }
                            Button(action : {
                                //Some actions
                                self.z4 = 2
                            }){
                                ColorCircle(color: "CC2",access: 2 , state: self.z4)
                            }
                            Button(action : {
                                //Some actions
                                self.z4 = 3
                            }){
                                ColorCircle(color: "CC3",access: 3 , state: self.z4)
                            }
                            Button(action : {
                                //Some actions
                                self.z4 = 4
                            }){
                                ColorCircle(color: "CC4",access: 4 , state: self.z4)
                            }
                            Button(action : {
                                //Some actions
                                self.z4 = 5
                            }){
                                ColorCircle(color: "CC5",access: 5 , state: self.z4)
                            }
                            Button(action : {
                                //Some actions
                                self.z4 = 6
                            }){
                                ColorCircle(color: "CC6",access: 6 , state: self.z4)
                            }
                            Button(action : {
                                //Some actions
                                self.z4 = 7
                            }){
                                ColorCircle(color: "CC7",access: 7 , state: self.z4)
                            }
                            Button(action : {
                                //Some actions
                                self.z4 = 8
                            }){
                                ColorCircle(color: "CC8",access: 8 , state: self.z4)
                            }
                        }
                        HStack(spacing : 15) {
                            Button(action : {
                                //Some actions
                                self.z4 = 9
                            }){
                                ColorCircle(color: "CC9",access: 9 , state: self.z4)
                            }
                            Button(action : {
                                //Some actions
                                self.z4 = 10
                            }){
                                ColorCircle(color: "CC10",access: 10 , state: self.z4)
                            }
                            Button(action : {
                                //Some actions
                                self.z4 = 11
                            }){
                                ColorCircle(color: "CC11",access: 11 , state: self.z4)
                            }
                            Button(action : {
                                //Some actions
                                self.z4 = 12
                            }){
                                ColorCircle(color: "CC12",access: 12 , state: self.z4)
                            }
                            Button(action : {
                                //Some actions
                                self.z4 = 13
                            }){
                                ColorCircle(color: "CC13",access: 13 , state: self.z4)
                            }
                            Button(action : {
                                //Some actions
                                self.z4 = 14
                            }){
                                ColorCircle(color: "CC14",access: 14 , state: self.z4)
                            }
                            Button(action : {
                                //Some actions
                                self.z4 = 15
                            }){
                                ColorCircle(color: "CC15",access: 15 , state: self.z4)
                            }
                            Button(action : {
                                //Some actions
                                self.z4 = 16
                            }){
                                ColorCircle(color: "LightGray",access: 16 , state: self.z4)
                            }
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
                                    self.z5 = 0
                                }){//NO / w = 28 / 0 / z5
                                    changeButton(title: "NO", width: 28, access: 0, state: z5)
                                        
                                }
                                Button(action : {
                                    //Some actions here
                                    self.z5 = 1
                                }) {//YES / w = 33 / 0 / z5
                                    changeButton(title: "YES", width: 33, access: 1, state: z5)
                                }
                            }
                            
                        }
                        VStack(alignment : .leading ,spacing:15){
                            Title(title: "SHOW TARGET LINE IN CHARTS")
                            HStack(spacing : 9){
                                Button(action:{
                                    //Some actions
                                    self.z6 = 0
                                }){//NO / w = 28 / 0 / z6
                                    changeButton(title: "NO", width: 28, access: 0, state: z6)
                                }
                                Button(action : {
                                    //Some actions
                                    self.z6 = 1
                                }){//YES / w = 33 / 1 / z6
                                    changeButton(title: "YES", width: 33, access: 1, state: z6)
                                        
                                }
                            }
                            
                        }
                        VStack(alignment : .leading ,spacing:15){
                            Title(title: "HABIT UNITS")
                            HStack{
                                Button(action : {
                                    //Some actions
                                    self.z7 = 0
                                }) {//NONE / w = 43 / 0 /z7
                                    changeButton(title: "NONE", width: 43, access: 0, state: z7)
                                }
                                Button(action : {
                                    //Some actions
                                    self.z7 = 1
                                }) {//CUSTOM / w = 60 / 1 /z7
                                    changeButton(title: "CUSTOM", width: 60, access: 1, state: z7)
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

//------------------------------------------------------------------------

//This is the function for the Round buttons

struct RoundButtonActive: View {
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

struct RoundButtonNoActive: View {
    var day : String
    var body: some View {
        Text(day)
            .font(.system(size: 10, weight: .regular, design: .default))
            .foregroundColor(.black)
            .frame(width: 32, height: 32, alignment: .center)
            .overlay(
                Circle()
                    .stroke(Color(UIColor(named : "LightGray")!))
                    .frame(width: 32, height: 32, alignment: .center)
                    
            )
    }
}

struct ChangeRoundButton : View {
    var day : String
    @State var state : Bool
        
    var body : some View {
        
        Button(action : {
            //Some action
            self.state.toggle()
        }){
            if state {
                RoundButtonActive(day: day)
            }
            else {
                RoundButtonNoActive(day: day)
            }
        }
    }
}

//-------------------------------------------------

//-------------------------------------------------

struct Title: View {
    var title : String
    var body : some View {
        Text("\(title)")
            .font(.system(size: 10, weight: .bold, design: .default))
            .foregroundColor(.black)
            .kerning(2)
    }
}

//-------------------------------------------------

//this is the function for the Colored Circles
struct ColorCircle: View {
    var color : String
    var access : Int
    var state : Int
    
    var body : some View{
        if state == access {
            Circle()
                .frame(width: 20, height: 20, alignment: .center)
                .foregroundColor(Color(UIColor(named: "\(color)")!))
                .overlay(
                    Circle()
                        .stroke(Color(UIColor(named : "DarkGray")!),lineWidth: 2)
                    )
            }
        else {
            Circle()
                .frame(width: 20, height: 20, alignment: .center)
                .foregroundColor(Color(UIColor(named: "\(color)")!))
            }
        
    }
}

//-------------------------------------------------

//-------------------------------------------------
//This is the calling fuction for the Groups Button
struct FullScreenModalViewGroups : View {
    @Environment(\.presentationMode) var presentationMode
    var body : some View {
        VStack{
            Groups()
        }
    }
}
//-------------------------------------------------

//This is the calling fuction for the Reminders Button
struct FullScreenModalViewReminders : View {
    @Environment(\.presentationMode) var presentationMode
    var body : some View {
        VStack{
            Reminders()
        }
    }
}
//-------------------------------------------------

//this is the function of the buttons
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
