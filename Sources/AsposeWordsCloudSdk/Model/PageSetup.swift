/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="PageSetup.swift">
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

public class PageSetup : LinkElement {
    // Gets or sets specifies which pages the page border is printed on.             
    public enum BorderAppliesTo : Int, Codable
    { 
        // Enum value "allPages"
        case allPages
        
        // Enum value "firstPage"
        case firstPage
        
        // Enum value "otherPages"
        case otherPages
        
    }

    // Gets or sets a value that indicates whether the specified page border is measured from the edge of the page or from the text it surrounds.             
    public enum BorderDistanceFrom : Int, Codable
    { 
        // Enum value "text"
        case text
        
        // Enum value "pageEdge"
        case pageEdge
        
    }

    // Gets or sets the way line numbering runs  that is, whether it starts over at the beginning of a new page or section or runs continuously.             
    public enum LineNumberRestartMode : Int, Codable
    { 
        // Enum value "restartPage"
        case restartPage
        
        // Enum value "restartSection"
        case restartSection
        
        // Enum value "continuous"
        case continuous
        
    }

    // Gets or sets returns or sets the orientation of the page.             
    public enum Orientation : Int, Codable
    { 
        // Enum value "portrait"
        case portrait
        
        // Enum value "landscape"
        case landscape
        
    }

    // Gets or sets the page number format.             
    public enum PageNumberStyle : Int, Codable
    { 
        // Enum value "arabic"
        case arabic
        
        // Enum value "uppercaseRoman"
        case uppercaseRoman
        
        // Enum value "lowercaseRoman"
        case lowercaseRoman
        
        // Enum value "uppercaseLetter"
        case uppercaseLetter
        
        // Enum value "lowercaseLetter"
        case lowercaseLetter
        
        // Enum value "ordinal"
        case ordinal
        
        // Enum value "number"
        case number
        
        // Enum value "ordinalText"
        case ordinalText
        
        // Enum value "hex"
        case hex
        
        // Enum value "chicagoManual"
        case chicagoManual
        
        // Enum value "kanji"
        case kanji
        
        // Enum value "kanjiDigit"
        case kanjiDigit
        
        // Enum value "aiueoHalfWidth"
        case aiueoHalfWidth
        
        // Enum value "irohaHalfWidth"
        case irohaHalfWidth
        
        // Enum value "arabicFullWidth"
        case arabicFullWidth
        
        // Enum value "arabicHalfWidth"
        case arabicHalfWidth
        
        // Enum value "kanjiTraditional"
        case kanjiTraditional
        
        // Enum value "kanjiTraditional2"
        case kanjiTraditional2
        
        // Enum value "numberInCircle"
        case numberInCircle
        
        // Enum value "decimalFullWidth"
        case decimalFullWidth
        
        // Enum value "aiueo"
        case aiueo
        
        // Enum value "iroha"
        case iroha
        
        // Enum value "leadingZero"
        case leadingZero
        
        // Enum value "bullet"
        case bullet
        
        // Enum value "ganada"
        case ganada
        
        // Enum value "chosung"
        case chosung
        
        // Enum value "gb1"
        case gb1
        
        // Enum value "gb2"
        case gb2
        
        // Enum value "gb3"
        case gb3
        
        // Enum value "gb4"
        case gb4
        
        // Enum value "zodiac1"
        case zodiac1
        
        // Enum value "zodiac2"
        case zodiac2
        
        // Enum value "zodiac3"
        case zodiac3
        
        // Enum value "tradChinNum1"
        case tradChinNum1
        
        // Enum value "tradChinNum2"
        case tradChinNum2
        
        // Enum value "tradChinNum3"
        case tradChinNum3
        
        // Enum value "tradChinNum4"
        case tradChinNum4
        
        // Enum value "simpChinNum1"
        case simpChinNum1
        
        // Enum value "simpChinNum2"
        case simpChinNum2
        
        // Enum value "simpChinNum3"
        case simpChinNum3
        
        // Enum value "simpChinNum4"
        case simpChinNum4
        
        // Enum value "hanjaRead"
        case hanjaRead
        
        // Enum value "hanjaReadDigit"
        case hanjaReadDigit
        
        // Enum value "hangul"
        case hangul
        
        // Enum value "hanja"
        case hanja
        
