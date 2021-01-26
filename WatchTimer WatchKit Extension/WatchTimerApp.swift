//
//  WatchTimerApp.swift
//  WatchTimer WatchKit Extension
//
//  Created by Nathan Kennedy on 2021-01-25.
//

import SwiftUI

@main
struct WatchTimerApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
