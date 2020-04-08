/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="CompareOptions.swift">
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

// Container class for compare documents options.
public class CompareOptions : Codable, WordsApiModel {
    // Gets or sets specifies which document shall be used as a target during comparison.             
    public enum Target : String, Codable
    { 
        // Enum value "current"
        case current = "Current"

        // Enum value "new"
        case new = "New"
    }
    
    // Field of ignoreCaseChanges. Gets or sets a value indicating whether true indicates that documents comparison is case insensitive. By default comparison is case sensitive.                   
    private var ignoreCaseChanges : Bool?;
    
    // Field of ignoreTables. Gets or sets a value indicating whether specifies whether to compare the differences in data contained in tables. By default tables are not ignored.                   
    private var ignoreTables : Bool?;
    
    // Field of ignoreFields. Gets or sets a value indicating whether specifies whether to compare differences in fields. By default fields are not ignored.                   
    private var ignoreFields : Bool?;
    
    // Field of ignoreFootnotes. Gets or sets a value indicating whether specifies whether to compare differences in footnotes and endnotes. By default footnotes are not ignored.                   
    private var ignoreFootnotes : Bool?;
    
    // Field of ignoreComments. Gets or sets a value indicating whether specifies whether to compare differences in comments. By default comments are not ignored.                   
    private var ignoreComments : Bool?;
    
    // Field of ignoreTextboxes. Gets or sets a value indicating whether specifies whether to compare differences in the data contained within text boxes. By default textboxes are not ignored.                   
    private var ignoreTextboxes : Bool?;
    
    // Field of ignoreFormatting. Gets or sets a value indicating whether true indicates that formatting is ignored. By default document formatting is not ignored.                   
    private var ignoreFormatting : Bool?;
    
    // Field of ignoreHeadersAndFooters. Gets or sets a value indicating whether true indicates that headers and footers content is ignored. By default headers and footers are not ignored.                   
    private var ignoreHeadersAndFooters : Bool?;
    
    // Field of target. Gets or sets specifies which document shall be used as a target during comparison.                   
    private var target : Target?;
        
    private enum CodingKeys: String, CodingKey {
        case ignoreCaseChanges;
        case ignoreTables;
        case ignoreFields;
        case ignoreFootnotes;
        case ignoreComments;
        case ignoreTextboxes;
        case ignoreFormatting;
        case ignoreHeadersAndFooters;
        case target;
        case invalidCodingKey;
    }
        
    public init() {
        
    }
    
