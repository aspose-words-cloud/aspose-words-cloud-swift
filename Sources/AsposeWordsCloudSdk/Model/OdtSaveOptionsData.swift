/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="OdtSaveOptionsData.swift">
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
public class OdtSaveOptionsData : SaveOptionsData {
    // Gets or sets allows to specify units of measure to apply to document content. The default value is Aspose.Words.Saving.OdtSaveMeasureUnit.Centimeters.  Open Office uses centimeters when specifying lengths, widths and other measurable formatting and content properties in documents whereas MS Office uses inches.
    public enum MeasureUnit : String, Codable
    { 
        // Enum value "centimeters"
        case centimeters = "Centimeters"
        
        // Enum value "inches"
        case inches = "Inches"
        
    }

        
    // Gets or sets specifies whether export should correspond to ODT specification 1.1 strictly.
    private var isStrictSchema11 : Bool?;
    // Gets or sets allows to specify units of measure to apply to document content. The default value is Aspose.Words.Saving.OdtSaveMeasureUnit.Centimeters.  Open Office uses centimeters when specifying lengths, widths and other measurable formatting and content properties in documents whereas MS Office uses inches.
    private var measureUnit : MeasureUnit?;
    // Gets or sets specifies whether or not use pretty formats output.
    private var prettyFormat : Bool?;
        
    private enum CodingKeys: String, CodingKey {
        case isStrictSchema11;
        case measureUnit;
        case prettyFormat;
        case invalidCodingKey;
    }
        
    public override init() {
        super.init();
    }
    
    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.isStrictSchema11 = try container.decodeIfPresent(Bool.self, forKey: .isStrictSchema11);
        self.measureUnit = try container.decodeIfPresent(MeasureUnit.self, forKey: .measureUnit);
        self.prettyFormat = try container.decodeIfPresent(Bool.self, forKey: .prettyFormat);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.isStrictSchema11 != nil) {
            try container.encode(self.isStrictSchema11, forKey: .isStrictSchema11);
        }
        if (self.measureUnit != nil) {
            try container.encode(self.measureUnit, forKey: .measureUnit);
        }
        if (self.prettyFormat != nil) {
            try container.encode(self.prettyFormat, forKey: .prettyFormat);
        }
    }
        
    public func setIsStrictSchema11(isStrictSchema11 : Bool?) {
        self.isStrictSchema11 = isStrictSchema11;
    }
    
    public func getIsStrictSchema11() -> Bool? {
        return self.isStrictSchema11;
    }
    public func setMeasureUnit(measureUnit : MeasureUnit?) {
        self.measureUnit = measureUnit;
    }
    
    public func getMeasureUnit() -> MeasureUnit? {
        return self.measureUnit;
    }
    public func setPrettyFormat(prettyFormat : Bool?) {
        self.prettyFormat = prettyFormat;
    }
    
    public func getPrettyFormat() -> Bool? {
        return self.prettyFormat;
    }
}
