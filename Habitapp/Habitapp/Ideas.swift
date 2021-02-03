//
//  Ideas.swift
//  Habitapp
//
//  Created by Brandon Suarez on 1/27/21.
//

import SwiftUI

struct Ideas : View {
    //Envrionment var for the DONE button
    @Environment(\.presentationMode) var presentationMode
    
    var body : some View {
        ScrollView(.vertical){
            VStack(alignment : .leading){
                Spacer()
                    .frame(height : 21)
                HStack(spacing : 220){
                    BigTitle(title: "IDEAS")
                    Button(action : {
                        //some action
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Text("DONE")
                            .foregroundColor(.white)
                            .font(.system(size: 10, weight: .regular, design: .default))
                            .frame(width: 52, height: 18, alignment: .center)
                            .background(Color(UIColor(named : "BBlue")!))
                            .cornerRadius(5)
                    }
                }
                Group {
                    HStack(spacing :30){
                        Image("Get Gealthy")
                        Title2(title: "GET HEALTHY")
                    }
                    Spacer()
                        .frame(height: 15)
                    HStack{
                        Spacer()
                            .frame(width : 55)
                        VStack(alignment : .leading){
                            Text("BUILD goals, start each day as unmet. Log activity to meet your goal targetand extend your streak. Color show progressto your goal target.")
                                .font(.system(size: 10, weight: .regular, design: .default))
                                .kerning(1)
                                .foregroundColor(Color(UIColor(named : "DarkGray")!))
                                .frame(width: 300)
                                .lineSpacing(23)
                            Spacer()
                                .frame(height : 15)
                            Item(text : "WORKOUT")
                            Item(text : "MEDITATE")
                            Item(text : "DO YOGA")
                            Item(text : "DRINK WATER")
                            Item(text : "STRECH")
                            Item(text : "EAT VEGGIES")
                            Item(text : "EAT BREAKFAST")
                        }
                    }
                    Spacer()
                        .frame(height : 30)
                    HStack(spacing :30){
                        Image("Apple Health Goals")
                        Title2(title: "APPLE HEALTH GOALS")
                    }
                    Spacer()
                        .frame(height: 15)
                    HStack{
                        Spacer()
                            .frame(width : 55)
                        VStack(alignment : .leading){
                            Text("Apple Health goals are linked to the iOS health app and automatically update when you open the app.")
                                .font(.system(size: 10, weight: .regular, design: .default))
                                .kerning(1)
                                .foregroundColor(Color(UIColor(named : "DarkGray")!))
                                .frame(width: 300)
                                .lineSpacing(23)
                            Spacer()
                                .frame(height : 15)
                            Item(text : "WALKING STEPS")
                            Item(text : "WALK OR RUN")
                            Item(text : "ACTIVE CALORIES RUN")
                            Item(text : "EXCERSISE MINUTES")
                            Item(text : "FLIGHTS CLIMBER")
                            Item(text : "STAND HOURS")
                            Item(text : "CLOSE ACTIVITY RINGS")
                        }
                    }
                    Spacer()
                        .frame(height : 30)
                }
                Group {
                    HStack(spacing :30){
                        Image("Feel Better")
                        Title2(title: "FEEL BETTER")
                    }
                    Spacer()
                        .frame(height: 15)
                    HStack{
                        Spacer()
                            .frame(width : 55)
                        VStack(alignment : .leading){
                            Text("QUIT goals start each day as met. YUour goal is missed and your streak is broken when your logged activity exceeds your max goal target. \n\nNote : Tap the taskt the start of each period to log your goal as 'met'.")
                                .font(.system(size: 10, weight: .regular, design: .default))
                                .kerning(1)
                                .foregroundColor(Color(UIColor(named : "DarkGray")!))
                                .frame(width: 290)
                                .lineSpacing(23)
                            Spacer()
                                .frame(height : 15)
                            Item(text : "SKIP DESSERT")
                            Item(text : "SKIP LATTE")
                            Item(text : "SKIP DRINK")
                            Item(text : "SKIP SWEETS")
                            Item(text : "SKIP SOCIAL MEDIA")
                            Item(text : "NO PHONE BEFORE BED")
                            Item(text : "NO PHONE AT DINNER")
                            Group {
                                Item(text : "SKIP EMAIL CHECK")
                                Item(text : "SKIP TV TONIGHT")
                                Item(text : "SKIP FAST FOOD")
                            }
                            
                        }
                    }
                    Spacer()
                        .frame(height : 30)
                    HStack(spacing :30){
                        Image("Be More Productive")
                        Title2(title: "BE MORE PRODUCTIVE")
                    }
                    Spacer()
                        .frame(height : 15)
                    HStack{
                        Spacer()
                            .frame(width : 55)
                        VStack(alignment : .leading){
                            Item(text : "IN BED BY MIDNIGHT")
                            Item(text : "WAKE UP EARLY")
                            Item(text : "PRIORITIZE TODAY")
                        }
                    }
                    Spacer()
                        .frame(height : 30)
                }
                Group {
                    
                    HStack(spacing :30){
                        Image("Save Money")
                        Title2(title: "SAVE MONEY")
                    }
                    Spacer()
                        .frame(height : 15)
                    HStack{
                        Spacer()
                            .frame(width : 55)
                        VStack(alignment : .leading){
                            Item(text : "EAT AT HOME")
                            Item(text : "NO IMPULSIVE BUYS")
                            Item(text : "PUT MONEY IN SAVINGS")
                            Item(text : "BRING LUNCH")
                        }
                    }
                    Spacer()
                        .frame(height : 30)
                    HStack(spacing :30){
                        Image("Grow Personally")
                        Title2(title: "GROW PERSONALLY")
                    }
                    Spacer()
                        .frame(height : 15)
                    HStack{
                        Spacer()
                            .frame(width : 55)
                        VStack(alignment : .leading){
                            Item(text : "MET ONE NEW PERSON")
                            Item(text : "WRITE IN A JOURNAL")
                            Item(text : "TRY ONE NEW THING")
                            Item(text : "READ 1 BOOK A MONTH")
                        }
                    }
                    Spacer()
                        .frame(height : 30)
                }
            }
            .frame(maxWidth : .infinity)
        }
    }
}

struct Ideas_Previews : PreviewProvider {
    static var previews : some View {
        Ideas()
    }
}

struct BigTitle : View {
    var title : String
    var body : some View {
        Text("\(title)")
            .font(.system(size: 25, weight: .regular, design: .default))
            .foregroundColor(.black)
            .kerning(2)
    }
    
}

struct Title2 : View {
    var title : String
    var body : some View {
        Text("\(title)")
            .font(.system(size: 15, weight: .regular, design: .default))
            .foregroundColor(Color(UIColor(named : "DarkGray")!))
    }
}

struct Item : View {
    var text : String
    var body : some View {
        Button(action : {
            //Some actions
        }){
            HStack(spacing : 9){
                Image("Small Plus")
                Text("\(text)")
                    .font(.system(size: 10, weight: .regular, design: .default))
                    .foregroundColor(Color(UIColor(named : "DarkGray")!))
            }
        }
    }
}
