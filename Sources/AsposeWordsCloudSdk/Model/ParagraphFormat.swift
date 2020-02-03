/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ParagraphFormat.swift">
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

public class ParagraphFormat : LinkElement {
    // Gets or sets text alignment for the paragraph.             
    public enum Alignment : Int, Codable
    { 
        // Enum value "_left"
        case _left
        
        // Enum value "center"
        case center
        
        // Enum value "_right"
        case _right
        
        // Enum value "justify"
        case justify
        
        // Enum value "distributed"
        case distributed
        
        // Enum value "arabicMediumKashida"
        case arabicMediumKashida
        
        // Enum value "arabicHighKashida"
        case arabicHighKashida
        
        // Enum value "arabicLowKashida"
        case arabicLowKashida
        
        // Enum value "thaiDistributed"
        case thaiDistributed
        
    }

    // Gets or sets the position for a drop cap text.             
    public enum DropCapPosition : Int, Codable
    { 
        // Enum value "_none"
        case _none
        
        // Enum value "normal"
        case normal
        
        // Enum value "margin"
        case margin
        
    }

    // Gets or sets the line spacing for the paragraph.             
    public enum LineSpacingRule : Int, Codable
    { 
        // Enum value "atLeast"
        case atLeast
        
        // Enum value "exactly"
        case exactly
        
        // Enum value "multiple"
        case multiple
        
    }

    // Gets or sets specifies the outline level of the paragraph in the document.             
    public enum OutlineLevel : Int, Codable
    { 
        // Enum value "level1"
        case level1
        
        // Enum value "level2"
        case level2
        
        // Enum value "level3"
        case level3
        
        // Enum value "level4"
        case level4
        
        // Enum value "level5"
        case level5
        
        // Enum value "level6"
        case level6
        
        // Enum value "level7"
        case level7
        
        // Enum value "level8"
        case level8
        
        // Enum value "level9"
        case level9
        
        // Enum value "bodyText"
        case bodyText
        
    }

    // Gets or sets the locale independent style identifier of the paragraph style applied to this formatting.             
    public enum StyleIdentifier : Int, Codable
    { 
        // Enum value "normal"
        case normal
        
        // Enum value "heading1"
        case heading1
        
        // Enum value "heading2"
        case heading2
        
        // Enum value "heading3"
        case heading3
        
        // Enum value "heading4"
        case heading4
        
        // Enum value "heading5"
        case heading5
        
        // Enum value "heading6"
        case heading6
        
        // Enum value "heading7"
        case heading7
        
        // Enum value "heading8"
        case heading8
        
        // Enum value "heading9"
        case heading9
        
        // Enum value "index1"
        case index1
        
        // Enum value "index2"
        case index2
        
        // Enum value "index3"
        case index3
        
        // Enum value "index4"
        case index4
        
        // Enum value "index5"
        case index5
        
        // Enum value "index6"
        case index6
        
        // Enum value "index7"
        case index7
        
        // Enum value "index8"
        case index8
        
        // Enum value "index9"
        case index9
        
        // Enum value "toc1"
        case toc1
        
        // Enum value "toc2"
        case toc2
        
        // Enum value "toc3"
        case toc3
        
        // Enum value "toc4"
        case toc4
        
        // Enum value "toc5"
        case toc5
        
        // Enum value "toc6"
        case toc6
        
        // Enum value "toc7"
        case toc7
        
        // Enum value "toc8"
        case toc8
        
        // Enum value "toc9"
        case toc9
        
        // Enum value "normalIndent"
        case normalIndent
        
        // Enum value "footnoteText"
        case footnoteText
        
        // Enum value "commentText"
        case commentText
        
        // Enum value "header"
        case header
        
        // Enum value "footer"
        case footer
        
        // Enum value "indexHeading"
        case indexHeading
        
        // Enum value "caption"
        case caption
        
        // Enum value "tableOfFigures"
        case tableOfFigures
        
        // Enum value "envelopeAddress"
        case envelopeAddress
        
        // Enum value "envelopeReturn"
        case envelopeReturn
        
        // Enum value "footnoteReference"
        case footnoteReference
        
        // Enum value "commentReference"
        case commentReference
        
        // Enum value "lineNumber"
        case lineNumber
        
        // Enum value "pageNumber"
        case pageNumber
        
        // Enum value "endnoteReference"
        case endnoteReference
        
        // Enum value "endnoteText"
        case endnoteText
        
        // Enum value "tableOfAuthorities"
        case tableOfAuthorities
        
        // Enum value "macro"
        case macro
        
        // Enum value "toaHeading"
        case toaHeading
        
        // Enum value "list"
        case list
        
        // Enum value "listBullet"
        case listBullet
        
        // Enum value "listNumber"
        case listNumber
        
        // Enum value "list2"
        case list2
        
        // Enum value "list3"
        case list3
        
        // Enum value "list4"
        case list4
        
        // Enum value "list5"
        case list5
        
        // Enum value "listBullet2"
        case listBullet2
        
        // Enum value "listBullet3"
        case listBullet3
        
        // Enum value "listBullet4"
        case listBullet4
        
        // Enum value "listBullet5"
        case listBullet5
        
        // Enum value "listNumber2"
        case listNumber2
        
        // Enum value "listNumber3"
        case listNumber3
        
        // Enum value "listNumber4"
        case listNumber4
        
        // Enum value "listNumber5"
        case listNumber5
        
        // Enum value "title"
        case title
        
        // Enum value "closing"
        case closing
        
        // Enum value "signature"
        case signature
        
