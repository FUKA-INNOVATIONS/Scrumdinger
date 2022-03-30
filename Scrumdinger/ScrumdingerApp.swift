//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by FUKA on 29.3.2022.
//

import SwiftUI


/* make ScrumsView the app’s root view. You create a SwiftUI app by declaring a structure that conforms to the App protocol. The app’s body property returns a Scene that contains a view hierarchy representing the primary user interface for the app. */


@main
struct ScrumdingerApp: App {
    var body: some Scene {
        
        /* WindowGroup is one of the primitive scenes that SwiftUI provides. In iOS,
         the views you add to the WindowGroup scene builder are presented in a window that fills the device’s entire screen. */
        
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: DailyScrum.sampleData) // App initial view with sample data
            }
        }
        
        
    }
}
