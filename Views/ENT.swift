//
//  ENT.swift
//  azertyuiop
//
//  Created by Toinou on 30/04/2022.
//

import SwiftUI
import WebKit

struct ENT: View {
    @Environment(\.presentationMode) var presentationMode
    private let browser = WebBrowserView()
    
    var body: some View {
        HStack {
                    browser
                        .onAppear() {
                            self.browser.load(url: URL(string: "https://fermat.mon-ent-occitanie.fr/sg.do?PROC=TRAVAIL_A_FAIRE&ACTION=AFFICHER_ELEVES_TAF&filtreAVenir=true")!)
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

struct ENT_Previews: PreviewProvider {
    static var previews: some View {
        ENT()
    }
}