        // Enum value "defaultParagraphFont"
        case defaultParagraphFont
        
        // Enum value "bodyText"
        case bodyText
        
        // Enum value "bodyTextInd"
        case bodyTextInd
        
        // Enum value "listContinue"
        case listContinue
        
        // Enum value "listContinue2"
        case listContinue2
        
        // Enum value "listContinue3"
        case listContinue3
        
        // Enum value "listContinue4"
        case listContinue4
        
        // Enum value "listContinue5"
        case listContinue5
        
        // Enum value "messageHeader"
        case messageHeader
        
        // Enum value "subtitle"
        case subtitle
        
        // Enum value "salutation"
        case salutation
        
        // Enum value "date"
        case date
        
        // Enum value "bodyText1I"
        case bodyText1I
        
        // Enum value "bodyText1I2"
        case bodyText1I2
        
        // Enum value "noteHeading"
        case noteHeading
        
        // Enum value "bodyText2"
        case bodyText2
        
        // Enum value "bodyText3"
        case bodyText3
        
        // Enum value "bodyTextInd2"
        case bodyTextInd2
        
        // Enum value "bodyTextInd3"
        case bodyTextInd3
        
        // Enum value "blockText"
        case blockText
        
        // Enum value "hyperlink"
        case hyperlink
        
        // Enum value "followedHyperlink"
        case followedHyperlink
        
        // Enum value "strong"
        case strong
        
        // Enum value "emphasis"
        case emphasis
        
        // Enum value "documentMap"
        case documentMap
        
        // Enum value "plainText"
        case plainText
        
        // Enum value "emailSignature"
        case emailSignature
        
        // Enum value "htmlTopOfForm"
        case htmlTopOfForm
        
        // Enum value "htmlBottomOfForm"
        case htmlBottomOfForm
        
        // Enum value "normalWeb"
        case normalWeb
        
        // Enum value "htmlAcronym"
        case htmlAcronym
        
        // Enum value "htmlAddress"
        case htmlAddress
        
        // Enum value "htmlCite"
        case htmlCite
        
        // Enum value "htmlCode"
        case htmlCode
        
        // Enum value "htmlDefinition"
        case htmlDefinition
        
        // Enum value "htmlKeyboard"
        case htmlKeyboard
        
        // Enum value "htmlPreformatted"
        case htmlPreformatted
        
        // Enum value "htmlSample"
        case htmlSample
        
        // Enum value "htmlTypewriter"
        case htmlTypewriter
        
        // Enum value "htmlVariable"
        case htmlVariable
        
        // Enum value "tableNormal"
        case tableNormal
        
        // Enum value "commentSubject"
        case commentSubject
        
        // Enum value "noList"
        case noList
        
        // Enum value "outlineList1"
        case outlineList1
        
        // Enum value "outlineList2"
        case outlineList2
        
        // Enum value "outlineList3"
        case outlineList3
        
        // Enum value "tableSimple1"
        case tableSimple1
        
        // Enum value "tableSimple2"
        case tableSimple2
        
        // Enum value "tableSimple3"
        case tableSimple3
        
        // Enum value "tableClassic1"
        case tableClassic1
        
        // Enum value "tableClassic2"
        case tableClassic2
        
        // Enum value "tableClassic3"
        case tableClassic3
        
        // Enum value "tableClassic4"
        case tableClassic4
        
        // Enum value "tableColorful1"
        case tableColorful1
        
        // Enum value "tableColorful2"
        case tableColorful2
        
        // Enum value "tableColorful3"
        case tableColorful3
        
        // Enum value "tableColumns1"
        case tableColumns1
        
        // Enum value "tableColumns2"
        case tableColumns2
        
        // Enum value "tableColumns3"
        case tableColumns3
        
        // Enum value "tableColumns4"
        case tableColumns4
        
        // Enum value "tableColumns5"
        case tableColumns5
        
        // Enum value "tableGrid1"
        case tableGrid1
        
        // Enum value "tableGrid2"
        case tableGrid2
        
        // Enum value "tableGrid3"
        case tableGrid3
        
        // Enum value "tableGrid4"
        case tableGrid4
        
        // Enum value "tableGrid5"
        case tableGrid5
        
        // Enum value "tableGrid6"
        case tableGrid6
        
        // Enum value "tableGrid7"
        case tableGrid7
        
        // Enum value "tableGrid8"
        case tableGrid8
        
        // Enum value "tableList1"
        case tableList1
        
        // Enum value "tableList2"
        case tableList2
        
        // Enum value "tableList3"
        case tableList3
        
        // Enum value "tableList4"
        case tableList4
        
        // Enum value "tableList5"
        case tableList5
        
        // Enum value "tableList6"
        case tableList6
        
        // Enum value "tableList7"
        case tableList7
        
        // Enum value "tableList8"
        case tableList8
        
        // Enum value "table3DEffects1"
        case table3DEffects1
        
        // Enum value "table3DEffects2"
        case table3DEffects2
        
        // Enum value "table3DEffects3"
        case table3DEffects3
        
        // Enum value "tableContemporary"
        case tableContemporary
        
        // Enum value "tableElegant"
        case tableElegant
        
        // Enum value "tableProfessional"
        case tableProfessional
        
        // Enum value "tableSubtle1"
        case tableSubtle1
        
        // Enum value "tableSubtle2"
        case tableSubtle2
        
        // Enum value "tableWeb1"
        case tableWeb1
        
        // Enum value "tableWeb2"
        case tableWeb2
        
        // Enum value "tableWeb3"
        case tableWeb3
        
        // Enum value "balloonText"
        case balloonText
        
