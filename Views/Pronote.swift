//
//  Pronote.swift
//  azertyuiop
//
//  Created by Toinou on 30/04/2022.
//

import SwiftUI

struct Pronote: View {
    
    private let browser = WebBrowserView()
    
    var body: some View {
        HStack {
                    browser
                        .onAppear() {
                            self.browser.load(url: URL(string: "https://cas.mon-ent-occitanie.fr/login?selection=TOULO-ENT_parent_eleve&service=https%3A%2F%2F0310036W.index-education.net%2Fpronote%2Feleve.html&submit=Confirm")!)
                        }
                }
                .padding()
            }
        }

struct Pronote_Previews: PreviewProvider {
    static var previews: some View {
        Pronote()
    }
}
