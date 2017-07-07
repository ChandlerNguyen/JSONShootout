//
//  Program+Marshal.swift
//  JSONShootout
//
//  Created by Bart Whiteley on 7/7/17.
//  Copyright © 2017 SwiftBit. All rights reserved.
//

import Marshal

extension Program: Unmarshaling {
    public init(object json: MarshaledObject) throws {
        title = try json.value(for:"Title")
        chanId = try json.value(for:"Channel.ChanId")
//        startTime = try json.value(for:"StartTime")
//        endTime = try json.value(for:"EndTime")
        description = try json.value(for:"Description")
        subtitle = try json.value(for:"SubTitle")
        recording = try json.value(for:"Recording")
        season = try json.value(for:"Season") //  as String?).flatMap({Int($0)})
        episode = try json.value(for:"Episode") // as String?).flatMap({Int($0)})
//        season = (try json.value(for:"Season") as String?).flatMap({Int($0)})
//        episode = (try json.value(for:"Episode") as String?).flatMap({Int($0)})
    }
}