        // Enum value "tableGrid"
        case tableGrid
        
        // Enum value "tableTheme"
        case tableTheme
        
        // Enum value "placeholderText"
        case placeholderText
        
        // Enum value "noSpacing"
        case noSpacing
        
        // Enum value "lightShading"
        case lightShading
        
        // Enum value "lightList"
        case lightList
        
        // Enum value "lightGrid"
        case lightGrid
        
        // Enum value "mediumShading1"
        case mediumShading1
        
        // Enum value "mediumShading2"
        case mediumShading2
        
        // Enum value "mediumList1"
        case mediumList1
        
        // Enum value "mediumList2"
        case mediumList2
        
        // Enum value "mediumGrid1"
        case mediumGrid1
        
        // Enum value "mediumGrid2"
        case mediumGrid2
        
        // Enum value "mediumGrid3"
        case mediumGrid3
        
        // Enum value "darkList"
        case darkList
        
        // Enum value "colorfulShading"
        case colorfulShading
        
        // Enum value "colorfulList"
        case colorfulList
        
        // Enum value "colorfulGrid"
        case colorfulGrid
        
        // Enum value "lightShadingAccent1"
        case lightShadingAccent1
        
        // Enum value "lightListAccent1"
        case lightListAccent1
        
        // Enum value "lightGridAccent1"
        case lightGridAccent1
        
        // Enum value "mediumShading1Accent1"
        case mediumShading1Accent1
        
        // Enum value "mediumShading2Accent1"
        case mediumShading2Accent1
        
        // Enum value "mediumList1Accent1"
        case mediumList1Accent1
        
        // Enum value "revision"
        case revision
        
        // Enum value "listParagraph"
        case listParagraph
        
        // Enum value "quote"
        case quote
        
        // Enum value "intenseQuote"
        case intenseQuote
        
        // Enum value "mediumList2Accent1"
        case mediumList2Accent1
        
        // Enum value "mediumGrid1Accent1"
        case mediumGrid1Accent1
        
        // Enum value "mediumGrid2Accent1"
        case mediumGrid2Accent1
        
        // Enum value "mediumGrid3Accent1"
        case mediumGrid3Accent1
        
        // Enum value "darkListAccent1"
        case darkListAccent1
        
        // Enum value "colorfulShadingAccent1"
        case colorfulShadingAccent1
        
        // Enum value "colorfulListAccent1"
        case colorfulListAccent1
        
        // Enum value "colorfulGridAccent1"
        case colorfulGridAccent1
        
        // Enum value "lightShadingAccent2"
        case lightShadingAccent2
        
        // Enum value "lightListAccent2"
        case lightListAccent2
        
        // Enum value "lightGridAccent2"
        case lightGridAccent2
        
        // Enum value "mediumShading1Accent2"
        case mediumShading1Accent2
        
        // Enum value "mediumShading2Accent2"
        case mediumShading2Accent2
        
        // Enum value "mediumList1Accent2"
        case mediumList1Accent2
        
        // Enum value "mediumList2Accent2"
        case mediumList2Accent2
        
        // Enum value "mediumGrid1Accent2"
        case mediumGrid1Accent2
        
        // Enum value "mediumGrid2Accent2"
        case mediumGrid2Accent2
        
        // Enum value "mediumGrid3Accent2"
        case mediumGrid3Accent2
        
        // Enum value "darkListAccent2"
        case darkListAccent2
        
        // Enum value "colorfulShadingAccent2"
        case colorfulShadingAccent2
        
        // Enum value "colorfulListAccent2"
        case colorfulListAccent2
        
        // Enum value "colorfulGridAccent2"
        case colorfulGridAccent2
        
        // Enum value "lightShadingAccent3"
        case lightShadingAccent3
        
        // Enum value "lightListAccent3"
        case lightListAccent3
        
        // Enum value "lightGridAccent3"
        case lightGridAccent3
        
        // Enum value "mediumShading1Accent3"
        case mediumShading1Accent3
        
        // Enum value "mediumShading2Accent3"
        case mediumShading2Accent3
        
        // Enum value "mediumList1Accent3"
        case mediumList1Accent3
        
        // Enum value "mediumList2Accent3"
        case mediumList2Accent3
        
        // Enum value "mediumGrid1Accent3"
        case mediumGrid1Accent3
        
        // Enum value "mediumGrid2Accent3"
        case mediumGrid2Accent3
        
        // Enum value "mediumGrid3Accent3"
        case mediumGrid3Accent3
        
        // Enum value "darkListAccent3"
        case darkListAccent3
        
        // Enum value "colorfulShadingAccent3"
        case colorfulShadingAccent3
        
        // Enum value "colorfulListAccent3"
        case colorfulListAccent3
        
        // Enum value "colorfulGridAccent3"
        case colorfulGridAccent3
        
        // Enum value "lightShadingAccent4"
        case lightShadingAccent4
        
        // Enum value "lightListAccent4"
        case lightListAccent4
        
        // Enum value "lightGridAccent4"
        case lightGridAccent4
        
        // Enum value "mediumShading1Accent4"
        case mediumShading1Accent4
        
        // Enum value "mediumShading2Accent4"
        case mediumShading2Accent4
        
        // Enum value "mediumList1Accent4"
        case mediumList1Accent4
        
        // Enum value "mediumList2Accent4"
        case mediumList2Accent4
        
        // Enum value "mediumGrid1Accent4"
        case mediumGrid1Accent4
        
        // Enum value "mediumGrid2Accent4"
        case mediumGrid2Accent4
        
