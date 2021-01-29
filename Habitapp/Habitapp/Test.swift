//
//  Test.swift
//  Habitapp
//
//  Created by Brandon Suarez on 1/23/21.
//

import SwiftUI

struct Test : View {
    @State var change1 = 1
    
    
    var body : some View {
        ScrollView(.vertical){
            HStack{
                Text("SETTINGS")
                Spacer()
                    .frame(width : 165)
                Button(action : {
                    //action
                    
                }) {
                    Text("DONE1")
                        .font(.system(size: 10, weight: .regular, design: .default))
                        .foregroundColor(.white)
                        .frame(width: 52, height: 18, alignment: .center)
                        .background(Color(UIColor(named : "Blue1")!))
                        .cornerRadius(5)
                }
            }
            
            HStack{
                Button(action : {
                    //Some actions
                    self.change1 = 1
                }){
                    HStack{
                        if change1 == 1 {
                            Text("DONE1")
                                .font(.system(size: 10, weight: .regular, design: .default))
                                .foregroundColor(.black)
                                .frame(width: 52, height: 18, alignment: .center)
                                .background(Color(UIColor(named : "Blue1")!))
                                .cornerRadius(5)
                        }
                        else {
                            Text("DONE2")
                                .font(.system(size: 10, weight: .regular, design: .default))
                                .foregroundColor(.black)
                                .frame(width: 52, height: 18, alignment: .center)
                        }
                        

                    }
                                        
                }
                Button(action : {
                    //Some actions
                    self.change1 = 2
                }){
                    HStack{
                        if change1 == 2 {
                            Text("DONE2")
                                .font(.system(size: 10, weight: .regular, design: .default))
                                .foregroundColor(.black)
                                .frame(width: 52, height: 18, alignment: .center)
                                .background(Color(UIColor(named : "Blue1")!))
                                .cornerRadius(5)
                        }
                        else {
                            Text("DONE2")
                                .font(.system(size: 10, weight: .regular, design: .default))
                                .foregroundColor(.black)
                                .frame(width: 52, height: 18, alignment: .center)
                        }
                        
                            

                    }
                                        
                }
                Button(action : {
                    //Some actions
                    self.change1 = 3
                }){
                    HStack{
                        if change1 == 3 {
                            Text("DONE3")
                                .font(.system(size: 10, weight: .regular, design: .default))
                                .foregroundColor(.black)
                                .frame(width: 52, height: 18, alignment: .center)
                                .background(Color(UIColor(named : "Blue1")!))
                                .cornerRadius(5)
                        }
                        else {
                            Text("DONE3")
                                .font(.system(size: 10, weight: .regular, design: .default))
                                .foregroundColor(.black)
                                .frame(width: 52, height: 18, alignment: .center)
                        }
                        
                            

                    }
                                        
                }
            }
            
        }
        .frame(maxWidth: .infinity)
}
}


struct Test_Previews : PreviewProvider {
    
    static var previews : some View {
        Test()
    }
}




