/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="FormField.swift">
 *   Copyright (c) 2022 Aspose.Words for Cloud
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

// FromField.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class FormField : NodeLink {
    // Field of calculateOnExit. FromField.
    public var calculateOnExit : Bool?;

    // Field of enabled. FromField.
    public var enabled : Bool?;

    // Field of entryMacro. FromField.
    public var entryMacro : String?;

    // Field of exitMacro. FromField.
    public var exitMacro : String?;

    // Field of helpText. FromField.
    public var helpText : String?;

    // Field of name. FromField.
    public var name : String?;

    // Field of ownHelp. FromField.
    public var ownHelp : Bool?;

    // Field of ownStatus. FromField.
    public var ownStatus : Bool?;

    // Field of statusText. FromField.
    public var statusText : String?;

    private enum CodingKeys: String, CodingKey {
        case calculateOnExit = "CalculateOnExit";
        case enabled = "Enabled";
        case entryMacro = "EntryMacro";
        case exitMacro = "ExitMacro";
        case helpText = "HelpText";
        case name = "Name";
        case ownHelp = "OwnHelp";
        case ownStatus = "OwnStatus";
        case statusText = "StatusText";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.calculateOnExit = try container.decodeIfPresent(Bool.self, forKey: .calculateOnExit);
        self.enabled = try container.decodeIfPresent(Bool.self, forKey: .enabled);
        self.entryMacro = try container.decodeIfPresent(String.self, forKey: .entryMacro);
        self.exitMacro = try container.decodeIfPresent(String.self, forKey: .exitMacro);
        self.helpText = try container.decodeIfPresent(String.self, forKey: .helpText);
        self.name = try container.decodeIfPresent(String.self, forKey: .name);
        self.ownHelp = try container.decodeIfPresent(Bool.self, forKey: .ownHelp);
        self.ownStatus = try container.decodeIfPresent(Bool.self, forKey: .ownStatus);
        self.statusText = try container.decodeIfPresent(String.self, forKey: .statusText);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.calculateOnExit != nil) {
            try container.encode(self.calculateOnExit, forKey: .calculateOnExit);
        }
        if (self.enabled != nil) {
            try container.encode(self.enabled, forKey: .enabled);
        }
        if (self.entryMacro != nil) {
            try container.encode(self.entryMacro, forKey: .entryMacro);
        }
        if (self.exitMacro != nil) {
            try container.encode(self.exitMacro, forKey: .exitMacro);
        }
        if (self.helpText != nil) {
            try container.encode(self.helpText, forKey: .helpText);
        }
        if (self.name != nil) {
            try container.encode(self.name, forKey: .name);
        }
        if (self.ownHelp != nil) {
            try container.encode(self.ownHelp, forKey: .ownHelp);
        }
        if (self.ownStatus != nil) {
            try container.encode(self.ownStatus, forKey: .ownStatus);
        }
        if (self.statusText != nil) {
            try container.encode(self.statusText, forKey: .statusText);
        }
    }

    // Sets calculateOnExit. Gets or sets a value indicating whether references to the specified form field are automatically updated whenever the field is exited.
    public func setCalculateOnExit(calculateOnExit : Bool?) -> FormField {
        self.calculateOnExit = calculateOnExit;
        return self;
    }

    // Gets calculateOnExit. Gets or sets a value indicating whether references to the specified form field are automatically updated whenever the field is exited.
    public func getCalculateOnExit() -> Bool? {
        return self.calculateOnExit;
    }

    // Sets enabled. Gets or sets a value indicating whether a form field is enabled.
    public func setEnabled(enabled : Bool?) -> FormField {
        self.enabled = enabled;
        return self;
    }

    // Gets enabled. Gets or sets a value indicating whether a form field is enabled.
    public func getEnabled() -> Bool? {
        return self.enabled;
    }

    // Sets entryMacro. Gets or sets the entry macro name for the form field.
    public func setEntryMacro(entryMacro : String?) -> FormField {
        self.entryMacro = entryMacro;
        return self;
    }

    // Gets entryMacro. Gets or sets the entry macro name for the form field.
    public func getEntryMacro() -> String? {
        return self.entryMacro;
    }

    // Sets exitMacro. Gets or sets the exit macro name for the form field.
    public func setExitMacro(exitMacro : String?) -> FormField {
        self.exitMacro = exitMacro;
        return self;
    }

    // Gets exitMacro. Gets or sets the exit macro name for the form field.
    public func getExitMacro() -> String? {
        return self.exitMacro;
    }

    // Sets helpText. Gets or sets text, displayed in a message box when the form field has the focus and the user presses F1.
    public func setHelpText(helpText : String?) -> FormField {
        self.helpText = helpText;
        return self;
    }

    // Gets helpText. Gets or sets text, displayed in a message box when the form field has the focus and the user presses F1.
    public func getHelpText() -> String? {
        return self.helpText;
    }

    // Sets name. Gets or sets the form field name.
    public func setName(name : String?) -> FormField {
        self.name = name;
        return self;
    }

    // Gets name. Gets or sets the form field name.
    public func getName() -> String? {
        return self.name;
    }

    // Sets ownHelp. Gets or sets a value indicating whether the source of the text that's displayed in a message box when a form field has the focus and the user presses F1.
    public func setOwnHelp(ownHelp : Bool?) -> FormField {
        self.ownHelp = ownHelp;
        return self;
    }

    // Gets ownHelp. Gets or sets a value indicating whether the source of the text that's displayed in a message box when a form field has the focus and the user presses F1.
    public func getOwnHelp() -> Bool? {
        return self.ownHelp;
    }

    // Sets ownStatus. Gets or sets a value indicating whether the source of the text that's displayed in the status bar when a form field has the focus.
    public func setOwnStatus(ownStatus : Bool?) -> FormField {
        self.ownStatus = ownStatus;
        return self;
    }

    // Gets ownStatus. Gets or sets a value indicating whether the source of the text that's displayed in the status bar when a form field has the focus.
    public func getOwnStatus() -> Bool? {
        return self.ownStatus;
    }

    // Sets statusText. Gets or sets text, displayed in the status bar when a form field has the focus.
    public func setStatusText(statusText : String?) -> FormField {
        self.statusText = statusText;
        return self;
    }

    // Gets statusText. Gets or sets text, displayed in the status bar when a form field has the focus.
    public func getStatusText() -> String? {
        return self.statusText;
    }
}
