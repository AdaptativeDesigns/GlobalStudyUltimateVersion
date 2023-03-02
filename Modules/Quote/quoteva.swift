//
//  quotev.swift
//  GlobalStudy
//
//  Created by Toinou on 01/05/2022.
//

import SwiftUI

struct quoteva: View {
    
    @State private var quote : Quote?
       
       var body: some View {
           VStack {
               if let quote = quote {
                   VStack {
                       HStack{
                           Text(quote.author)
                     .font(.callout)
                     .foregroundColor(.primary)
                     .padding(.trailing)
                       }
                    }
                }
            }.onAppear {
                let quotes = Bundle.main.decode([Quote].self, from: "quotes.json")
               quote = quotes.randomElement()
           }
       }
   }

    
struct quoteva_Previews: PreviewProvider {
    static var previews: some View {
        quotev()
    }
}
