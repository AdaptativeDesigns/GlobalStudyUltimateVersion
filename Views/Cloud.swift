//
//  Cloud.swift
//  GlobalStudy Multi
//
//  Created by Antoine Richard-capponi on 22/08/2022.
//

import SwiftUI

import SwiftUI
import WebKit

struct Cloud: View {
    @Environment(\.presentationMode) var presentationMode
    private let browser = WebBrowserView()
    
    var body: some View {
        HStack {
                    browser
                        .onAppear() {
                            self.browser.load(url: URL(string: "https://adaptativedesign.vercel.app")!)
                        }
            
        }
        .navigationTitle("ENT")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true) // hides the "back" or previous view title button
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button("Retour") {
                    presentationMode.wrappedValue.dismiss()
                }
            }
        }// this changes in iOS15
        
    }
}

struct Cloud_Previews: PreviewProvider {
    static var previews: some View {
        Cloud()
    }
}

