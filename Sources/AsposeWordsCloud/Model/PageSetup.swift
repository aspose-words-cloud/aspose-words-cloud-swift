/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="PageSetup.swift">
 *   Copyright (c) 2021 Aspose.Words for Cloud
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

// Represents the page setup properties of a section.
@available(macOS 10.12, iOS 10.3, watchOS 3.3, tvOS 12.0, *)
public class PageSetup : LinkElement {
    // Gets or sets the option that controls which pages the page border is printed on.
    public enum BorderAppliesTo : String, Codable
    {
        // Enum value "allPages"
        case allPages = "AllPages"

        // Enum value "firstPage"
        case firstPage = "FirstPage"

        // Enum value "otherPages"
        case otherPages = "OtherPages"
    }

    // Gets or sets the value, that indicates whether the specified page border is measured from the edge of the page or from the text it surrounds.
    public enum BorderDistanceFrom : String, Codable
    {
        // Enum value "text"
        case text = "Text"

        // Enum value "pageEdge"
        case pageEdge = "PageEdge"
    }

    // Gets or sets the way line numbering runs  that is, whether it starts over at the beginning of a new page or section or runs continuously.
    public enum LineNumberRestartMode : String, Codable
    {
        // Enum value "restartPage"
        case restartPage = "RestartPage"

        // Enum value "restartSection"
        case restartSection = "RestartSection"

        // Enum value "continuous"
        case continuous = "Continuous"
    }

    // Gets or sets the orientation of the page.
    public enum Orientation : String, Codable
    {
        // Enum value "portrait"
        case portrait = "Portrait"

        // Enum value "landscape"
        case landscape = "Landscape"
    }

    // Gets or sets the page number format.
    public enum PageNumberStyle : String, Codable
    {
        // Enum value "arabic"
        case arabic = "Arabic"

        // Enum value "uppercaseRoman"
        case uppercaseRoman = "UppercaseRoman"

        // Enum value "lowercaseRoman"
        case lowercaseRoman = "LowercaseRoman"

        // Enum value "uppercaseLetter"
        case uppercaseLetter = "UppercaseLetter"

        // Enum value "lowercaseLetter"
        case lowercaseLetter = "LowercaseLetter"

        // Enum value "ordinal"
        case ordinal = "Ordinal"

        // Enum value "number"
        case number = "Number"

        // Enum value "ordinalText"
        case ordinalText = "OrdinalText"

        // Enum value "hex"
        case hex = "Hex"

        // Enum value "chicagoManual"
        case chicagoManual = "ChicagoManual"

        // Enum value "kanji"
        case kanji = "Kanji"

        // Enum value "kanjiDigit"
        case kanjiDigit = "KanjiDigit"

        // Enum value "aiueoHalfWidth"
        case aiueoHalfWidth = "AiueoHalfWidth"

        // Enum value "irohaHalfWidth"
        case irohaHalfWidth = "IrohaHalfWidth"

        // Enum value "arabicFullWidth"
        case arabicFullWidth = "ArabicFullWidth"

        // Enum value "arabicHalfWidth"
        case arabicHalfWidth = "ArabicHalfWidth"

        // Enum value "kanjiTraditional"
        case kanjiTraditional = "KanjiTraditional"

        // Enum value "kanjiTraditional2"
        case kanjiTraditional2 = "KanjiTraditional2"

        // Enum value "numberInCircle"
        case numberInCircle = "NumberInCircle"

        // Enum value "decimalFullWidth"
        case decimalFullWidth = "DecimalFullWidth"

        // Enum value "aiueo"
        case aiueo = "Aiueo"

        // Enum value "iroha"
        case iroha = "Iroha"

        // Enum value "leadingZero"
        case leadingZero = "LeadingZero"

        // Enum value "bullet"
        case bullet = "Bullet"

        // Enum value "ganada"
        case ganada = "Ganada"

        // Enum value "chosung"
        case chosung = "Chosung"

        // Enum value "gB1"
        case gB1 = "GB1"

        // Enum value "gB2"
        case gB2 = "GB2"

        // Enum value "gB3"
        case gB3 = "GB3"

        // Enum value "gB4"
        case gB4 = "GB4"

        // Enum value "zodiac1"
        case zodiac1 = "Zodiac1"

