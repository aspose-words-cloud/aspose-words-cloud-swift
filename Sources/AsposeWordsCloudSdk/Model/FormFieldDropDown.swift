/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="FormFieldDropDown.swift">
 *   Copyright (c) 2019 Aspose.Words for Cloud
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

// FormField dropdownlist element.
public class FormFieldDropDown : FormField {
    
    // Field of dropDownItems. Gets or sets provides access to the items of a dropdown form field.      
    private var dropDownItems : [String]?;
    
    // Field of dropDownSelectedIndex. Gets or sets the index specifying the currently selected item in a dropdown form field.      
    private var dropDownSelectedIndex : Int?;
        
    private enum CodingKeys: String, CodingKey {
        case dropDownItems;
        case dropDownSelectedIndex;
        case invalidCodingKey;
    }
        
    public override init() {
        super.init();
    }
    
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.dropDownItems = try container.decodeIfPresent([String].self, forKey: .dropDownItems);
        self.dropDownSelectedIndex = try container.decodeIfPresent(Int.self, forKey: .dropDownSelectedIndex);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.dropDownItems != nil) {
            try container.encode(self.dropDownItems, forKey: .dropDownItems);
        }
        if (self.dropDownSelectedIndex != nil) {
            try container.encode(self.dropDownSelectedIndex, forKey: .dropDownSelectedIndex);
        }
    }
    
    // Sets dropDownItems. Gets or sets provides access to the items of a dropdown form field.  
    public func setDropDownItems(dropDownItems : [String]?) {
        self.dropDownItems = dropDownItems;
    }
    
    // Gets dropDownItems. Gets or sets provides access to the items of a dropdown form field.  
    public func getDropDownItems() -> [String]? {
        return self.dropDownItems;
    }
    
    // Sets dropDownSelectedIndex. Gets or sets the index specifying the currently selected item in a dropdown form field.  
    public func setDropDownSelectedIndex(dropDownSelectedIndex : Int?) {
        self.dropDownSelectedIndex = dropDownSelectedIndex;
    }
    
    // Gets dropDownSelectedIndex. Gets or sets the index specifying the currently selected item in a dropdown form field.  
    public func getDropDownSelectedIndex() -> Int? {
        return self.dropDownSelectedIndex;
    }
}
