//
//  ConsoleDestinationTests.swift
//  BlackSheepLogging
//
//  Created by Sebastian Kreutzberger on 3/28/17.
//  Copyright © 2017 Sebastian Kreutzberger. All rights reserved.
//
// run tests for this class only:
// swift test -s BlackSheepLoggingTests.ConsoleDestinationTests

import Foundation
import XCTest
@testable import BlackSheepLogging

class ConsoleDestinationTests: XCTestCase {

    override func setUp() {
        super.setUp()
        BlackSheepLogging.removeAllDestinations()
    }

    override func tearDown() {
        super.tearDown()
    }

    func testUseTerminalColors() {
        let log = BlackSheepLogging.self
        let console = ConsoleDestination()
        XCTAssertTrue(log.addDestination(console))

        // default xcode colors
        XCTAssertFalse(console.useTerminalColors)
        XCTAssertEqual(console.levelColor.verbose, "💜 ")
        XCTAssertEqual(console.reset, "")
        XCTAssertEqual(console.escape, "")

        // switch to terminal colors
        console.useTerminalColors = true
        XCTAssertTrue(console.useTerminalColors)
        XCTAssertEqual(console.levelColor.verbose, "251m" )
        XCTAssertEqual(console.reset, "\u{001b}[0m")
        XCTAssertEqual(console.escape, "\u{001b}[38;5;")
    }

    // MARK: Linux allTests

    static let allTests = [
        ("testUseTerminalColors", testUseTerminalColors)
    ]
}