        // Enum value "hebrew1"
        case hebrew1
        
        // Enum value "arabic1"
        case arabic1
        
        // Enum value "hebrew2"
        case hebrew2
        
        // Enum value "arabic2"
        case arabic2
        
        // Enum value "hindiLetter1"
        case hindiLetter1
        
        // Enum value "hindiLetter2"
        case hindiLetter2
        
        // Enum value "hindiArabic"
        case hindiArabic
        
        // Enum value "hindiCardinalText"
        case hindiCardinalText
        
        // Enum value "thaiLetter"
        case thaiLetter
        
        // Enum value "thaiArabic"
        case thaiArabic
        
        // Enum value "thaiCardinalText"
        case thaiCardinalText
        
        // Enum value "vietCardinalText"
        case vietCardinalText
        
        // Enum value "numberInDash"
        case numberInDash
        
        // Enum value "lowercaseRussian"
        case lowercaseRussian
        
        // Enum value "uppercaseRussian"
        case uppercaseRussian
        
        // Enum value "_none"
        case _none
        
        // Enum value "custom"
        case custom
        
    }

    // Gets or sets returns or sets the paper size.             
    public enum PaperSize : Int, Codable
    { 
        // Enum value "a3"
        case a3
        
        // Enum value "a4"
        case a4
        
        // Enum value "a5"
        case a5
        
        // Enum value "b4"
        case b4
        
        // Enum value "b5"
        case b5
        
        // Enum value "executive"
        case executive
        
        // Enum value "folio"
        case folio
        
        // Enum value "ledger"
        case ledger
        
        // Enum value "legal"
        case legal
        
        // Enum value "letter"
        case letter
        
        // Enum value "envelopeDL"
        case envelopeDL
        
        // Enum value "quarto"
        case quarto
        
        // Enum value "statement"
        case statement
        
        // Enum value "tabloid"
        case tabloid
        
        // Enum value "paper10x14"
        case paper10x14
        
        // Enum value "paper11x17"
        case paper11x17
        
        // Enum value "custom"
        case custom
        
    }

    // Gets or sets returns or sets the type of section break for the specified object.             
    public enum SectionStart : Int, Codable
    { 
        // Enum value "continuous"
        case continuous
        
        // Enum value "newColumn"
        case newColumn
        
        // Enum value "newPage"
        case newPage
        
        // Enum value "evenPage"
        case evenPage
        
        // Enum value "oddPage"
        case oddPage
        
    }

    // Gets or sets returns or sets the vertical alignment of text on each page in a document or section.             
    public enum VerticalAlignment : Int, Codable
    { 
        // Enum value "top"
        case top
        
        // Enum value "center"
        case center
        
        // Enum value "justify"
        case justify
        
