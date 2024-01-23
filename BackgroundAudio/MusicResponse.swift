//
//  MusicResponse.swift
//  BackgroundAudio
//
//  Created by sangam pokharel on 15/01/2024.
//

import Foundation

//{
//  "status": 200,
//  "response": "https://hls-server.vercel.app/m3u8/b69f162ec82bb5aa0af24fdbf77f852c646e2449cc5ef9554bf8eae5fdadf1d2a4ea93fa79729f371497772084cd5e9709affc42e1aeecc20d5ad222aa959e2ffa1398416ca6e3a6759275db98b69dad0ae2a4a06be54e4e20c4ddcb9c75d2222f8639419885d157949bdcc03c3f867088f6af9ecbd4b6424c3b9f53206b4a35670ba465ba1d782e9d9437ea561085d576e24980e40ddc5983924a75cbe0d4411a2a4a6c2a7f98a541d5fa817dca89b4a0c2134e54ed5b79e9d4e83ed931f59c.m3u8",
//  "message": "success"
//}


struct MusicResponse:Codable {
    let status:Int
    let response:String
    let message:String
}