        // Enum value "zodiac2"
        case zodiac2 = "Zodiac2"

        // Enum value "zodiac3"
        case zodiac3 = "Zodiac3"

        // Enum value "tradChinNum1"
        case tradChinNum1 = "TradChinNum1"

        // Enum value "tradChinNum2"
        case tradChinNum2 = "TradChinNum2"

        // Enum value "tradChinNum3"
        case tradChinNum3 = "TradChinNum3"

        // Enum value "tradChinNum4"
        case tradChinNum4 = "TradChinNum4"

        // Enum value "simpChinNum1"
        case simpChinNum1 = "SimpChinNum1"

        // Enum value "simpChinNum2"
        case simpChinNum2 = "SimpChinNum2"

        // Enum value "simpChinNum3"
        case simpChinNum3 = "SimpChinNum3"

        // Enum value "simpChinNum4"
        case simpChinNum4 = "SimpChinNum4"

        // Enum value "hanjaRead"
        case hanjaRead = "HanjaRead"

        // Enum value "hanjaReadDigit"
        case hanjaReadDigit = "HanjaReadDigit"

        // Enum value "hangul"
        case hangul = "Hangul"

        // Enum value "hanja"
        case hanja = "Hanja"

        // Enum value "hebrew1"
        case hebrew1 = "Hebrew1"

        // Enum value "arabic1"
        case arabic1 = "Arabic1"

        // Enum value "hebrew2"
        case hebrew2 = "Hebrew2"

        // Enum value "arabic2"
        case arabic2 = "Arabic2"

        // Enum value "hindiLetter1"
        case hindiLetter1 = "HindiLetter1"

        // Enum value "hindiLetter2"
        case hindiLetter2 = "HindiLetter2"

        // Enum value "hindiArabic"
        case hindiArabic = "HindiArabic"

        // Enum value "hindiCardinalText"
        case hindiCardinalText = "HindiCardinalText"

        // Enum value "thaiLetter"
        case thaiLetter = "ThaiLetter"

        // Enum value "thaiArabic"
        case thaiArabic = "ThaiArabic"

        // Enum value "thaiCardinalText"
        case thaiCardinalText = "ThaiCardinalText"

        // Enum value "vietCardinalText"
        case vietCardinalText = "VietCardinalText"

        // Enum value "numberInDash"
        case numberInDash = "NumberInDash"

        // Enum value "lowercaseRussian"
        case lowercaseRussian = "LowercaseRussian"

        // Enum value "uppercaseRussian"
        case uppercaseRussian = "UppercaseRussian"

        // Enum value "_none"
        case _none = "None"

        // Enum value "custom"
        case custom = "Custom"
    }

    // Gets or sets the paper size.
    public enum PaperSize : String, Codable
    {
        // Enum value "a3"
        case a3 = "A3"

        // Enum value "a4"
        case a4 = "A4"

        // Enum value "a5"
        case a5 = "A5"

        // Enum value "b4"
        case b4 = "B4"

        // Enum value "b5"
        case b5 = "B5"

        // Enum value "executive"
        case executive = "Executive"

        // Enum value "folio"
        case folio = "Folio"

        // Enum value "ledger"
        case ledger = "Ledger"

        // Enum value "legal"
        case legal = "Legal"

        // Enum value "letter"
        case letter = "Letter"

        // Enum value "envelopeDL"
        case envelopeDL = "EnvelopeDL"

        // Enum value "quarto"
        case quarto = "Quarto"

        // Enum value "statement"
        case statement = "Statement"

        // Enum value "tabloid"
        case tabloid = "Tabloid"

        // Enum value "paper10x14"
        case paper10x14 = "Paper10x14"

        // Enum value "paper11x17"
        case paper11x17 = "Paper11x17"

        // Enum value "custom"
        case custom = "Custom"
    }

    // Gets or sets the type of section break for the specified object.
    public enum SectionStart : String, Codable
    {
        // Enum value "continuous"
        case continuous = "Continuous"

        // Enum value "newColumn"
        case newColumn = "NewColumn"

        // Enum value "newPage"
        case newPage = "NewPage"

        // Enum value "evenPage"
        case evenPage = "EvenPage"

        // Enum value "oddPage"
        case oddPage = "OddPage"
    }