        // Enum value "bottom"
        case bottom
        
    }

        
    // Gets or sets specifies that this section contains bidirectional (complex scripts) text.             
    private let bidi : Bool?;
    // Gets or sets specifies where the page border is positioned relative to intersecting texts and objects.             
    private let borderAlwaysInFront : Bool?;
    // Gets or sets specifies which pages the page border is printed on.             
    private let borderAppliesTo : BorderAppliesTo?;
    // Gets or sets a value that indicates whether the specified page border is measured from the edge of the page or from the text it surrounds.             
    private let borderDistanceFrom : BorderDistanceFrom?;
    // Gets or sets returns or sets the distance (in points) between the bottom edge of the page and the bottom boundary of the body text.             
    private let bottomMargin : Double?;
    // Gets or sets true if a different header or footer is used on the first page.             
    private let differentFirstPageHeaderFooter : Bool?;
    // Gets or sets the paper tray (bin) to use for the first page of a section. The value is implementation (printer) specific.             
    private let firstPageTray : Int?;
    // Gets or sets returns or sets the distance (in points) between the footer and the bottom of the page.             
    private let footerDistance : Double?;
    // Gets or sets the amount of extra space added to the margin for document binding.             
    private let gutter : Double?;
    // Gets or sets returns or sets the distance (in points) between the header and the top of the page.             
    private let headerDistance : Double?;
    // Gets or sets returns or sets the distance (in points) between the left edge of the page and the left boundary of the body text.             
    private let leftMargin : Double?;
    // Gets or sets returns or sets the numeric increment for line numbers.             
    private let lineNumberCountBy : Int?;
    // Gets or sets distance between the right edge of line numbers and the left edge of the document.             
    private let lineNumberDistanceFromText : Double?;
    // Gets or sets the way line numbering runs  that is, whether it starts over at the beginning of a new page or section or runs continuously.             
    private let lineNumberRestartMode : LineNumberRestartMode?;
    // Gets or sets the starting line number.             
    private let lineStartingNumber : Int?;
    // Gets or sets returns or sets the orientation of the page.             
    private let orientation : Orientation?;
    // Gets or sets the paper tray (bin) to be used for all but the first page of a section. The value is implementation (printer) specific.             
    private let otherPagesTray : Int?;
    // Gets or sets returns or sets the height of the page in points.             
    private let pageHeight : Double?;
    // Gets or sets the page number format.             
    private let pageNumberStyle : PageNumberStyle?;
    // Gets or sets the starting page number of the section.             
    private let pageStartingNumber : Int?;
    // Gets or sets returns or sets the width of the page in points.             
    private let pageWidth : Double?;
    // Gets or sets returns or sets the paper size.             
    private let paperSize : PaperSize?;
    // Gets or sets true if page numbering restarts at the beginning of the section.             
    private let restartPageNumbering : Bool?;
    // Gets or sets returns or sets the distance (in points) between the right edge of the page and the right boundary of the body text.             
    private let rightMargin : Double?;
    // Gets or sets whether Microsoft Word uses gutters for the section based on a right-to-left language or a left-to-right language.             
    private let rtlGutter : Bool?;
    // Gets or sets returns or sets the type of section break for the specified object.             
    private let sectionStart : SectionStart?;
    // Gets or sets true if endnotes are printed at the end of the next section that doesn&#39;t suppress endnotes.                 Suppressed endnotes are printed before the endnotes in that section.             
    private let suppressEndnotes : Bool?;
    // Gets or sets returns or sets the distance (in points) between the top edge of the page and the top boundary of the body text.             
    private let topMargin : Double?;
    // Gets or sets returns or sets the vertical alignment of text on each page in a document or section.             
    private let verticalAlignment : VerticalAlignment?;
        
    private enum CodingKeys: String, CodingKey {
        case bidi;
        case borderAlwaysInFront;
        case borderAppliesTo;
        case borderDistanceFrom;
        case bottomMargin;
        case differentFirstPageHeaderFooter;
        case firstPageTray;
        case footerDistance;
        case gutter;
        case headerDistance;
        case leftMargin;
        case lineNumberCountBy;
        case lineNumberDistanceFromText;
        case lineNumberRestartMode;
        case lineStartingNumber;
        case orientation;
        case otherPagesTray;
        case pageHeight;
        case pageNumberStyle;
        case pageStartingNumber;
        case pageWidth;
        case paperSize;
        case restartPageNumbering;
        case rightMargin;
        case rtlGutter;
        case sectionStart;
        case suppressEndnotes;
        case topMargin;
        case verticalAlignment;
    }
        
