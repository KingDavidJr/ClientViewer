//
//  Home.swift
//  ClientView
//
//  Created by David Amedeka on 3/24/23.
//

import SwiftUI

struct Home: View {
    var body: some View {
        ZStack {
            Color.theme.bckground
                .ignoresSafeArea()
            VStack (spacing: 25) {
                Text("Welcome User!")
                    .font(.system(size: 30, weight: .medium, design: .rounded))
                Text("Summary Insights")
                    .font(.system(size: 17.5, weight: .light, design: .rounded))
                
                HStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 175, height: 100)
                            .foregroundColor(Color.theme.holderColor)
                        VStack {
                            Text("Scheduled Clients")
                                .foregroundColor(Color.theme.purpleColor)
                            .font(.system(size: 15, weight: .bold, design: .rounded))
                            Text("0")
                                .font(.system(size: 30, weight: .black, design: .rounded))
                                .padding(.top, 5)
                                .padding(.bottom, 2)
                            Rectangle()
                                .frame(width: 150, height: 3)
                        }
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 175, height: 100)
                            .foregroundColor(Color.theme.holderColor)
                        VStack {
                            Text("Apr Revenue")
                                .foregroundColor(Color.theme.purpleColor)
                            .font(.system(size: 15, weight: .bold, design: .rounded))
                            Text("0")
                                .font(.system(size: 30, weight: .black, design: .rounded))
                                .padding(.top, 5)
                                .padding(.bottom, 7)
                            Rectangle()
                                .frame(width: 150, height: 3)
                        }
                    }
                }
                

            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