    // Gets or sets the vertical alignment of text on each page in the document.or section.
    public enum VerticalAlignment : String, Codable
    {
        // Enum value "top"
        case top = "Top"

        // Enum value "center"
        case center = "Center"

        // Enum value "justify"
        case justify = "Justify"

        // Enum value "bottom"
        case bottom = "Bottom"
    }

    // Field of bidi. Represents the page setup properties of a section.
    public var bidi : Bool?;

    // Field of borderAlwaysInFront. Represents the page setup properties of a section.
    public var borderAlwaysInFront : Bool?;

    // Field of borderAppliesTo. Represents the page setup properties of a section.
    public var borderAppliesTo : BorderAppliesTo?;

    // Field of borderDistanceFrom. Represents the page setup properties of a section.
    public var borderDistanceFrom : BorderDistanceFrom?;

    // Field of bottomMargin. Represents the page setup properties of a section.
    public var bottomMargin : Double?;

    // Field of differentFirstPageHeaderFooter. Represents the page setup properties of a section.
    public var differentFirstPageHeaderFooter : Bool?;

    // Field of firstPageTray. Represents the page setup properties of a section.
    public var firstPageTray : Int?;

    // Field of footerDistance. Represents the page setup properties of a section.
    public var footerDistance : Double?;

    // Field of gutter. Represents the page setup properties of a section.
    public var gutter : Double?;

    // Field of headerDistance. Represents the page setup properties of a section.
    public var headerDistance : Double?;

    // Field of leftMargin. Represents the page setup properties of a section.
    public var leftMargin : Double?;

    // Field of lineNumberCountBy. Represents the page setup properties of a section.
    public var lineNumberCountBy : Int?;

    // Field of lineNumberDistanceFromText. Represents the page setup properties of a section.
    public var lineNumberDistanceFromText : Double?;

    // Field of lineNumberRestartMode. Represents the page setup properties of a section.
    public var lineNumberRestartMode : LineNumberRestartMode?;

    // Field of lineStartingNumber. Represents the page setup properties of a section.
    public var lineStartingNumber : Int?;

    // Field of orientation. Represents the page setup properties of a section.
    public var orientation : Orientation?;

    // Field of otherPagesTray. Represents the page setup properties of a section.
    public var otherPagesTray : Int?;

    // Field of pageHeight. Represents the page setup properties of a section.
    public var pageHeight : Double?;

    // Field of pageNumberStyle. Represents the page setup properties of a section.
    public var pageNumberStyle : PageNumberStyle?;

    // Field of pageStartingNumber. Represents the page setup properties of a section.
    public var pageStartingNumber : Int?;

    // Field of pageWidth. Represents the page setup properties of a section.
    public var pageWidth : Double?;

    // Field of paperSize. Represents the page setup properties of a section.
    public var paperSize : PaperSize?;

    // Field of restartPageNumbering. Represents the page setup properties of a section.
    public var restartPageNumbering : Bool?;

    // Field of rightMargin. Represents the page setup properties of a section.
    public var rightMargin : Double?;

    // Field of rtlGutter. Represents the page setup properties of a section.
    public var rtlGutter : Bool?;

    // Field of sectionStart. Represents the page setup properties of a section.
    public var sectionStart : SectionStart?;

    // Field of suppressEndnotes. Represents the page setup properties of a section.
    public var suppressEndnotes : Bool?;

    // Field of topMargin. Represents the page setup properties of a section.
    public var topMargin : Double?;

    // Field of verticalAlignment. Represents the page setup properties of a section.
    public var verticalAlignment : VerticalAlignment?;