    public init(bidi : Bool? = nil, borderAlwaysInFront : Bool? = nil, borderAppliesTo : BorderAppliesTo? = nil, borderDistanceFrom : BorderDistanceFrom? = nil, bottomMargin : Double? = nil, differentFirstPageHeaderFooter : Bool? = nil, firstPageTray : Int? = nil, footerDistance : Double? = nil, gutter : Double? = nil, headerDistance : Double? = nil, leftMargin : Double? = nil, lineNumberCountBy : Int? = nil, lineNumberDistanceFromText : Double? = nil, lineNumberRestartMode : LineNumberRestartMode? = nil, lineStartingNumber : Int? = nil, orientation : Orientation? = nil, otherPagesTray : Int? = nil, pageHeight : Double? = nil, pageNumberStyle : PageNumberStyle? = nil, pageStartingNumber : Int? = nil, pageWidth : Double? = nil, paperSize : PaperSize? = nil, restartPageNumbering : Bool? = nil, rightMargin : Double? = nil, rtlGutter : Bool? = nil, sectionStart : SectionStart? = nil, suppressEndnotes : Bool? = nil, topMargin : Double? = nil, verticalAlignment : VerticalAlignment? = nil) {
        self.bidi = bidi;
        self.borderAlwaysInFront = borderAlwaysInFront;
        self.borderAppliesTo = borderAppliesTo;
        self.borderDistanceFrom = borderDistanceFrom;
        self.bottomMargin = bottomMargin;
        self.differentFirstPageHeaderFooter = differentFirstPageHeaderFooter;
        self.firstPageTray = firstPageTray;
        self.footerDistance = footerDistance;
        self.gutter = gutter;
        self.headerDistance = headerDistance;
        self.leftMargin = leftMargin;
        self.lineNumberCountBy = lineNumberCountBy;
        self.lineNumberDistanceFromText = lineNumberDistanceFromText;
        self.lineNumberRestartMode = lineNumberRestartMode;
        self.lineStartingNumber = lineStartingNumber;
        self.orientation = orientation;
        self.otherPagesTray = otherPagesTray;
        self.pageHeight = pageHeight;
        self.pageNumberStyle = pageNumberStyle;
        self.pageStartingNumber = pageStartingNumber;
        self.pageWidth = pageWidth;
        self.paperSize = paperSize;
        self.restartPageNumbering = restartPageNumbering;
        self.rightMargin = rightMargin;
        self.rtlGutter = rtlGutter;
        self.sectionStart = sectionStart;
        self.suppressEndnotes = suppressEndnotes;
        self.topMargin = topMargin;
        self.verticalAlignment = verticalAlignment;
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        try super.init(from: try container.superDecoder());
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
        try super.encode(to: container.superEncoder());
    }
        
    public func getBidi() -> Bool? {
        return self.bidi;
    }
    public func getBorderAlwaysInFront() -> Bool? {
        return self.borderAlwaysInFront;
    }
    public func getBorderAppliesTo() -> BorderAppliesTo? {
        return self.borderAppliesTo;
    }
    public func getBorderDistanceFrom() -> BorderDistanceFrom? {
        return self.borderDistanceFrom;
    }
    public func getBottomMargin() -> Double? {
        return self.bottomMargin;
    }
    public func getDifferentFirstPageHeaderFooter() -> Bool? {
        return self.differentFirstPageHeaderFooter;
    }
    public func getFirstPageTray() -> Int? {
        return self.firstPageTray;
    }
    public func getFooterDistance() -> Double? {
        return self.footerDistance;
    }
    public func getGutter() -> Double? {
        return self.gutter;
    }
    public func getHeaderDistance() -> Double? {
        return self.headerDistance;
    }
    public func getLeftMargin() -> Double? {
        return self.leftMargin;
    }
    public func getLineNumberCountBy() -> Int? {
        return self.lineNumberCountBy;
    }
    public func getLineNumberDistanceFromText() -> Double? {
        return self.lineNumberDistanceFromText;
    }
    public func getLineNumberRestartMode() -> LineNumberRestartMode? {
        return self.lineNumberRestartMode;
    }
    public func getLineStartingNumber() -> Int? {
        return self.lineStartingNumber;
    }
    public func getOrientation() -> Orientation? {
        return self.orientation;
    }
    public func getOtherPagesTray() -> Int? {
        return self.otherPagesTray;
    }
    public func getPageHeight() -> Double? {
        return self.pageHeight;
    }
    public func getPageNumberStyle() -> PageNumberStyle? {
        return self.pageNumberStyle;
    }
    public func getPageStartingNumber() -> Int? {
        return self.pageStartingNumber;
    }
    public func getPageWidth() -> Double? {
        return self.pageWidth;
    }
    public func getPaperSize() -> PaperSize? {
        return self.paperSize;
    }
    public func getRestartPageNumbering() -> Bool? {
        return self.restartPageNumbering;
    }
    public func getRightMargin() -> Double? {
        return self.rightMargin;
    }
    public func getRtlGutter() -> Bool? {
        return self.rtlGutter;
    }
    public func getSectionStart() -> SectionStart? {
        return self.sectionStart;
    }
    public func getSuppressEndnotes() -> Bool? {
        return self.suppressEndnotes;
    }
    public func getTopMargin() -> Double? {
        return self.topMargin;
    }
    public func getVerticalAlignment() -> VerticalAlignment? {
        return self.verticalAlignment;
    }
}