        // Enum value "mediumGrid3Accent4"
        case mediumGrid3Accent4
        
        // Enum value "darkListAccent4"
        case darkListAccent4
        
        // Enum value "colorfulShadingAccent4"
        case colorfulShadingAccent4
        
        // Enum value "colorfulListAccent4"
        case colorfulListAccent4
        
        // Enum value "colorfulGridAccent4"
        case colorfulGridAccent4
        
        // Enum value "lightShadingAccent5"
        case lightShadingAccent5
        
        // Enum value "lightListAccent5"
        case lightListAccent5
        
        // Enum value "lightGridAccent5"
        case lightGridAccent5
        
        // Enum value "mediumShading1Accent5"
        case mediumShading1Accent5
        
        // Enum value "mediumShading2Accent5"
        case mediumShading2Accent5
        
        // Enum value "mediumList1Accent5"
        case mediumList1Accent5
        
        // Enum value "mediumList2Accent5"
        case mediumList2Accent5
        
        // Enum value "mediumGrid1Accent5"
        case mediumGrid1Accent5
        
        // Enum value "mediumGrid2Accent5"
        case mediumGrid2Accent5
        
        // Enum value "mediumGrid3Accent5"
        case mediumGrid3Accent5
        
        // Enum value "darkListAccent5"
        case darkListAccent5
        
        // Enum value "colorfulShadingAccent5"
        case colorfulShadingAccent5
        
        // Enum value "colorfulListAccent5"
        case colorfulListAccent5
        
        // Enum value "colorfulGridAccent5"
        case colorfulGridAccent5
        
        // Enum value "lightShadingAccent6"
        case lightShadingAccent6
        
        // Enum value "lightListAccent6"
        case lightListAccent6
        
        // Enum value "lightGridAccent6"
        case lightGridAccent6
        
        // Enum value "mediumShading1Accent6"
        case mediumShading1Accent6
        
        // Enum value "mediumShading2Accent6"
        case mediumShading2Accent6
        
        // Enum value "mediumList1Accent6"
        case mediumList1Accent6
        
        // Enum value "mediumList2Accent6"
        case mediumList2Accent6
        
        // Enum value "mediumGrid1Accent6"
        case mediumGrid1Accent6
        
        // Enum value "mediumGrid2Accent6"
        case mediumGrid2Accent6
        
        // Enum value "mediumGrid3Accent6"
        case mediumGrid3Accent6
        
        // Enum value "darkListAccent6"
        case darkListAccent6
        
        // Enum value "colorfulShadingAccent6"
        case colorfulShadingAccent6
        
        // Enum value "colorfulListAccent6"
        case colorfulListAccent6
        
        // Enum value "colorfulGridAccent6"
        case colorfulGridAccent6
        
        // Enum value "subtleEmphasis"
        case subtleEmphasis
        
        // Enum value "intenseEmphasis"
        case intenseEmphasis
        
        // Enum value "subtleReference"
        case subtleReference
        
        // Enum value "intenseReference"
        case intenseReference
        
        // Enum value "bookTitle"
        case bookTitle
        
        // Enum value "bibliography"
        case bibliography
        
        // Enum value "tocHeading"
        case tocHeading
        
        // Enum value "plainTable1"
        case plainTable1
        
        // Enum value "plainTable2"
        case plainTable2
        
        // Enum value "plainTable3"
        case plainTable3
        
        // Enum value "plainTable4"
        case plainTable4
        
        // Enum value "plainTable5"
        case plainTable5
        
        // Enum value "tableGridLight"
        case tableGridLight
        
        // Enum value "gridTable1Light"
        case gridTable1Light
        
        // Enum value "gridTable2"
        case gridTable2
        
        // Enum value "gridTable3"
        case gridTable3
        
        // Enum value "gridTable4"
        case gridTable4
        
        // Enum value "gridTable5Dark"
        case gridTable5Dark
        
        // Enum value "gridTable6Colorful"
        case gridTable6Colorful
        
        // Enum value "gridTable7Colorful"
        case gridTable7Colorful
        
        // Enum value "gridTable1LightAccent1"
        case gridTable1LightAccent1
        
        // Enum value "gridTable2Accent1"
        case gridTable2Accent1
        
        // Enum value "gridTable3Accent1"
        case gridTable3Accent1
        
        // Enum value "gridTable4Accent1"
        case gridTable4Accent1
        
        // Enum value "gridTable5DarkAccent1"
        case gridTable5DarkAccent1
        
        // Enum value "gridTable6ColorfulAccent1"
        case gridTable6ColorfulAccent1
        
        // Enum value "gridTable7ColorfulAccent1"
        case gridTable7ColorfulAccent1
        
        // Enum value "gridTable1LightAccent2"
        case gridTable1LightAccent2
        
        // Enum value "gridTable2Accent2"
        case gridTable2Accent2
        
        // Enum value "gridTable3Accent2"
        case gridTable3Accent2
        
        // Enum value "gridTable4Accent2"
        case gridTable4Accent2
        
        // Enum value "gridTable5DarkAccent2"
        case gridTable5DarkAccent2
        
        // Enum value "gridTable6ColorfulAccent2"
        case gridTable6ColorfulAccent2
        
        // Enum value "gridTable7ColorfulAccent2"
        case gridTable7ColorfulAccent2
        
        // Enum value "gridTable1LightAccent3"
        case gridTable1LightAccent3
        
        // Enum value "gridTable2Accent3"
        case gridTable2Accent3
        
        // Enum value "gridTable3Accent3"
        case gridTable3Accent3
        
        // Enum value "gridTable4Accent3"
        case gridTable4Accent3
        
