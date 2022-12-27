//
//  DateTimePickerDemo.swift
//  days100
//
//  Created by HEMANTH on 27/12/22.
//

import SwiftUI

struct DateTimePickerDemo: View {
    
    @State var date = Date.now
    var body: some View {
        DatePicker("Enter the date", selection: $date)
    }
}

struct DateTimePickerDemo_Previews: PreviewProvider {
    static var previews: some View {
        DateTimePickerDemo()
    }
}
