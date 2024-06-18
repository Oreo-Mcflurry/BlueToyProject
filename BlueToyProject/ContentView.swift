//
//  ContentView.swift
//  BlueToyProject
//
//  Created by A_Mcflurry on 6/18/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var bluetoothManger = BluetoothManager()
    var body: some View {
        VStack {
            Toggle(isOn: $bluetoothManger.isScanning) {
                Text("스위치")
            }
            .padding()
            
            List(bluetoothManger.discoveredPeripherals, id: \.identifier) { item in
                Button {
                    
                } label: {
                    Text(item.name ?? item.identifier.uuidString)
                }
            }
        }
        
    }
}

#Preview {
    ContentView()
}