        // Enum value "gridTable5DarkAccent3"
        case gridTable5DarkAccent3
        
        // Enum value "gridTable6ColorfulAccent3"
        case gridTable6ColorfulAccent3
        
        // Enum value "gridTable7ColorfulAccent3"
        case gridTable7ColorfulAccent3
        
        // Enum value "gridTable1LightAccent4"
        case gridTable1LightAccent4
        
        // Enum value "gridTable2Accent4"
        case gridTable2Accent4
        
        // Enum value "gridTable3Accent4"
        case gridTable3Accent4
        
        // Enum value "gridTable4Accent4"
        case gridTable4Accent4
        
        // Enum value "gridTable5DarkAccent4"
        case gridTable5DarkAccent4
        
        // Enum value "gridTable6ColorfulAccent4"
        case gridTable6ColorfulAccent4
        
        // Enum value "gridTable7ColorfulAccent4"
        case gridTable7ColorfulAccent4
        
        // Enum value "gridTable1LightAccent5"
        case gridTable1LightAccent5
        
        // Enum value "gridTable2Accent5"
        case gridTable2Accent5
        
        // Enum value "gridTable3Accent5"
        case gridTable3Accent5
        
        // Enum value "gridTable4Accent5"
        case gridTable4Accent5
        
        // Enum value "gridTable5DarkAccent5"
        case gridTable5DarkAccent5
        
        // Enum value "gridTable6ColorfulAccent5"
        case gridTable6ColorfulAccent5
        
        // Enum value "gridTable7ColorfulAccent5"
        case gridTable7ColorfulAccent5
        
        // Enum value "gridTable1LightAccent6"
        case gridTable1LightAccent6
        
        // Enum value "gridTable2Accent6"
        case gridTable2Accent6
        
        // Enum value "gridTable3Accent6"
        case gridTable3Accent6
        
        // Enum value "gridTable4Accent6"
        case gridTable4Accent6
        
        // Enum value "gridTable5DarkAccent6"
        case gridTable5DarkAccent6
        
        // Enum value "gridTable6ColorfulAccent6"
        case gridTable6ColorfulAccent6
        
        // Enum value "gridTable7ColorfulAccent6"
        case gridTable7ColorfulAccent6
        
        // Enum value "listTable1Light"
        case listTable1Light
        
        // Enum value "listTable2"
        case listTable2
        
        // Enum value "listTable3"
        case listTable3
        
        // Enum value "listTable4"
        case listTable4
        
        // Enum value "listTable5Dark"
        case listTable5Dark
        
        // Enum value "listTable6Colorful"
        case listTable6Colorful
        
        // Enum value "listTable7Colorful"
        case listTable7Colorful
        
        // Enum value "listTable1LightAccent1"
        case listTable1LightAccent1
        
        // Enum value "listTable2Accent1"
        case listTable2Accent1
        
        // Enum value "listTable3Accent1"
        case listTable3Accent1
        
        // Enum value "listTable4Accent1"
        case listTable4Accent1
        
        // Enum value "listTable5DarkAccent1"
        case listTable5DarkAccent1
        
        // Enum value "listTable6ColorfulAccent1"
        case listTable6ColorfulAccent1
        
        // Enum value "listTable7ColorfulAccent1"
        case listTable7ColorfulAccent1
        
        // Enum value "listTable1LightAccent2"
        case listTable1LightAccent2
        
        // Enum value "listTable2Accent2"
        case listTable2Accent2
        
        // Enum value "listTable3Accent2"
        case listTable3Accent2
        
        // Enum value "listTable4Accent2"
        case listTable4Accent2
        
        // Enum value "listTable5DarkAccent2"
        case listTable5DarkAccent2
        
        // Enum value "listTable6ColorfulAccent2"
        case listTable6ColorfulAccent2
        
        // Enum value "listTable7ColorfulAccent2"
        case listTable7ColorfulAccent2
        
        // Enum value "listTable1LightAccent3"
        case listTable1LightAccent3
        
        // Enum value "listTable2Accent3"
        case listTable2Accent3
        
        // Enum value "listTable3Accent3"
        case listTable3Accent3
        
        // Enum value "listTable4Accent3"
        case listTable4Accent3
        
        // Enum value "listTable5DarkAccent3"
        case listTable5DarkAccent3
        
        // Enum value "listTable6ColorfulAccent3"
        case listTable6ColorfulAccent3
        
        // Enum value "listTable7ColorfulAccent3"
        case listTable7ColorfulAccent3
        
        // Enum value "listTable1LightAccent4"
        case listTable1LightAccent4
        
        // Enum value "listTable2Accent4"
        case listTable2Accent4
        
        // Enum value "listTable3Accent4"
        case listTable3Accent4
        
        // Enum value "listTable4Accent4"
        case listTable4Accent4
        
        // Enum value "listTable5DarkAccent4"
        case listTable5DarkAccent4
        
        // Enum value "listTable6ColorfulAccent4"
        case listTable6ColorfulAccent4
        
        // Enum value "listTable7ColorfulAccent4"
        case listTable7ColorfulAccent4
        
        // Enum value "listTable1LightAccent5"
        case listTable1LightAccent5
        
        // Enum value "listTable2Accent5"
        case listTable2Accent5
        
        // Enum value "listTable3Accent5"
        case listTable3Accent5
        
        // Enum value "listTable4Accent5"
        case listTable4Accent5
        
        // Enum value "listTable5DarkAccent5"
        case listTable5DarkAccent5
        
        // Enum value "listTable6ColorfulAccent5"
        case listTable6ColorfulAccent5
        