    private enum CodingKeys: String, CodingKey {
        case bidi = "Bidi";
        case borderAlwaysInFront = "BorderAlwaysInFront";
        case borderAppliesTo = "BorderAppliesTo";
        case borderDistanceFrom = "BorderDistanceFrom";
        case bottomMargin = "BottomMargin";
        case differentFirstPageHeaderFooter = "DifferentFirstPageHeaderFooter";
        case firstPageTray = "FirstPageTray";
        case footerDistance = "FooterDistance";
        case gutter = "Gutter";
        case headerDistance = "HeaderDistance";
        case leftMargin = "LeftMargin";
        case lineNumberCountBy = "LineNumberCountBy";
        case lineNumberDistanceFromText = "LineNumberDistanceFromText";
        case lineNumberRestartMode = "LineNumberRestartMode";
        case lineStartingNumber = "LineStartingNumber";
        case orientation = "Orientation";
        case otherPagesTray = "OtherPagesTray";
        case pageHeight = "PageHeight";
        case pageNumberStyle = "PageNumberStyle";
        case pageStartingNumber = "PageStartingNumber";
        case pageWidth = "PageWidth";
        case paperSize = "PaperSize";
        case restartPageNumbering = "RestartPageNumbering";
        case rightMargin = "RightMargin";
        case rtlGutter = "RtlGutter";
        case sectionStart = "SectionStart";
        case suppressEndnotes = "SuppressEndnotes";
        case topMargin = "TopMargin";
        case verticalAlignment = "VerticalAlignment";
        case invalidCodingKey;
    }

    public override init() {
        super.init();
    }