    public required init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.ignoreCaseChanges = try container.decodeIfPresent(Bool.self, forKey: .ignoreCaseChanges);
        self.ignoreTables = try container.decodeIfPresent(Bool.self, forKey: .ignoreTables);
        self.ignoreFields = try container.decodeIfPresent(Bool.self, forKey: .ignoreFields);
        self.ignoreFootnotes = try container.decodeIfPresent(Bool.self, forKey: .ignoreFootnotes);
        self.ignoreComments = try container.decodeIfPresent(Bool.self, forKey: .ignoreComments);
        self.ignoreTextboxes = try container.decodeIfPresent(Bool.self, forKey: .ignoreTextboxes);
        self.ignoreFormatting = try container.decodeIfPresent(Bool.self, forKey: .ignoreFormatting);
        self.ignoreHeadersAndFooters = try container.decodeIfPresent(Bool.self, forKey: .ignoreHeadersAndFooters);
        self.target = try container.decodeIfPresent(Target.self, forKey: .target);
    }

    public func encode(to encoder: Encoder) throws {
        
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.ignoreCaseChanges != nil) {
            try container.encode(self.ignoreCaseChanges, forKey: .ignoreCaseChanges);
        }
        if (self.ignoreTables != nil) {
            try container.encode(self.ignoreTables, forKey: .ignoreTables);
        }
        if (self.ignoreFields != nil) {
            try container.encode(self.ignoreFields, forKey: .ignoreFields);
        }
        if (self.ignoreFootnotes != nil) {
            try container.encode(self.ignoreFootnotes, forKey: .ignoreFootnotes);
        }
        if (self.ignoreComments != nil) {
            try container.encode(self.ignoreComments, forKey: .ignoreComments);
        }
        if (self.ignoreTextboxes != nil) {
            try container.encode(self.ignoreTextboxes, forKey: .ignoreTextboxes);
        }
        if (self.ignoreFormatting != nil) {
            try container.encode(self.ignoreFormatting, forKey: .ignoreFormatting);
        }
        if (self.ignoreHeadersAndFooters != nil) {
            try container.encode(self.ignoreHeadersAndFooters, forKey: .ignoreHeadersAndFooters);
        }
        if (self.target != nil) {
            try container.encode(self.target, forKey: .target);
        }
    }
    
    // Sets ignoreCaseChanges. Gets or sets a value indicating whether true indicates that documents comparison is case insensitive. By default comparison is case sensitive.               
    public func setIgnoreCaseChanges(ignoreCaseChanges : Bool?) {
        self.ignoreCaseChanges = ignoreCaseChanges;
    }
    
    // Gets ignoreCaseChanges. Gets or sets a value indicating whether true indicates that documents comparison is case insensitive. By default comparison is case sensitive.               
    public func getIgnoreCaseChanges() -> Bool? {
        return self.ignoreCaseChanges;
    }
    
    // Sets ignoreTables. Gets or sets a value indicating whether specifies whether to compare the differences in data contained in tables. By default tables are not ignored.               
    public func setIgnoreTables(ignoreTables : Bool?) {
        self.ignoreTables = ignoreTables;
    }
    
    // Gets ignoreTables. Gets or sets a value indicating whether specifies whether to compare the differences in data contained in tables. By default tables are not ignored.               
    public func getIgnoreTables() -> Bool? {
        return self.ignoreTables;
    }
    
    // Sets ignoreFields. Gets or sets a value indicating whether specifies whether to compare differences in fields. By default fields are not ignored.               
    public func setIgnoreFields(ignoreFields : Bool?) {
        self.ignoreFields = ignoreFields;
    }
    
    // Gets ignoreFields. Gets or sets a value indicating whether specifies whether to compare differences in fields. By default fields are not ignored.               
    public func getIgnoreFields() -> Bool? {
        return self.ignoreFields;
    }
    
    // Sets ignoreFootnotes. Gets or sets a value indicating whether specifies whether to compare differences in footnotes and endnotes. By default footnotes are not ignored.               
    public func setIgnoreFootnotes(ignoreFootnotes : Bool?) {
        self.ignoreFootnotes = ignoreFootnotes;
    }
    
    // Gets ignoreFootnotes. Gets or sets a value indicating whether specifies whether to compare differences in footnotes and endnotes. By default footnotes are not ignored.               
    public func getIgnoreFootnotes() -> Bool? {
        return self.ignoreFootnotes;
    }
    
    // Sets ignoreComments. Gets or sets a value indicating whether specifies whether to compare differences in comments. By default comments are not ignored.               
    public func setIgnoreComments(ignoreComments : Bool?) {
        self.ignoreComments = ignoreComments;
    }
    
    // Gets ignoreComments. Gets or sets a value indicating whether specifies whether to compare differences in comments. By default comments are not ignored.               
    public func getIgnoreComments() -> Bool? {
        return self.ignoreComments;
    }
    
    // Sets ignoreTextboxes. Gets or sets a value indicating whether specifies whether to compare differences in the data contained within text boxes. By default textboxes are not ignored.               
    public func setIgnoreTextboxes(ignoreTextboxes : Bool?) {
        self.ignoreTextboxes = ignoreTextboxes;
    }
    
    // Gets ignoreTextboxes. Gets or sets a value indicating whether specifies whether to compare differences in the data contained within text boxes. By default textboxes are not ignored.               
    public func getIgnoreTextboxes() -> Bool? {
        return self.ignoreTextboxes;
    }
    
    // Sets ignoreFormatting. Gets or sets a value indicating whether true indicates that formatting is ignored. By default document formatting is not ignored.               
    public func setIgnoreFormatting(ignoreFormatting : Bool?) {
        self.ignoreFormatting = ignoreFormatting;
    }
    
    // Gets ignoreFormatting. Gets or sets a value indicating whether true indicates that formatting is ignored. By default document formatting is not ignored.               
    public func getIgnoreFormatting() -> Bool? {
        return self.ignoreFormatting;
    }
    
    // Sets ignoreHeadersAndFooters. Gets or sets a value indicating whether true indicates that headers and footers content is ignored. By default headers and footers are not ignored.               
    public func setIgnoreHeadersAndFooters(ignoreHeadersAndFooters : Bool?) {
        self.ignoreHeadersAndFooters = ignoreHeadersAndFooters;
    }
    
    // Gets ignoreHeadersAndFooters. Gets or sets a value indicating whether true indicates that headers and footers content is ignored. By default headers and footers are not ignored.               
    public func getIgnoreHeadersAndFooters() -> Bool? {
        return self.ignoreHeadersAndFooters;
    }
    
    // Sets target. Gets or sets specifies which document shall be used as a target during comparison.               
    public func setTarget(target : Target?) {
        self.target = target;
    }
    
    // Gets target. Gets or sets specifies which document shall be used as a target during comparison.               
    public func getTarget() -> Target? {
        return self.target;
    }
}
