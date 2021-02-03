//
//  Test.swift
//  Habitapp
//
//  Created by Brandon Suarez on 1/23/21.
//

 import SwiftUI

struct test : View {
    @State var state = false
    @State var picker = 1
    var body : some View {
        ZStack{
            VStack{
                Button(action : {
                    //Somea action
                    self.state.toggle()
                }){
                    Text("Button")
                        .foregroundColor(.white)
                        .frame(width: 100, height: 30, alignment: .center)
                        .background(Color.gray)
                        .cornerRadius(10)
                        
                }
            }
            if $state.wrappedValue {
                ZStack(alignment : .bottom) {
                    Color
                        .black
                        .opacity(0.8)
                    LazyVStack{
                        Spacer()
                            .frame(height : 30)
                        HStack{
                          Text("WEEK STARTS:")
                            .font(.system(size: 15, weight: .regular, design: .default))
                            .foregroundColor(Color(UIColor(named : "BBlue")!))
                            Spacer()
                                .frame(width : 133)
                            Button(action : {
                                //some actions
                                
                            }){
                                Text("SAVE")
                                    .font(.system(size: 10, weight: .regular, design: .default))
                                    .foregroundColor(.white)
                                    .frame(width: 49, height: 18, alignment: .center)
                                    .background(Color(UIColor(named : "BBlue")!))
                                    .cornerRadius(5)
                            }
                            Spacer()
                                .frame(width : 30)
                            Button(action : {
                                //Some actions
                                self.state = false
                            }){
                                Image("Exit X")
                            }
                        }
                        Picker(selection: $picker , label: Text("Picker"), content: {
                            Text("1").tag(1)
                            Text("2").tag(2)
                            Text("3").tag(3)
                            Text("4").tag(4)
                            Text("5").tag(5)
                            Text("6").tag(6)
                            Text("7").tag(7)
                        })
                    }
                    .frame(maxWidth: .infinity,maxHeight: UIScreen.main.bounds.height / 1.7 , alignment: .top)
                    .background(Color.white)
                    
                }
                .edgesIgnoringSafeArea(.all)
            }
        }
    }
}



struct Modal_Previews: PreviewProvider {
    static var previews: some View {
        test()
    }
}




