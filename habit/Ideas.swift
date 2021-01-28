//
//  Ideas.swift
//  habit
//
//  Created by Dennis on 1/27/21.
//

import SwiftUI

struct Ideas: View {
    var body: some View {
        
        ScrollView(.vertical){
            VStack(alignment : .leading , spacing : 30){
                Group{
                    HStack(spacing : 165){
                        Text("IDEAS")
                            .font(.system(size: 40, weight: .regular, design: .default))
                            .kerning(5)
                        Button(action : {
                            //Some actions
                        }) {
                            ZStack{
                                RoundedRectangle(cornerRadius: 5.0).fill(Color.blue)
                                
                                Text("DONE").foregroundColor(.white)
                            }
                            .frame(width: 60, height: 15, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                        }
                        
                    }
                }
                
                Text("GET HEALTHY").font(.system(size: 20,weight : .regular)).kerning(0.3)
                Text("BUILD goals start each day as unmet. Log activity to meet your goal target and extend your streak. Color shows progress to your goal target") .font(.system(size: 14)).kerning(1.5).frame(width: 320, height: 100, alignment: .topLeading).foregroundColor(.gray).lineSpacing(7)
                
                VStack(alignment: .leading){
                    Text("+  WORKOUT")
                    Text("+  MEDITATE")
                    Text("+  DO YOGA")
                    Text("+  DRINK WATER")
                    Text("+  STRECH")
                    Text("+  EAT VEGGIES")
                    Text("+  EAT BREAKFAST")
                    
                }.foregroundColor(.gray)
                
                Text("APPLE HEALTH GOALS").font(.system(size: 20,weight : .regular)).kerning(0.3)
                Text("APPLE health goals are linked to the iOS Health app and automatically updated when you open the app ") .font(.system(size: 14)).kerning(1.5).frame(width: 320, height: 100, alignment: .topLeading).foregroundColor(.gray).lineSpacing(7)
                
                
                VStack(alignment: .leading){
                    Text("+  ALKING STEPS")
                    Text("+  WALK OR RUN")
                    Text("+  ACTIVE CALORIES BURNED")
                    Text("+  EXERCISE MINUTES")
                    Text("+  FLIGHT CLIMBER")
                    Text("+  STAND HOURS")
                    Text("+  CLOSE ACTIVITY RINGS")
                    
                }.foregroundColor(.gray)
            }
            
            
            
            
        }
    }
}


struct Ideas_Previews: PreviewProvider {
    static var previews: some View {
        Ideas()
    }
}