        // Enum value "listTable7ColorfulAccent5"
        case listTable7ColorfulAccent5
        
        // Enum value "listTable1LightAccent6"
        case listTable1LightAccent6
        
        // Enum value "listTable2Accent6"
        case listTable2Accent6
        
        // Enum value "listTable3Accent6"
        case listTable3Accent6
        
        // Enum value "listTable4Accent6"
        case listTable4Accent6
        
        // Enum value "listTable5DarkAccent6"
        case listTable5DarkAccent6
        
        // Enum value "listTable6ColorfulAccent6"
        case listTable6ColorfulAccent6
        
        // Enum value "listTable7ColorfulAccent6"
        case listTable7ColorfulAccent6
        
        // Enum value "user"
        case user
        
        // Enum value "_nil"
        case _nil
        
    }

        
    // Gets or sets a flag indicating whether inter-character spacing is automatically adjusted between regions of Latin text and regions of East Asian text in the current paragraph.             
    private let addSpaceBetweenFarEastAndAlpha : Bool?;
    // Gets or sets a flag indicating whether inter-character spacing is automatically adjusted between regions of numbers and regions of East Asian text in the current paragraph.             
    private let addSpaceBetweenFarEastAndDigit : Bool?;
    // Gets or sets text alignment for the paragraph.             
    private let alignment : Alignment?;
    // Gets or sets whether this is a right-to-left paragraph.             
    private let bidi : Bool?;
    // Gets or sets the position for a drop cap text.             
    private let dropCapPosition : DropCapPosition?;
    // Gets or sets the value (in points) for a first line or hanging indent. Use a positive value to set a first-line indent, and use a negative value to set a hanging indent.             
    private let firstLineIndent : Double?;
    // Gets or sets True when the paragraph is an item in a bulleted or numbered list.
    private let isListItem : Bool?;
    // Gets or sets true if all lines in the paragraph are to remain on the same page.             
    private let keepTogether : Bool?;
    // Gets or sets true if the paragraph is to remains on the same page as the paragraph that follows it.             
    private let keepWithNext : Bool?;
    // Gets or sets the value (in points) that represents the left indent for paragraph.             
    private let leftIndent : Double?;
    // Gets or sets the line spacing (in points) for the paragraph.             
    private let lineSpacing : Double?;
    // Gets or sets the line spacing for the paragraph.             
    private let lineSpacingRule : LineSpacingRule?;
    // Gets or sets the number of lines of the paragraph text used to calculate the drop cap height.             
    private let linesToDrop : Int?;
    // Gets or sets when true,  and  will be ignored between the paragraphs of the same style.             
    private let noSpaceBetweenParagraphsOfSameStyle : Bool?;
    // Gets or sets specifies the outline level of the paragraph in the document.             
    private let outlineLevel : OutlineLevel?;
    // Gets or sets true if a page break is forced before the paragraph.             
    private let pageBreakBefore : Bool?;
    // Gets or sets the value (in points) that represents the right indent for paragraph.             
    private let rightIndent : Double?;
    // Gets or sets the amount of spacing (in points) after the paragraph.             
    private let spaceAfter : Double?;
    // Gets or sets true if the amount of spacing after the paragraph is set automatically.             
    private let spaceAfterAuto : Bool?;
    // Gets or sets the amount of spacing (in points) before the paragraph.             
    private let spaceBefore : Double?;
    // Gets or sets true if the amount of spacing before the paragraph is set automatically.             
    private let spaceBeforeAuto : Bool?;
    // Gets or sets the locale independent style identifier of the paragraph style applied to this formatting.             
    private let styleIdentifier : StyleIdentifier?;
    // Gets or sets the name of the paragraph style applied to this formatting.             
    private let styleName : String?;
    // Gets or sets specifies whether the current paragraph should be exempted from any hyphenation which is applied in the document settings.             
    private let suppressAutoHyphens : Bool?;
    // Gets or sets specifies whether the current paragraph&#39;s lines should be exempted from line numbering which is applied in the parent section.             
    private let suppressLineNumbers : Bool?;
    // Gets or sets true if the first and last lines in the paragraph are to remain on the same page as the rest of the paragraph.             
    private let widowControl : Bool?;
        
    private enum CodingKeys: String, CodingKey {
        case addSpaceBetweenFarEastAndAlpha;
        case addSpaceBetweenFarEastAndDigit;
        case alignment;
        case bidi;
        case dropCapPosition;
        case firstLineIndent;
        case isListItem;
        case keepTogether;
        case keepWithNext;
        case leftIndent;
        case lineSpacing;
        case lineSpacingRule;
        case linesToDrop;
        case noSpaceBetweenParagraphsOfSameStyle;
        case outlineLevel;
        case pageBreakBefore;
        case rightIndent;
        case spaceAfter;
        case spaceAfterAuto;
        case spaceBefore;
        case spaceBeforeAuto;
        case styleIdentifier;
        case styleName;
        case suppressAutoHyphens;
        case suppressLineNumbers;
        case widowControl;
    }
        
