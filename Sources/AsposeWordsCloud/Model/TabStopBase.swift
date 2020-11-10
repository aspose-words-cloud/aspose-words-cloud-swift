/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="TabStopBase.swift">
 *   Copyright (c) 2020 Aspose.Words for Cloud
 * </copyright>
 * <summary>
 *   Permission is hereby granted, free of charge, to any person obtaining a copy
 *  of this software and associated documentation files (the "Software"), to deal
 *  in the Software without restriction, including without limitation the rights
 *  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 *  copies of the Software, and to permit persons to whom the Software is
 *  furnished to do so, subject to the following conditions:
 * 
 *  The above copyright notice and this permission notice shall be included in all
 *  copies or substantial portions of the Software.
 * 
 *  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 *  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 *  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 *  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 *  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 *  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 *  SOFTWARE.
 * </summary>
 * --------------------------------------------------------------------------------
 */

import Foundation

// Base class for paragraph format tab stop DTO.
public class TabStopBase : Codable, WordsApiModel {
    // Gets or sets the alignment of text at this tab stop.
    public enum Alignment : String, Codable
    {
        // Enum value "_left"
        case _left = "Left"

        // Enum value "center"
        case center = "Center"

        // Enum value "_right"
        case _right = "Right"

        // Enum value "decimal"
        case decimal = "Decimal"

        // Enum value "bar"
        case bar = "Bar"

        // Enum value "list"
        case list = "List"

        // Enum value "clear"
        case clear = "Clear"
    }

    // Gets or sets the type of the leader line displayed under the tab character.
    public enum Leader : String, Codable
    {
        // Enum value "_none"
        case _none = "None"

        // Enum value "dots"
        case dots = "Dots"

        // Enum value "dashes"
        case dashes = "Dashes"

        // Enum value "line"
        case line = "Line"

        // Enum value "heavy"
        case heavy = "Heavy"

        // Enum value "middleDot"
        case middleDot = "MiddleDot"
    }

    // Field of alignment. Base class for paragraph format tab stop DTO.
    private var alignment : Alignment?;

    // Field of leader. Base class for paragraph format tab stop DTO.
    private var leader : Leader?;

    // Field of position. Base class for paragraph format tab stop DTO.
    private var position : Double?;

    private enum CodingKeys: String, CodingKey {
        case alignment = "Alignment";
        case leader = "Leader";
        case position = "Position";
        case invalidCodingKey;
    }

    public init() {
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.alignment = try container.decodeIfPresent(Alignment.self, forKey: .alignment);
        self.leader = try container.decodeIfPresent(Leader.self, forKey: .leader);
        self.position = try container.decodeIfPresent(Double.self, forKey: .position);
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.alignment != nil) {
            try container.encode(self.alignment, forKey: .alignment);
        }
        if (self.leader != nil) {
            try container.encode(self.leader, forKey: .leader);
        }
        if (self.position != nil) {
            try container.encode(self.position, forKey: .position);
        }
    }

    // Sets alignment. Gets or sets the alignment of text at this tab stop.
    public func setAlignment(alignment : Alignment?) {
        self.alignment = alignment;
    }

    // Gets alignment. Gets or sets the alignment of text at this tab stop.
    public func getAlignment() -> Alignment? {
        return self.alignment;
    }

    // Sets leader. Gets or sets the type of the leader line displayed under the tab character.
    public func setLeader(leader : Leader?) {
        self.leader = leader;
    }

    // Gets leader. Gets or sets the type of the leader line displayed under the tab character.
    public func getLeader() -> Leader? {
        return self.leader;
    }

    // Sets position. Gets or sets the position of the tab stop in points.
    public func setPosition(position : Double?) {
        self.position = position;
    }

    // Gets position. Gets or sets the position of the tab stop in points.
    public func getPosition() -> Double? {
        return self.position;
    }
}
