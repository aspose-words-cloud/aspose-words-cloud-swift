/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="InsertParagraphOnlineRequest.swift">
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

// Request model for insertParagraphOnline operation.
public class InsertParagraphOnlineRequest {
    private let nodePath : String;
    private let document : InputStream;
    private let paragraph : ParagraphInsert;
    private let loadEncoding : String?;
    private let password : String?;
    private let destFileName : String?;
    private let revisionAuthor : String?;
    private let revisionDateTime : String?;
    private let insertBeforeNode : String?;

    private enum CodingKeys: String, CodingKey {
        case nodePath;
        case document;
        case paragraph;
        case loadEncoding;
        case password;
        case destFileName;
        case revisionAuthor;
        case revisionDateTime;
        case insertBeforeNode;
        case invalidCodingKey;
    }

    // Initializes a new instance of the InsertParagraphOnlineRequest class.
    public init(nodePath : String, document : InputStream, paragraph : ParagraphInsert, loadEncoding : String? = nil, password : String? = nil, destFileName : String? = nil, revisionAuthor : String? = nil, revisionDateTime : String? = nil, insertBeforeNode : String? = nil) {
        self.nodePath = nodePath;
        self.document = document;
        self.paragraph = paragraph;
        self.loadEncoding = loadEncoding;
        self.password = password;
        self.destFileName = destFileName;
        self.revisionAuthor = revisionAuthor;
        self.revisionDateTime = revisionDateTime;
        self.insertBeforeNode = insertBeforeNode;
    }

    // Path to the node which contains paragraphs.
    public func getNodePath() -> String {
        return self.nodePath;
    }

    // The document.
    public func getDocument() -> InputStream {
        return self.document;
    }

    // Paragraph data.
    public func getParagraph() -> ParagraphInsert {
        return self.paragraph;
    }

    // Encoding that will be used to load an HTML (or TXT) document if the encoding is not specified in HTML.
    public func getLoadEncoding() -> String? {
        return self.loadEncoding;
    }

    // Password for opening an encrypted document.
    public func getPassword() -> String? {
        return self.password;
    }

    // Result path of the document after the operation. If this parameter is omitted then result of the operation will be saved as the source document.
    public func getDestFileName() -> String? {
        return self.destFileName;
    }

    // Initials of the author to use for revisions.If you set this parameter and then make some changes to the document programmatically, save the document and later open the document in MS Word you will see these changes as revisions.
    public func getRevisionAuthor() -> String? {
        return self.revisionAuthor;
    }

    // The date and time to use for revisions.
    public func getRevisionDateTime() -> String? {
        return self.revisionDateTime;
    }

    // Paragraph will be inserted before node with index.
    public func getInsertBeforeNode() -> String? {
        return self.insertBeforeNode;
    }
}
