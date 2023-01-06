//
//  TextEditorDemo.swift
//  days100
//
//  Created by HEMANTH on 06/01/23.
//

import SwiftUI

struct TextEditorDemo: View {
   @State var text = "mbkmmj"
    var body: some View {
        TextEditor(text: $text)
            .background(.red)
            .navigationTitle("Nptes")
            .frame(height: 300)
          
       
    }
}

struct TextEditorDemo_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorDemo()
    }
}
