//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by FUKA on 30.3.2022.
//

import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]
    
    
    /**The List initializer in this step accepts a ViewBuilder as its only parameter. So, you can add rows with the same syntax you’ve been using with other container views such as HStack and VStack.
     Tip
     You can also initialize lists from collections of data, specify a different selection type, and more. To learn about the List view, read the*/
    
    
    var body: some View {
        List {
            ForEach(scrums) { scrum in
                CardView(scrum: scrum)
                    .listRowBackground(scrum.theme.mainColor)
            }
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: DailyScrum.sampleData) // pass an array of scrums to the ScrumsView initializer
    }
}
