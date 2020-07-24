/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="TableTests.swift">
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

import XCTest
@testable import AsposeWordsCloud

// Example of how to work wtih table.
class TableTests: BaseTestContext {
    static var allTests = [
        ("testGetTables", testGetTables),
        ("testGetTablesWithoutNodePath", testGetTablesWithoutNodePath),
        ("testGetTable", testGetTable),
        ("testGetTableWithoutNodePath", testGetTableWithoutNodePath),
        ("testDeleteTable", testDeleteTable),
        ("testDeleteTableWithoutNodePath", testDeleteTableWithoutNodePath),
        ("testInsertTable", testInsertTable),
        ("testInsertTableWithoutNodePath", testInsertTableWithoutNodePath),
        ("testGetTableProperties", testGetTableProperties),
        ("testGetTablePropertiesWithoutNodePath", testGetTablePropertiesWithoutNodePath),
        ("testUpdateTableProperties", testUpdateTableProperties),
        ("testUpdateTablePropertiesWithoutNodePath", testUpdateTablePropertiesWithoutNodePath),
        ("testGetTableRow", testGetTableRow),
        ("testDeleteTableRow", testDeleteTableRow),
        ("testInsertTableRow", testInsertTableRow),
        ("testGetTableRowFormat", testGetTableRowFormat),
        ("testUpdateTableRowFormat", testUpdateTableRowFormat),
        ("testGetTableCell", testGetTableCell),
        ("testDeleteTableCell", testDeleteTableCell),
        ("testInsertTableCell", testInsertTableCell),
        ("testGetTableCellFormat", testGetTableCellFormat),
        ("testUpdateTableCellFormat", testUpdateTableCellFormat),
        ("testRenderTable", testRenderTable),
        ("testRenderTableWithoutNodePath", testRenderTableWithoutNodePath)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentElements/Tables";
    let localFile = "DocumentElements/Tables/TablesGet.docx";

    // Test for getting tables.
    func testGetTables() throws {
      let remoteFileName = "TestGetTables.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetTablesRequest(name: remoteFileName, nodePath: "", folder: remoteDataFolder);
      _ = try super.getApi().getTables(request: request);
    }

    // Test for getting tables without node path.
    func testGetTablesWithoutNodePath() throws {
      let remoteFileName = "TestGetTablesWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetTablesRequest(name: remoteFileName, folder: remoteDataFolder);
      _ = try super.getApi().getTables(request: request);
    }

    // Test for getting table.
    func testGetTable() throws {
      let remoteFileName = "TestGetTable.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetTableRequest(name: remoteFileName, index: 1, nodePath: "", folder: remoteDataFolder);
      _ = try super.getApi().getTable(request: request);
    }

    // Test for getting table without node path.
    func testGetTableWithoutNodePath() throws {
      let remoteFileName = "TestGetTableWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetTableRequest(name: remoteFileName, index: 1, folder: remoteDataFolder);
      _ = try super.getApi().getTable(request: request);
    }

    // Test for deleting table.
    func testDeleteTable() throws {
      let remoteFileName = "TestDeleteTable.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteTableRequest(name: remoteFileName, index: 1, nodePath: "", folder: remoteDataFolder);
      try super.getApi().deleteTable(request: request);
    }

    // Test for deleting table without node path.
    func testDeleteTableWithoutNodePath() throws {
      let remoteFileName = "TestDeleteTableWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteTableRequest(name: remoteFileName, index: 1, folder: remoteDataFolder);
      try super.getApi().deleteTable(request: request);
    }

    // Test for adding table.
    func testInsertTable() throws {
      let remoteFileName = "TestInsertTable.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestTable = TableInsert();
      requestTable.setColumnsCount(columnsCount: 5);
      requestTable.setRowsCount(rowsCount: 4);


      let request = InsertTableRequest(name: remoteFileName, table: requestTable, nodePath: "", folder: remoteDataFolder);
      _ = try super.getApi().insertTable(request: request);
    }

    // Test for adding table without node path.
    func testInsertTableWithoutNodePath() throws {
      let remoteFileName = "TestInsertTableWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestTable = TableInsert();
      requestTable.setColumnsCount(columnsCount: 5);
      requestTable.setRowsCount(rowsCount: 4);


      let request = InsertTableRequest(name: remoteFileName, table: requestTable, folder: remoteDataFolder);
      _ = try super.getApi().insertTable(request: request);
    }

    // Test for getting document properties.
    func testGetTableProperties() throws {
      let remoteFileName = "TestGetTableProperties.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetTablePropertiesRequest(name: remoteFileName, index: 1, nodePath: "", folder: remoteDataFolder);
      _ = try super.getApi().getTableProperties(request: request);
    }

    // Test for getting document properties without node path.
    func testGetTablePropertiesWithoutNodePath() throws {
      let remoteFileName = "TestGetTablePropertiesWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetTablePropertiesRequest(name: remoteFileName, index: 1, folder: remoteDataFolder);
      _ = try super.getApi().getTableProperties(request: request);
    }

    // Test for updating table properties.
    func testUpdateTableProperties() throws {
      let remoteFileName = "TestUpdateTableProperties.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestProperties = TableProperties();
      requestProperties.setAlignment(alignment: TableProperties.Alignment._right);
      requestProperties.setAllowAutoFit(allowAutoFit: false);
      requestProperties.setBidi(bidi: true);
      requestProperties.setBottomPadding(bottomPadding: 1);
      requestProperties.setCellSpacing(cellSpacing: 2);
      requestProperties.setStyleOptions(styleOptions: TableProperties.StyleOptions.columnBands);


      let request = UpdateTablePropertiesRequest(name: remoteFileName, properties: requestProperties, index: 1, nodePath: "", folder: remoteDataFolder);
      _ = try super.getApi().updateTableProperties(request: request);
    }

    // Test for updating table properties without node path.
    func testUpdateTablePropertiesWithoutNodePath() throws {
      let remoteFileName = "TestUpdateTablePropertiesWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestProperties = TableProperties();
      requestProperties.setAlignment(alignment: TableProperties.Alignment._right);
      requestProperties.setAllowAutoFit(allowAutoFit: false);
      requestProperties.setBidi(bidi: true);
      requestProperties.setBottomPadding(bottomPadding: 1);
      requestProperties.setCellSpacing(cellSpacing: 2);
      requestProperties.setStyleOptions(styleOptions: TableProperties.StyleOptions.columnBands);


      let request = UpdateTablePropertiesRequest(name: remoteFileName, properties: requestProperties, index: 1, folder: remoteDataFolder);
      _ = try super.getApi().updateTableProperties(request: request);
    }

    // Test for getting table row.
    func testGetTableRow() throws {
      let remoteFileName = "TestGetTableRow.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetTableRowRequest(name: remoteFileName, tablePath: "tables/1", index: 0, folder: remoteDataFolder);
      _ = try super.getApi().getTableRow(request: request);
    }

    // Test for deleting table row.
    func testDeleteTableRow() throws {
      let remoteFileName = "TestDeleteTableRow.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteTableRowRequest(name: remoteFileName, tablePath: "tables/1", index: 0, folder: remoteDataFolder);
      try super.getApi().deleteTableRow(request: request);
    }

    // Test for adding row.
    func testInsertTableRow() throws {
      let remoteFileName = "TestInsertTableRow.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestRow = TableRowInsert();
      requestRow.setColumnsCount(columnsCount: 5);


      let request = InsertTableRowRequest(name: remoteFileName, row: requestRow, tablePath: "sections/0/tables/2", folder: remoteDataFolder);
      _ = try super.getApi().insertTableRow(request: request);
    }

    // Test for getting row format.
    func testGetTableRowFormat() throws {
      let remoteFileName = "TestGetTableRowFormat.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetTableRowFormatRequest(name: remoteFileName, tablePath: "sections/0/tables/2", index: 0, folder: remoteDataFolder);
      _ = try super.getApi().getTableRowFormat(request: request);
    }

    // Test updating row format.
    func testUpdateTableRowFormat() throws {
      let remoteFileName = "TestUpdateTableRowFormat.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestFormat = TableRowFormat();
      requestFormat.setAllowBreakAcrossPages(allowBreakAcrossPages: true);
      requestFormat.setHeadingFormat(headingFormat: true);
      requestFormat.setHeight(height: 10);
      requestFormat.setHeightRule(heightRule: TableRowFormat.HeightRule.auto);


      let request = UpdateTableRowFormatRequest(name: remoteFileName, format: requestFormat, tablePath: "sections/0/tables/2", index: 0, folder: remoteDataFolder);
      _ = try super.getApi().updateTableRowFormat(request: request);
    }

    // Test for getting table cell.
    func testGetTableCell() throws {
      let remoteFileName = "TestGetTableCell.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetTableCellRequest(name: remoteFileName, tableRowPath: "sections/0/tables/2/rows/0", index: 0, folder: remoteDataFolder);
      _ = try super.getApi().getTableCell(request: request);
    }

    // Test for deleting cell.
    func testDeleteTableCell() throws {
      let remoteFileName = "TestDeleteTableCell.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteTableCellRequest(name: remoteFileName, tableRowPath: "sections/0/tables/2/rows/0", index: 0, folder: remoteDataFolder);
      try super.getApi().deleteTableCell(request: request);
    }

    // Test for adding cell.
    func testInsertTableCell() throws {
      let remoteFileName = "TestInsertTableCell.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestCell = TableCellInsert();



      let request = InsertTableCellRequest(name: remoteFileName, cell: requestCell, tableRowPath: "sections/0/tables/2/rows/0", folder: remoteDataFolder);
      _ = try super.getApi().insertTableCell(request: request);
    }

    // Test for getting cell format.
    func testGetTableCellFormat() throws {
      let remoteFileName = "TestGetTableCellFormat.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetTableCellFormatRequest(name: remoteFileName, tableRowPath: "sections/0/tables/2/rows/0", index: 0, folder: remoteDataFolder);
      _ = try super.getApi().getTableCellFormat(request: request);
    }

    // Test for updating cell format.
    func testUpdateTableCellFormat() throws {
      let remoteFileName = "TestUpdateTableCellFormat.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let requestFormat = TableCellFormat();
      requestFormat.setBottomPadding(bottomPadding: 5);
      requestFormat.setFitText(fitText: true);
      requestFormat.setHorizontalMerge(horizontalMerge: TableCellFormat.HorizontalMerge.first);
      requestFormat.setWrapText(wrapText: true);


      let request = UpdateTableCellFormatRequest(name: remoteFileName, format: requestFormat, tableRowPath: "sections/0/tables/2/rows/0", index: 0, folder: remoteDataFolder);
      _ = try super.getApi().updateTableCellFormat(request: request);
    }

    // Test for table rendering.
    func testRenderTable() throws {
      let remoteFileName = "TestRenderTable.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = RenderTableRequest(name: remoteFileName, format: "png", index: 0, nodePath: "", folder: remoteDataFolder);
      _ = try super.getApi().renderTable(request: request);
    }

    // Test for table rendering without node path.
    func testRenderTableWithoutNodePath() throws {
      let remoteFileName = "TestRenderTableWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = RenderTableRequest(name: remoteFileName, format: "png", index: 0, folder: remoteDataFolder);
      _ = try super.getApi().renderTable(request: request);
    }
}