    public required init(from decoder: Decoder) throws {
        try super.init(from: decoder);
        let container = try decoder.container(keyedBy: CodingKeys.self);
        self.bidi = try container.decodeIfPresent(Bool.self, forKey: .bidi);
        self.borderAlwaysInFront = try container.decodeIfPresent(Bool.self, forKey: .borderAlwaysInFront);
        self.borderAppliesTo = try container.decodeIfPresent(BorderAppliesTo.self, forKey: .borderAppliesTo);
        self.borderDistanceFrom = try container.decodeIfPresent(BorderDistanceFrom.self, forKey: .borderDistanceFrom);
        self.bottomMargin = try container.decodeIfPresent(Double.self, forKey: .bottomMargin);
        self.differentFirstPageHeaderFooter = try container.decodeIfPresent(Bool.self, forKey: .differentFirstPageHeaderFooter);
        self.firstPageTray = try container.decodeIfPresent(Int.self, forKey: .firstPageTray);
        self.footerDistance = try container.decodeIfPresent(Double.self, forKey: .footerDistance);
        self.gutter = try container.decodeIfPresent(Double.self, forKey: .gutter);
        self.headerDistance = try container.decodeIfPresent(Double.self, forKey: .headerDistance);
        self.leftMargin = try container.decodeIfPresent(Double.self, forKey: .leftMargin);
        self.lineNumberCountBy = try container.decodeIfPresent(Int.self, forKey: .lineNumberCountBy);
        self.lineNumberDistanceFromText = try container.decodeIfPresent(Double.self, forKey: .lineNumberDistanceFromText);
        self.lineNumberRestartMode = try container.decodeIfPresent(LineNumberRestartMode.self, forKey: .lineNumberRestartMode);
        self.lineStartingNumber = try container.decodeIfPresent(Int.self, forKey: .lineStartingNumber);
        self.orientation = try container.decodeIfPresent(Orientation.self, forKey: .orientation);
        self.otherPagesTray = try container.decodeIfPresent(Int.self, forKey: .otherPagesTray);
        self.pageHeight = try container.decodeIfPresent(Double.self, forKey: .pageHeight);
        self.pageNumberStyle = try container.decodeIfPresent(PageNumberStyle.self, forKey: .pageNumberStyle);
        self.pageStartingNumber = try container.decodeIfPresent(Int.self, forKey: .pageStartingNumber);
        self.pageWidth = try container.decodeIfPresent(Double.self, forKey: .pageWidth);
        self.paperSize = try container.decodeIfPresent(PaperSize.self, forKey: .paperSize);
        self.restartPageNumbering = try container.decodeIfPresent(Bool.self, forKey: .restartPageNumbering);
        self.rightMargin = try container.decodeIfPresent(Double.self, forKey: .rightMargin);
        self.rtlGutter = try container.decodeIfPresent(Bool.self, forKey: .rtlGutter);
        self.sectionStart = try container.decodeIfPresent(SectionStart.self, forKey: .sectionStart);
        self.suppressEndnotes = try container.decodeIfPresent(Bool.self, forKey: .suppressEndnotes);
        self.topMargin = try container.decodeIfPresent(Double.self, forKey: .topMargin);
        self.verticalAlignment = try container.decodeIfPresent(VerticalAlignment.self, forKey: .verticalAlignment);
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder);
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.bidi != nil) {
            try container.encode(self.bidi, forKey: .bidi);
        }
        if (self.borderAlwaysInFront != nil) {
            try container.encode(self.borderAlwaysInFront, forKey: .borderAlwaysInFront);
        }
        if (self.borderAppliesTo != nil) {
            try container.encode(self.borderAppliesTo, forKey: .borderAppliesTo);
        }
        if (self.borderDistanceFrom != nil) {
            try container.encode(self.borderDistanceFrom, forKey: .borderDistanceFrom);
        }
        if (self.bottomMargin != nil) {
            try container.encode(self.bottomMargin, forKey: .bottomMargin);
        }
        if (self.differentFirstPageHeaderFooter != nil) {
            try container.encode(self.differentFirstPageHeaderFooter, forKey: .differentFirstPageHeaderFooter);
        }
        if (self.firstPageTray != nil) {
            try container.encode(self.firstPageTray, forKey: .firstPageTray);
        }
        if (self.footerDistance != nil) {
            try container.encode(self.footerDistance, forKey: .footerDistance);
        }
        if (self.gutter != nil) {
            try container.encode(self.gutter, forKey: .gutter);
        }
        if (self.headerDistance != nil) {
            try container.encode(self.headerDistance, forKey: .headerDistance);
        }
        if (self.leftMargin != nil) {
            try container.encode(self.leftMargin, forKey: .leftMargin);
        }
        if (self.lineNumberCountBy != nil) {
            try container.encode(self.lineNumberCountBy, forKey: .lineNumberCountBy);
        }
        if (self.lineNumberDistanceFromText != nil) {
            try container.encode(self.lineNumberDistanceFromText, forKey: .lineNumberDistanceFromText);
        }
        if (self.lineNumberRestartMode != nil) {
            try container.encode(self.lineNumberRestartMode, forKey: .lineNumberRestartMode);
        }
        if (self.lineStartingNumber != nil) {
            try container.encode(self.lineStartingNumber, forKey: .lineStartingNumber);
        }
        if (self.orientation != nil) {
            try container.encode(self.orientation, forKey: .orientation);
        }
        if (self.otherPagesTray != nil) {
            try container.encode(self.otherPagesTray, forKey: .otherPagesTray);
        }
        if (self.pageHeight != nil) {
            try container.encode(self.pageHeight, forKey: .pageHeight);
        }
        if (self.pageNumberStyle != nil) {
            try container.encode(self.pageNumberStyle, forKey: .pageNumberStyle);
        }
        if (self.pageStartingNumber != nil) {
            try container.encode(self.pageStartingNumber, forKey: .pageStartingNumber);
        }
        if (self.pageWidth != nil) {
            try container.encode(self.pageWidth, forKey: .pageWidth);
        }
        if (self.paperSize != nil) {
            try container.encode(self.paperSize, forKey: .paperSize);
        }
        if (self.restartPageNumbering != nil) {
            try container.encode(self.restartPageNumbering, forKey: .restartPageNumbering);
        }
        if (self.rightMargin != nil) {
            try container.encode(self.rightMargin, forKey: .rightMargin);
        }
        if (self.rtlGutter != nil) {
            try container.encode(self.rtlGutter, forKey: .rtlGutter);
        }
        if (self.sectionStart != nil) {
            try container.encode(self.sectionStart, forKey: .sectionStart);
        }
        if (self.suppressEndnotes != nil) {
            try container.encode(self.suppressEndnotes, forKey: .suppressEndnotes);
        }
        if (self.topMargin != nil) {
            try container.encode(self.topMargin, forKey: .topMargin);
        }
        if (self.verticalAlignment != nil) {
            try container.encode(self.verticalAlignment, forKey: .verticalAlignment);
        }
    }

    // Sets bidi. Gets or sets a value indicating whether this section contains bidirectional (complex scripts) text.
    public func setBidi(bidi : Bool?) -> PageSetup {
        self.bidi = bidi;
        return self;
    }

    // Gets bidi. Gets or sets a value indicating whether this section contains bidirectional (complex scripts) text.
    public func getBidi() -> Bool? {
        return self.bidi;
    }

    // Sets borderAlwaysInFront. Gets or sets a value indicating whether the page border is positioned relative to intersecting texts and objects.
    public func setBorderAlwaysInFront(borderAlwaysInFront : Bool?) -> PageSetup {
        self.borderAlwaysInFront = borderAlwaysInFront;
        return self;
    }

    // Gets borderAlwaysInFront. Gets or sets a value indicating whether the page border is positioned relative to intersecting texts and objects.
    public func getBorderAlwaysInFront() -> Bool? {
        return self.borderAlwaysInFront;
    }

    // Sets borderAppliesTo. Gets or sets the option that controls which pages the page border is printed on.
    public func setBorderAppliesTo(borderAppliesTo : BorderAppliesTo?) -> PageSetup {
        self.borderAppliesTo = borderAppliesTo;
        return self;
    }

    // Gets borderAppliesTo. Gets or sets the option that controls which pages the page border is printed on.
    public func getBorderAppliesTo() -> BorderAppliesTo? {
        return self.borderAppliesTo;
    }

    // Sets borderDistanceFrom. Gets or sets the value, that indicates whether the specified page border is measured from the edge of the page or from the text it surrounds.
    public func setBorderDistanceFrom(borderDistanceFrom : BorderDistanceFrom?) -> PageSetup {
        self.borderDistanceFrom = borderDistanceFrom;
        return self;
    }

    // Gets borderDistanceFrom. Gets or sets the value, that indicates whether the specified page border is measured from the edge of the page or from the text it surrounds.
    public func getBorderDistanceFrom() -> BorderDistanceFrom? {
        return self.borderDistanceFrom;
    }

    // Sets bottomMargin. Gets or sets the distance (in points) between the bottom edge of the page and the bottom boundary of the body text.
    public func setBottomMargin(bottomMargin : Double?) -> PageSetup {
        self.bottomMargin = bottomMargin;
        return self;
    }

    // Gets bottomMargin. Gets or sets the distance (in points) between the bottom edge of the page and the bottom boundary of the body text.
    public func getBottomMargin() -> Double? {
        return self.bottomMargin;
    }

    // Sets differentFirstPageHeaderFooter. Gets or sets a value indicating whether a different header or footer is used on the first page.
    public func setDifferentFirstPageHeaderFooter(differentFirstPageHeaderFooter : Bool?) -> PageSetup {
        self.differentFirstPageHeaderFooter = differentFirstPageHeaderFooter;
        return self;
    }

    // Gets differentFirstPageHeaderFooter. Gets or sets a value indicating whether a different header or footer is used on the first page.
    public func getDifferentFirstPageHeaderFooter() -> Bool? {
        return self.differentFirstPageHeaderFooter;
    }

    // Sets firstPageTray. Gets or sets the paper tray (bin) to use for the first page of a section. The value is implementation (printer) specific.
    public func setFirstPageTray(firstPageTray : Int?) -> PageSetup {
        self.firstPageTray = firstPageTray;
        return self;
    }

    // Gets firstPageTray. Gets or sets the paper tray (bin) to use for the first page of a section. The value is implementation (printer) specific.
    public func getFirstPageTray() -> Int? {
        return self.firstPageTray;
    }

    // Sets footerDistance. Gets or sets the distance (in points) between the footer and the bottom of the page.
    public func setFooterDistance(footerDistance : Double?) -> PageSetup {
        self.footerDistance = footerDistance;
        return self;
    }

    // Gets footerDistance. Gets or sets the distance (in points) between the footer and the bottom of the page.
    public func getFooterDistance() -> Double? {
        return self.footerDistance;
    }

    // Sets gutter. Gets or sets the amount of extra space added to the margin for document binding.
    public func setGutter(gutter : Double?) -> PageSetup {
        self.gutter = gutter;
        return self;
    }

    // Gets gutter. Gets or sets the amount of extra space added to the margin for document binding.
    public func getGutter() -> Double? {
        return self.gutter;
    }

    // Sets headerDistance. Gets or sets the distance (in points) between the header and the top of the page.
    public func setHeaderDistance(headerDistance : Double?) -> PageSetup {
        self.headerDistance = headerDistance;
        return self;
    }

    // Gets headerDistance. Gets or sets the distance (in points) between the header and the top of the page.
    public func getHeaderDistance() -> Double? {
        return self.headerDistance;
    }

    // Sets leftMargin. Gets or sets the distance (in points) between the left edge of the page and the left boundary of the body text.
    public func setLeftMargin(leftMargin : Double?) -> PageSetup {
        self.leftMargin = leftMargin;
        return self;
    }

    // Gets leftMargin. Gets or sets the distance (in points) between the left edge of the page and the left boundary of the body text.
    public func getLeftMargin() -> Double? {
        return self.leftMargin;
    }

    // Sets lineNumberCountBy. Gets or sets the numeric increment for line numbers.
    public func setLineNumberCountBy(lineNumberCountBy : Int?) -> PageSetup {
        self.lineNumberCountBy = lineNumberCountBy;
        return self;
    }

    // Gets lineNumberCountBy. Gets or sets the numeric increment for line numbers.
    public func getLineNumberCountBy() -> Int? {
        return self.lineNumberCountBy;
    }

    // Sets lineNumberDistanceFromText. Gets or sets the distance between the right edge of line numbers and the left edge of the document.
    public func setLineNumberDistanceFromText(lineNumberDistanceFromText : Double?) -> PageSetup {
        self.lineNumberDistanceFromText = lineNumberDistanceFromText;
        return self;
    }

    // Gets lineNumberDistanceFromText. Gets or sets the distance between the right edge of line numbers and the left edge of the document.
    public func getLineNumberDistanceFromText() -> Double? {
        return self.lineNumberDistanceFromText;
    }

    // Sets lineNumberRestartMode. Gets or sets the way line numbering runs  that is, whether it starts over at the beginning of a new page or section or runs continuously.
    public func setLineNumberRestartMode(lineNumberRestartMode : LineNumberRestartMode?) -> PageSetup {
        self.lineNumberRestartMode = lineNumberRestartMode;
        return self;
    }

    // Gets lineNumberRestartMode. Gets or sets the way line numbering runs  that is, whether it starts over at the beginning of a new page or section or runs continuously.
    public func getLineNumberRestartMode() -> LineNumberRestartMode? {
        return self.lineNumberRestartMode;
    }

    // Sets lineStartingNumber. Gets or sets the starting line number.
    public func setLineStartingNumber(lineStartingNumber : Int?) -> PageSetup {
        self.lineStartingNumber = lineStartingNumber;
        return self;
    }

    // Gets lineStartingNumber. Gets or sets the starting line number.
    public func getLineStartingNumber() -> Int? {
        return self.lineStartingNumber;
    }

    // Sets orientation. Gets or sets the orientation of the page.
    public func setOrientation(orientation : Orientation?) -> PageSetup {
        self.orientation = orientation;
        return self;
    }

    // Gets orientation. Gets or sets the orientation of the page.
    public func getOrientation() -> Orientation? {
        return self.orientation;
    }

    // Sets otherPagesTray. Gets or sets the paper tray (bin) to be used for all but the first page of a section. The value is implementation (printer) specific.
    public func setOtherPagesTray(otherPagesTray : Int?) -> PageSetup {
        self.otherPagesTray = otherPagesTray;
        return self;
    }

    // Gets otherPagesTray. Gets or sets the paper tray (bin) to be used for all but the first page of a section. The value is implementation (printer) specific.
    public func getOtherPagesTray() -> Int? {
        return self.otherPagesTray;
    }

    // Sets pageHeight. Gets or sets the height of the page in points.
    public func setPageHeight(pageHeight : Double?) -> PageSetup {
        self.pageHeight = pageHeight;
        return self;
    }

    // Gets pageHeight. Gets or sets the height of the page in points.
    public func getPageHeight() -> Double? {
        return self.pageHeight;
    }

    // Sets pageNumberStyle. Gets or sets the page number format.
    public func setPageNumberStyle(pageNumberStyle : PageNumberStyle?) -> PageSetup {
        self.pageNumberStyle = pageNumberStyle;
        return self;
    }

    // Gets pageNumberStyle. Gets or sets the page number format.
    public func getPageNumberStyle() -> PageNumberStyle? {
        return self.pageNumberStyle;
    }

    // Sets pageStartingNumber. Gets or sets the starting page number of the section.
    public func setPageStartingNumber(pageStartingNumber : Int?) -> PageSetup {
        self.pageStartingNumber = pageStartingNumber;
        return self;
    }

    // Gets pageStartingNumber. Gets or sets the starting page number of the section.
    public func getPageStartingNumber() -> Int? {
        return self.pageStartingNumber;
    }

    // Sets pageWidth. Gets or sets the width of the page in points.
    public func setPageWidth(pageWidth : Double?) -> PageSetup {
        self.pageWidth = pageWidth;
        return self;
    }

    // Gets pageWidth. Gets or sets the width of the page in points.
    public func getPageWidth() -> Double? {
        return self.pageWidth;
    }

    // Sets paperSize. Gets or sets the paper size.
    public func setPaperSize(paperSize : PaperSize?) -> PageSetup {
        self.paperSize = paperSize;
        return self;
    }

    // Gets paperSize. Gets or sets the paper size.
    public func getPaperSize() -> PaperSize? {
        return self.paperSize;
    }

    // Sets restartPageNumbering. Gets or sets a value indicating whether page numbering restarts at the beginning of the section.
    public func setRestartPageNumbering(restartPageNumbering : Bool?) -> PageSetup {
        self.restartPageNumbering = restartPageNumbering;
        return self;
    }

    // Gets restartPageNumbering. Gets or sets a value indicating whether page numbering restarts at the beginning of the section.
    public func getRestartPageNumbering() -> Bool? {
        return self.restartPageNumbering;
    }

    // Sets rightMargin. Gets or sets the distance (in points) between the right edge of the page and the right boundary of the body text.
    public func setRightMargin(rightMargin : Double?) -> PageSetup {
        self.rightMargin = rightMargin;
        return self;
    }

    // Gets rightMargin. Gets or sets the distance (in points) between the right edge of the page and the right boundary of the body text.
    public func getRightMargin() -> Double? {
        return self.rightMargin;
    }

    // Sets rtlGutter. Gets or sets a value indicating whether Microsoft Word uses gutters for the section based on a right-to-left language or a left-to-right language.
    public func setRtlGutter(rtlGutter : Bool?) -> PageSetup {
        self.rtlGutter = rtlGutter;
        return self;
    }

    // Gets rtlGutter. Gets or sets a value indicating whether Microsoft Word uses gutters for the section based on a right-to-left language or a left-to-right language.
    public func getRtlGutter() -> Bool? {
        return self.rtlGutter;
    }

    // Sets sectionStart. Gets or sets the type of section break for the specified object.
    public func setSectionStart(sectionStart : SectionStart?) -> PageSetup {
        self.sectionStart = sectionStart;
        return self;
    }

    // Gets sectionStart. Gets or sets the type of section break for the specified object.
    public func getSectionStart() -> SectionStart? {
        return self.sectionStart;
    }

    // Sets suppressEndnotes. Gets or sets a value indicating whether endnotes are printed at the end of the next section that doesn't suppress endnotes. Suppressed endnotes are printed before the endnotes in that section.
    public func setSuppressEndnotes(suppressEndnotes : Bool?) -> PageSetup {
        self.suppressEndnotes = suppressEndnotes;
        return self;
    }

    // Gets suppressEndnotes. Gets or sets a value indicating whether endnotes are printed at the end of the next section that doesn't suppress endnotes. Suppressed endnotes are printed before the endnotes in that section.
    public func getSuppressEndnotes() -> Bool? {
        return self.suppressEndnotes;
    }

    // Sets topMargin. Gets or sets the distance (in points) between the top edge of the page and the top boundary of the body text.
    public func setTopMargin(topMargin : Double?) -> PageSetup {
        self.topMargin = topMargin;
        return self;
    }

    // Gets topMargin. Gets or sets the distance (in points) between the top edge of the page and the top boundary of the body text.
    public func getTopMargin() -> Double? {
        return self.topMargin;
    }

    // Sets verticalAlignment. Gets or sets the vertical alignment of text on each page in the document.or section.
    public func setVerticalAlignment(verticalAlignment : VerticalAlignment?) -> PageSetup {
        self.verticalAlignment = verticalAlignment;
        return self;
    }

    // Gets verticalAlignment. Gets or sets the vertical alignment of text on each page in the document.or section.
    public func getVerticalAlignment() -> VerticalAlignment? {
        return self.verticalAlignment;
    }
}
