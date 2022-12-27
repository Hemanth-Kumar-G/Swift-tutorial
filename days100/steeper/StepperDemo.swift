//
//  StepperDemo.swift
//  days100
//
//  Created by HEMANTH on 27/12/22.
//

import SwiftUI

struct StepperDemo: View {
    @State private var amountSleep=0
    
    var body: some View {
        Stepper("this is \(amountSleep)", value: $amountSleep ,in: 0...4,step: 2)
    }
}

struct StepperDemo_Previews: PreviewProvider {
    static var previews: some View {
        StepperDemo()
    }
}
