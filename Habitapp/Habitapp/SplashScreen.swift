//
//  Splash Screen.swift
//  Habitapp
//
//  Created by Brandon Suarez on 1/25/21.
//

import SwiftUI

struct SplashScreen : View {
    @State var animate = false
    @State var endSplash = false
    
    var body : some View {
        ZStack{
            Home()
            ZStack{
                Color(.white)
                Image("Logo")
                    .renderingMode(.original)
                    //.scaleEffect(animate ? 3 : 1)
                    //.frame(width : UIScreen.main.bounds.width)
            }
            .ignoresSafeArea(.all , edges: .all)
            .onAppear(perform : animateSplash)
            .opacity(endSplash ? 0  : 1)
        }
    }
    func animateSplash(){
        DispatchQueue
            .main
            .asyncAfter(deadline: .now() + 3.25){
                
                withAnimation(Animation.easeOut(duration: 0.45)){
                    animate.toggle()
                }
                withAnimation(Animation.linear(duration: 0.35)){
                    endSplash.toggle()
                }
            }
    }

}


struct Splash_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