    public init(addSpaceBetweenFarEastAndAlpha : Bool? = nil, addSpaceBetweenFarEastAndDigit : Bool? = nil, alignment : Alignment? = nil, bidi : Bool? = nil, dropCapPosition : DropCapPosition? = nil, firstLineIndent : Double? = nil, isListItem : Bool? = nil, keepTogether : Bool? = nil, keepWithNext : Bool? = nil, leftIndent : Double? = nil, lineSpacing : Double? = nil, lineSpacingRule : LineSpacingRule? = nil, linesToDrop : Int? = nil, noSpaceBetweenParagraphsOfSameStyle : Bool? = nil, outlineLevel : OutlineLevel? = nil, pageBreakBefore : Bool? = nil, rightIndent : Double? = nil, spaceAfter : Double? = nil, spaceAfterAuto : Bool? = nil, spaceBefore : Double? = nil, spaceBeforeAuto : Bool? = nil, styleIdentifier : StyleIdentifier? = nil, styleName : String? = nil, suppressAutoHyphens : Bool? = nil, suppressLineNumbers : Bool? = nil, widowControl : Bool? = nil) {
        self.addSpaceBetweenFarEastAndAlpha = addSpaceBetweenFarEastAndAlpha;
        self.addSpaceBetweenFarEastAndDigit = addSpaceBetweenFarEastAndDigit;
        self.alignment = alignment;
        self.bidi = bidi;
        self.dropCapPosition = dropCapPosition;
        self.firstLineIndent = firstLineIndent;
        self.isListItem = isListItem;
        self.keepTogether = keepTogether;
        self.keepWithNext = keepWithNext;
        self.leftIndent = leftIndent;
        self.lineSpacing = lineSpacing;
        self.lineSpacingRule = lineSpacingRule;
        self.linesToDrop = linesToDrop;
        self.noSpaceBetweenParagraphsOfSameStyle = noSpaceBetweenParagraphsOfSameStyle;
        self.outlineLevel = outlineLevel;
        self.pageBreakBefore = pageBreakBefore;
        self.rightIndent = rightIndent;
        self.spaceAfter = spaceAfter;
        self.spaceAfterAuto = spaceAfterAuto;
        self.spaceBefore = spaceBefore;
        self.spaceBeforeAuto = spaceBeforeAuto;
        self.styleIdentifier = styleIdentifier;
        self.styleName = styleName;
        self.suppressAutoHyphens = suppressAutoHyphens;
        self.suppressLineNumbers = suppressLineNumbers;
        self.widowControl = widowControl;
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self);
        try super.init(from: try container.superDecoder());
        self.addSpaceBetweenFarEastAndAlpha = try container.decodeIfPresent(Bool.self, forKey: .addSpaceBetweenFarEastAndAlpha);
        self.addSpaceBetweenFarEastAndDigit = try container.decodeIfPresent(Bool.self, forKey: .addSpaceBetweenFarEastAndDigit);
        self.alignment = try container.decodeIfPresent(Alignment.self, forKey: .alignment);
        self.bidi = try container.decodeIfPresent(Bool.self, forKey: .bidi);
        self.dropCapPosition = try container.decodeIfPresent(DropCapPosition.self, forKey: .dropCapPosition);
        self.firstLineIndent = try container.decodeIfPresent(Double.self, forKey: .firstLineIndent);
        self.isListItem = try container.decodeIfPresent(Bool.self, forKey: .isListItem);
        self.keepTogether = try container.decodeIfPresent(Bool.self, forKey: .keepTogether);
        self.keepWithNext = try container.decodeIfPresent(Bool.self, forKey: .keepWithNext);
        self.leftIndent = try container.decodeIfPresent(Double.self, forKey: .leftIndent);
        self.lineSpacing = try container.decodeIfPresent(Double.self, forKey: .lineSpacing);
        self.lineSpacingRule = try container.decodeIfPresent(LineSpacingRule.self, forKey: .lineSpacingRule);
        self.linesToDrop = try container.decodeIfPresent(Int.self, forKey: .linesToDrop);
        self.noSpaceBetweenParagraphsOfSameStyle = try container.decodeIfPresent(Bool.self, forKey: .noSpaceBetweenParagraphsOfSameStyle);
        self.outlineLevel = try container.decodeIfPresent(OutlineLevel.self, forKey: .outlineLevel);
        self.pageBreakBefore = try container.decodeIfPresent(Bool.self, forKey: .pageBreakBefore);
        self.rightIndent = try container.decodeIfPresent(Double.self, forKey: .rightIndent);
        self.spaceAfter = try container.decodeIfPresent(Double.self, forKey: .spaceAfter);
        self.spaceAfterAuto = try container.decodeIfPresent(Bool.self, forKey: .spaceAfterAuto);
        self.spaceBefore = try container.decodeIfPresent(Double.self, forKey: .spaceBefore);
        self.spaceBeforeAuto = try container.decodeIfPresent(Bool.self, forKey: .spaceBeforeAuto);
        self.styleIdentifier = try container.decodeIfPresent(StyleIdentifier.self, forKey: .styleIdentifier);
        self.styleName = try container.decodeIfPresent(String.self, forKey: .styleName);
        self.suppressAutoHyphens = try container.decodeIfPresent(Bool.self, forKey: .suppressAutoHyphens);
        self.suppressLineNumbers = try container.decodeIfPresent(Bool.self, forKey: .suppressLineNumbers);
        self.widowControl = try container.decodeIfPresent(Bool.self, forKey: .widowControl);
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self);
        if (self.addSpaceBetweenFarEastAndAlpha != nil) {
            try container.encode(self.addSpaceBetweenFarEastAndAlpha, forKey: .addSpaceBetweenFarEastAndAlpha);
        }
        if (self.addSpaceBetweenFarEastAndDigit != nil) {
            try container.encode(self.addSpaceBetweenFarEastAndDigit, forKey: .addSpaceBetweenFarEastAndDigit);
        }
        if (self.alignment != nil) {
            try container.encode(self.alignment, forKey: .alignment);
        }
        if (self.bidi != nil) {
            try container.encode(self.bidi, forKey: .bidi);
        }
        if (self.dropCapPosition != nil) {
            try container.encode(self.dropCapPosition, forKey: .dropCapPosition);
        }
        if (self.firstLineIndent != nil) {
            try container.encode(self.firstLineIndent, forKey: .firstLineIndent);
        }
        if (self.isListItem != nil) {
            try container.encode(self.isListItem, forKey: .isListItem);
        }
        if (self.keepTogether != nil) {
            try container.encode(self.keepTogether, forKey: .keepTogether);
        }
        if (self.keepWithNext != nil) {
            try container.encode(self.keepWithNext, forKey: .keepWithNext);
        }
        if (self.leftIndent != nil) {
            try container.encode(self.leftIndent, forKey: .leftIndent);
        }
        if (self.lineSpacing != nil) {
            try container.encode(self.lineSpacing, forKey: .lineSpacing);
        }
        if (self.lineSpacingRule != nil) {
            try container.encode(self.lineSpacingRule, forKey: .lineSpacingRule);
        }
        if (self.linesToDrop != nil) {
            try container.encode(self.linesToDrop, forKey: .linesToDrop);
        }
        if (self.noSpaceBetweenParagraphsOfSameStyle != nil) {
            try container.encode(self.noSpaceBetweenParagraphsOfSameStyle, forKey: .noSpaceBetweenParagraphsOfSameStyle);
        }
        if (self.outlineLevel != nil) {
            try container.encode(self.outlineLevel, forKey: .outlineLevel);
        }
        if (self.pageBreakBefore != nil) {
            try container.encode(self.pageBreakBefore, forKey: .pageBreakBefore);
        }
        if (self.rightIndent != nil) {
            try container.encode(self.rightIndent, forKey: .rightIndent);
        }
        if (self.spaceAfter != nil) {
            try container.encode(self.spaceAfter, forKey: .spaceAfter);
        }
        if (self.spaceAfterAuto != nil) {
            try container.encode(self.spaceAfterAuto, forKey: .spaceAfterAuto);
        }
        if (self.spaceBefore != nil) {
            try container.encode(self.spaceBefore, forKey: .spaceBefore);
        }
        if (self.spaceBeforeAuto != nil) {
            try container.encode(self.spaceBeforeAuto, forKey: .spaceBeforeAuto);
        }
        if (self.styleIdentifier != nil) {
            try container.encode(self.styleIdentifier, forKey: .styleIdentifier);
        }
        if (self.styleName != nil) {
            try container.encode(self.styleName, forKey: .styleName);
        }
        if (self.suppressAutoHyphens != nil) {
            try container.encode(self.suppressAutoHyphens, forKey: .suppressAutoHyphens);
        }
        if (self.suppressLineNumbers != nil) {
            try container.encode(self.suppressLineNumbers, forKey: .suppressLineNumbers);
        }
        if (self.widowControl != nil) {
            try container.encode(self.widowControl, forKey: .widowControl);
        }
        try super.encode(to: container.superEncoder());
    }
        
    public func getAddSpaceBetweenFarEastAndAlpha() -> Bool? {
        return self.addSpaceBetweenFarEastAndAlpha;
    }
    public func getAddSpaceBetweenFarEastAndDigit() -> Bool? {
        return self.addSpaceBetweenFarEastAndDigit;
    }
    public func getAlignment() -> Alignment? {
        return self.alignment;
    }
    public func getBidi() -> Bool? {
        return self.bidi;
    }
    public func getDropCapPosition() -> DropCapPosition? {
        return self.dropCapPosition;
    }
    public func getFirstLineIndent() -> Double? {
        return self.firstLineIndent;
    }
    public func getIsListItem() -> Bool? {
        return self.isListItem;
    }
    public func getKeepTogether() -> Bool? {
        return self.keepTogether;
    }
    public func getKeepWithNext() -> Bool? {
        return self.keepWithNext;
    }
    public func getLeftIndent() -> Double? {
        return self.leftIndent;
    }
    public func getLineSpacing() -> Double? {
        return self.lineSpacing;
    }
    public func getLineSpacingRule() -> LineSpacingRule? {
        return self.lineSpacingRule;
    }
    public func getLinesToDrop() -> Int? {
        return self.linesToDrop;
    }
    public func getNoSpaceBetweenParagraphsOfSameStyle() -> Bool? {
        return self.noSpaceBetweenParagraphsOfSameStyle;
    }
    public func getOutlineLevel() -> OutlineLevel? {
        return self.outlineLevel;
    }
    public func getPageBreakBefore() -> Bool? {
        return self.pageBreakBefore;
    }
    public func getRightIndent() -> Double? {
        return self.rightIndent;
    }
    public func getSpaceAfter() -> Double? {
        return self.spaceAfter;
    }
    public func getSpaceAfterAuto() -> Bool? {
        return self.spaceAfterAuto;
    }
    public func getSpaceBefore() -> Double? {
        return self.spaceBefore;
    }
    public func getSpaceBeforeAuto() -> Bool? {
        return self.spaceBeforeAuto;
    }
    public func getStyleIdentifier() -> StyleIdentifier? {
        return self.styleIdentifier;
    }
    public func getStyleName() -> String? {
        return self.styleName;
    }
    public func getSuppressAutoHyphens() -> Bool? {
        return self.suppressAutoHyphens;
    }
    public func getSuppressLineNumbers() -> Bool? {
        return self.suppressLineNumbers;
    }
    public func getWidowControl() -> Bool? {
        return self.widowControl;
    }
}
