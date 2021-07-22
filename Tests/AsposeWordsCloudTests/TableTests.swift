/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="TableTests.swift">
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

import XCTest
@testable import AsposeWordsCloud

// Example of how to work wtih table.
class TableTests: BaseTestContext {
    static var allTests = [
        ("testGetTables", testGetTables),
        ("testGetTablesOnline", testGetTablesOnline),
        ("testGetTablesWithoutNodePath", testGetTablesWithoutNodePath),
        ("testGetTable", testGetTable),
        ("testGetTableOnline", testGetTableOnline),
        ("testGetTableWithoutNodePath", testGetTableWithoutNodePath),
        ("testDeleteTable", testDeleteTable),
        ("testDeleteTableOnline", testDeleteTableOnline),
        ("testDeleteTableWithoutNodePath", testDeleteTableWithoutNodePath),
        ("testInsertTable", testInsertTable),
        ("testInsertTableOnline", testInsertTableOnline),
        ("testInsertTableWithoutNodePath", testInsertTableWithoutNodePath),
        ("testGetTableProperties", testGetTableProperties),
        ("testGetTablePropertiesOnline", testGetTablePropertiesOnline),
        ("testGetTablePropertiesWithoutNodePath", testGetTablePropertiesWithoutNodePath),
        ("testUpdateTableProperties", testUpdateTableProperties),
        ("testUpdateTablePropertiesOnline", testUpdateTablePropertiesOnline),
        ("testUpdateTablePropertiesWithoutNodePath", testUpdateTablePropertiesWithoutNodePath),
        ("testGetTableRow", testGetTableRow),
        ("testGetTableRowOnline", testGetTableRowOnline),
        ("testDeleteTableRow", testDeleteTableRow),
        ("testDeleteTableRowOnline", testDeleteTableRowOnline),
        ("testInsertTableRow", testInsertTableRow),
        ("testInsertTableRowOnline", testInsertTableRowOnline),
        ("testGetTableRowFormat", testGetTableRowFormat),
        ("testGetTableRowFormatOnline", testGetTableRowFormatOnline),
        ("testUpdateTableRowFormat", testUpdateTableRowFormat),
        ("testUpdateTableRowFormatOnline", testUpdateTableRowFormatOnline),
        ("testGetTableCell", testGetTableCell),
        ("testGetTableCellOnline", testGetTableCellOnline),
        ("testDeleteTableCell", testDeleteTableCell),
        ("testDeleteTableCellOnline", testDeleteTableCellOnline),
        ("testInsertTableCell", testInsertTableCell),
        ("testInsertTableCellOnline", testInsertTableCellOnline),
        ("testGetTableCellFormat", testGetTableCellFormat),
        ("testGetTableCellFormatOnline", testGetTableCellFormatOnline),
        ("testUpdateTableCellFormat", testUpdateTableCellFormat),
        ("testUpdateTableCellFormatOnline", testUpdateTableCellFormatOnline),
        ("testRenderTable", testRenderTable),
        ("testRenderTableOnline", testRenderTableOnline),
        ("testRenderTableWithoutNodePath", testRenderTableWithoutNodePath)
    ];

    let remoteDataFolder = BaseTestContext.getRemoteTestDataFolder() + "/DocumentElements/Tables";
    let localFile = "DocumentElements/Tables/TablesGet.docx";

    // Test for getting tables.
    func testGetTables() throws {
      let remoteFileName = "TestGetTables.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetTablesRequest(name: remoteFileName, nodePath: "", folder: remoteDataFolder);
      let actual = try super.getApi().getTables(request: request);
      XCTAssertNotNil(actual.getTables());
      XCTAssertNotNil(actual.getTables()!.getTableLinkList());
      XCTAssertEqual(actual.getTables()!.getTableLinkList()!.count, 5);
      XCTAssertEqual(actual.getTables()!.getTableLinkList()![0].getNodeId(), "0.0.1");
    }

    // Test for getting tables online.
    func testGetTablesOnline() throws {
      let request = GetTablesOnlineRequest(document: InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!, nodePath: "");
      _ = try super.getApi().getTablesOnline(request: request);
    }

    // Test for getting tables without node path.
    func testGetTablesWithoutNodePath() throws {
      let remoteFileName = "TestGetTablesWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetTablesRequest(name: remoteFileName, folder: remoteDataFolder);
      let actual = try super.getApi().getTables(request: request);
      XCTAssertNotNil(actual.getTables());
      XCTAssertNotNil(actual.getTables()!.getTableLinkList());
      XCTAssertEqual(actual.getTables()!.getTableLinkList()!.count, 5);
      XCTAssertEqual(actual.getTables()!.getTableLinkList()![0].getNodeId(), "0.0.1");
    }

    // Test for getting table.
    func testGetTable() throws {
      let remoteFileName = "TestGetTable.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetTableRequest(name: remoteFileName, index: 1, nodePath: "", folder: remoteDataFolder);
      let actual = try super.getApi().getTable(request: request);
      XCTAssertNotNil(actual.getTable());
      XCTAssertNotNil(actual.getTable()!.getTableRowList());
      XCTAssertEqual(actual.getTable()!.getTableRowList()!.count, 1);
      XCTAssertNotNil(actual.getTable()!.getTableRowList()![0].getTableCellList());
      XCTAssertEqual(actual.getTable()!.getTableRowList()![0].getTableCellList()!.count, 2);
    }

    // Test for getting table online.
    func testGetTableOnline() throws {
      let request = GetTableOnlineRequest(document: InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!, index: 1, nodePath: "");
      _ = try super.getApi().getTableOnline(request: request);
    }

    // Test for getting table without node path.
    func testGetTableWithoutNodePath() throws {
      let remoteFileName = "TestGetTableWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetTableRequest(name: remoteFileName, index: 1, folder: remoteDataFolder);
      let actual = try super.getApi().getTable(request: request);
      XCTAssertNotNil(actual.getTable());
      XCTAssertNotNil(actual.getTable()!.getTableRowList());
      XCTAssertEqual(actual.getTable()!.getTableRowList()!.count, 1);
      XCTAssertNotNil(actual.getTable()!.getTableRowList()![0].getTableCellList());
      XCTAssertEqual(actual.getTable()!.getTableRowList()![0].getTableCellList()!.count, 2);
    }

    // Test for deleting table.
    func testDeleteTable() throws {
      let remoteFileName = "TestDeleteTable.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteTableRequest(name: remoteFileName, index: 1, nodePath: "", folder: remoteDataFolder);
      try super.getApi().deleteTable(request: request);
    }

    // Test for deleting table online.
    func testDeleteTableOnline() throws {
      let request = DeleteTableOnlineRequest(document: InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!, index: 1, nodePath: "");
      _ = try super.getApi().deleteTableOnline(request: request);
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

      let table = TableInsert();
      table.setColumnsCount(columnsCount: 5);
      table.setRowsCount(rowsCount: 4);


      let request = InsertTableRequest(name: remoteFileName, table: table, nodePath: "", folder: remoteDataFolder);
      let actual = try super.getApi().insertTable(request: request);
      XCTAssertNotNil(actual.getTable());
      XCTAssertNotNil(actual.getTable()!.getTableRowList());
      XCTAssertEqual(actual.getTable()!.getTableRowList()!.count, 4);
      XCTAssertNotNil(actual.getTable()!.getTableRowList()![0].getTableCellList());
      XCTAssertEqual(actual.getTable()!.getTableRowList()![0].getTableCellList()!.count, 5);
    }

    // Test for adding table online.
    func testInsertTableOnline() throws {
      let table = TableInsert();
      table.setColumnsCount(columnsCount: 5);
      table.setRowsCount(rowsCount: 4);


      let request = InsertTableOnlineRequest(document: InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!, table: table, nodePath: "");
      _ = try super.getApi().insertTableOnline(request: request);
    }

    // Test for adding table without node path.
    func testInsertTableWithoutNodePath() throws {
      let remoteFileName = "TestInsertTableWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let table = TableInsert();
      table.setColumnsCount(columnsCount: 5);
      table.setRowsCount(rowsCount: 4);


      let request = InsertTableRequest(name: remoteFileName, table: table, folder: remoteDataFolder);
      let actual = try super.getApi().insertTable(request: request);
      XCTAssertNotNil(actual.getTable());
      XCTAssertNotNil(actual.getTable()!.getTableRowList());
      XCTAssertEqual(actual.getTable()!.getTableRowList()!.count, 4);
      XCTAssertNotNil(actual.getTable()!.getTableRowList()![0].getTableCellList());
      XCTAssertEqual(actual.getTable()!.getTableRowList()![0].getTableCellList()!.count, 5);
    }

    // Test for getting document properties.
    func testGetTableProperties() throws {
      let remoteFileName = "TestGetTableProperties.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetTablePropertiesRequest(name: remoteFileName, index: 1, nodePath: "", folder: remoteDataFolder);
      let actual = try super.getApi().getTableProperties(request: request);
      XCTAssertNotNil(actual.getProperties());
      XCTAssertEqual(actual.getProperties()!.getStyleName(), "Table Grid");
    }

    // Test for getting document properties online.
    func testGetTablePropertiesOnline() throws {
      let request = GetTablePropertiesOnlineRequest(document: InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!, index: 1, nodePath: "");
      _ = try super.getApi().getTablePropertiesOnline(request: request);
    }

    // Test for getting document properties without node path.
    func testGetTablePropertiesWithoutNodePath() throws {
      let remoteFileName = "TestGetTablePropertiesWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetTablePropertiesRequest(name: remoteFileName, index: 1, folder: remoteDataFolder);
      let actual = try super.getApi().getTableProperties(request: request);
      XCTAssertNotNil(actual.getProperties());
      XCTAssertEqual(actual.getProperties()!.getStyleName(), "Table Grid");
    }

    // Test for updating table properties.
    func testUpdateTableProperties() throws {
      let remoteFileName = "TestUpdateTableProperties.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let properties = TableProperties();
      properties.setAlignment(alignment: TableProperties.Alignment._right);
      properties.setAllowAutoFit(allowAutoFit: false);
      properties.setBidi(bidi: true);
      properties.setBottomPadding(bottomPadding: 1);
      properties.setCellSpacing(cellSpacing: 2.0);
      properties.setStyleOptions(styleOptions: TableProperties.StyleOptions.columnBands);


      let request = UpdateTablePropertiesRequest(name: remoteFileName, index: 1, properties: properties, nodePath: "", folder: remoteDataFolder);
      let actual = try super.getApi().updateTableProperties(request: request);
      XCTAssertNotNil(actual.getProperties());
      XCTAssertEqual(actual.getProperties()!.getAllowAutoFit(), false);
      XCTAssertEqual(actual.getProperties()!.getBidi(), true);
      XCTAssertEqual(actual.getProperties()!.getBottomPadding(), 1.0);
      XCTAssertEqual(actual.getProperties()!.getCellSpacing(), 2.0);
    }

    // Test for updating table properties online.
    func testUpdateTablePropertiesOnline() throws {
      let properties = TableProperties();
      properties.setAlignment(alignment: TableProperties.Alignment._right);
      properties.setAllowAutoFit(allowAutoFit: false);
      properties.setBidi(bidi: true);
      properties.setBottomPadding(bottomPadding: 1);
      properties.setCellSpacing(cellSpacing: 2);
      properties.setStyleOptions(styleOptions: TableProperties.StyleOptions.columnBands);


      let request = UpdateTablePropertiesOnlineRequest(document: InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!, properties: properties, index: 1, nodePath: "");
      _ = try super.getApi().updateTablePropertiesOnline(request: request);
    }

    // Test for updating table properties without node path.
    func testUpdateTablePropertiesWithoutNodePath() throws {
      let remoteFileName = "TestUpdateTablePropertiesWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let properties = TableProperties();
      properties.setAlignment(alignment: TableProperties.Alignment._right);
      properties.setAllowAutoFit(allowAutoFit: false);
      properties.setBidi(bidi: true);
      properties.setBottomPadding(bottomPadding: 1.0);
      properties.setCellSpacing(cellSpacing: 2.0);
      properties.setStyleOptions(styleOptions: TableProperties.StyleOptions.columnBands);


      let request = UpdateTablePropertiesRequest(name: remoteFileName, index: 1, properties: properties, folder: remoteDataFolder);
      let actual = try super.getApi().updateTableProperties(request: request);
      XCTAssertNotNil(actual.getProperties());
      XCTAssertEqual(actual.getProperties()!.getAllowAutoFit(), false);
      XCTAssertEqual(actual.getProperties()!.getBidi(), true);
      XCTAssertEqual(actual.getProperties()!.getBottomPadding(), 1.0);
      XCTAssertEqual(actual.getProperties()!.getCellSpacing(), 2.0);
    }

    // Test for getting table row.
    func testGetTableRow() throws {
      let remoteFileName = "TestGetTableRow.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetTableRowRequest(name: remoteFileName, tablePath: "tables/1", index: 0, folder: remoteDataFolder);
      let actual = try super.getApi().getTableRow(request: request);
      XCTAssertNotNil(actual.getRow());
      XCTAssertNotNil(actual.getRow()!.getTableCellList());
      XCTAssertEqual(actual.getRow()!.getTableCellList()!.count, 2);
    }

    // Test for getting table row online.
    func testGetTableRowOnline() throws {
      let request = GetTableRowOnlineRequest(document: InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!, tablePath: "tables/1", index: 0);
      _ = try super.getApi().getTableRowOnline(request: request);
    }

    // Test for deleting table row.
    func testDeleteTableRow() throws {
      let remoteFileName = "TestDeleteTableRow.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteTableRowRequest(name: remoteFileName, tablePath: "tables/1", index: 0, folder: remoteDataFolder);
      try super.getApi().deleteTableRow(request: request);
    }

    // Test for deleting table row online.
    func testDeleteTableRowOnline() throws {
      let request = DeleteTableRowOnlineRequest(document: InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!, tablePath: "tables/1", index: 0);
      _ = try super.getApi().deleteTableRowOnline(request: request);
    }

    // Test for adding row.
    func testInsertTableRow() throws {
      let remoteFileName = "TestInsertTableRow.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let row = TableRowInsert();
      row.setColumnsCount(columnsCount: 5);


      let request = InsertTableRowRequest(name: remoteFileName, tablePath: "sections/0/tables/2", row: row, folder: remoteDataFolder);
      let actual = try super.getApi().insertTableRow(request: request);
      XCTAssertNotNil(actual.getRow());
      XCTAssertNotNil(actual.getRow()!.getTableCellList());
      XCTAssertEqual(actual.getRow()!.getTableCellList()!.count, 5);
    }

    // Test for adding row online.
    func testInsertTableRowOnline() throws {
      let row = TableRowInsert();
      row.setColumnsCount(columnsCount: 5);


      let request = InsertTableRowOnlineRequest(document: InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!, tablePath: "sections/0/tables/2", row: row);
      _ = try super.getApi().insertTableRowOnline(request: request);
    }

    // Test for getting row format.
    func testGetTableRowFormat() throws {
      let remoteFileName = "TestGetTableRowFormat.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetTableRowFormatRequest(name: remoteFileName, tablePath: "sections/0/tables/2", index: 0, folder: remoteDataFolder);
      let actual = try super.getApi().getTableRowFormat(request: request);
      XCTAssertNotNil(actual.getRowFormat());
      XCTAssertEqual(actual.getRowFormat()!.getAllowBreakAcrossPages(), true);
    }

    // Test for getting row format online.
    func testGetTableRowFormatOnline() throws {
      let request = GetTableRowFormatOnlineRequest(document: InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!, tablePath: "sections/0/tables/2", index: 0);
      _ = try super.getApi().getTableRowFormatOnline(request: request);
    }

    // Test updating row format.
    func testUpdateTableRowFormat() throws {
      let remoteFileName = "TestUpdateTableRowFormat.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let format = TableRowFormat();
      format.setAllowBreakAcrossPages(allowBreakAcrossPages: true);
      format.setHeadingFormat(headingFormat: true);
      format.setHeight(height: 10.0);
      format.setHeightRule(heightRule: TableRowFormat.HeightRule.exactly);


      let request = UpdateTableRowFormatRequest(name: remoteFileName, tablePath: "sections/0/tables/2", index: 0, format: format, folder: remoteDataFolder);
      let actual = try super.getApi().updateTableRowFormat(request: request);
      XCTAssertNotNil(actual.getRowFormat());
      XCTAssertEqual(actual.getRowFormat()!.getAllowBreakAcrossPages(), true);
      XCTAssertEqual(actual.getRowFormat()!.getHeadingFormat(), true);
      XCTAssertEqual(actual.getRowFormat()!.getHeight(), 10.0);
    }

    // Test updating row format online.
    func testUpdateTableRowFormatOnline() throws {
      let format = TableRowFormat();
      format.setAllowBreakAcrossPages(allowBreakAcrossPages: true);
      format.setHeadingFormat(headingFormat: true);
      format.setHeight(height: 10);
      format.setHeightRule(heightRule: TableRowFormat.HeightRule.auto);


      let request = UpdateTableRowFormatOnlineRequest(document: InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!, tablePath: "sections/0/tables/2", format: format, index: 0);
      _ = try super.getApi().updateTableRowFormatOnline(request: request);
    }

    // Test for getting table cell.
    func testGetTableCell() throws {
      let remoteFileName = "TestGetTableCell.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetTableCellRequest(name: remoteFileName, tableRowPath: "sections/0/tables/2/rows/0", index: 0, folder: remoteDataFolder);
      let actual = try super.getApi().getTableCell(request: request);
      XCTAssertNotNil(actual.getCell());
      XCTAssertEqual(actual.getCell()!.getNodeId(), "0.0.5.0.0");
    }

    // Test for getting table cell online.
    func testGetTableCellOnline() throws {
      let request = GetTableCellOnlineRequest(document: InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!, tableRowPath: "sections/0/tables/2/rows/0", index: 0);
      _ = try super.getApi().getTableCellOnline(request: request);
    }

    // Test for deleting cell.
    func testDeleteTableCell() throws {
      let remoteFileName = "TestDeleteTableCell.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = DeleteTableCellRequest(name: remoteFileName, tableRowPath: "sections/0/tables/2/rows/0", index: 0, folder: remoteDataFolder);
      try super.getApi().deleteTableCell(request: request);
    }

    // Test for deleting cell online.
    func testDeleteTableCellOnline() throws {
      let request = DeleteTableCellOnlineRequest(document: InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!, tableRowPath: "sections/0/tables/2/rows/0", index: 0);
      _ = try super.getApi().deleteTableCellOnline(request: request);
    }

    // Test for adding cell.
    func testInsertTableCell() throws {
      let remoteFileName = "TestInsertTableCell.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let cell = TableCellInsert();



      let request = InsertTableCellRequest(name: remoteFileName, tableRowPath: "sections/0/tables/2/rows/0", cell: cell, folder: remoteDataFolder);
      let actual = try super.getApi().insertTableCell(request: request);
      XCTAssertNotNil(actual.getCell());
      XCTAssertEqual(actual.getCell()!.getNodeId(), "0.0.5.0.3");
    }

    // Test for adding cell online.
    func testInsertTableCellOnline() throws {
      let cell = TableCellInsert();



      let request = InsertTableCellOnlineRequest(document: InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!, tableRowPath: "sections/0/tables/2/rows/0", cell: cell);
      _ = try super.getApi().insertTableCellOnline(request: request);
    }

    // Test for getting cell format.
    func testGetTableCellFormat() throws {
      let remoteFileName = "TestGetTableCellFormat.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = GetTableCellFormatRequest(name: remoteFileName, tableRowPath: "sections/0/tables/2/rows/0", index: 0, folder: remoteDataFolder);
      let actual = try super.getApi().getTableCellFormat(request: request);
      XCTAssertNotNil(actual.getCellFormat());
      XCTAssertEqual(actual.getCellFormat()!.getWrapText(), true);
    }

    // Test for getting cell format online.
    func testGetTableCellFormatOnline() throws {
      let request = GetTableCellFormatOnlineRequest(document: InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!, tableRowPath: "sections/0/tables/2/rows/0", index: 0);
      _ = try super.getApi().getTableCellFormatOnline(request: request);
    }

    // Test for updating cell format.
    func testUpdateTableCellFormat() throws {
      let remoteFileName = "TestUpdateTableCellFormat.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let format = TableCellFormat();
      format.setBottomPadding(bottomPadding: 5.0);
      format.setFitText(fitText: true);
      format.setHorizontalMerge(horizontalMerge: TableCellFormat.HorizontalMerge.first);
      format.setWrapText(wrapText: true);


      let request = UpdateTableCellFormatRequest(name: remoteFileName, tableRowPath: "sections/0/tables/2/rows/0", index: 0, format: format, folder: remoteDataFolder);
      let actual = try super.getApi().updateTableCellFormat(request: request);
      XCTAssertNotNil(actual.getCellFormat());
      XCTAssertEqual(actual.getCellFormat()!.getBottomPadding(), 5.0);
      XCTAssertEqual(actual.getCellFormat()!.getFitText(), true);
      XCTAssertEqual(actual.getCellFormat()!.getWrapText(), true);
    }

    // Test for updating cell format online.
    func testUpdateTableCellFormatOnline() throws {
      let format = TableCellFormat();
      format.setBottomPadding(bottomPadding: 5);
      format.setFitText(fitText: true);
      format.setHorizontalMerge(horizontalMerge: TableCellFormat.HorizontalMerge.first);
      format.setWrapText(wrapText: true);


      let request = UpdateTableCellFormatOnlineRequest(document: InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!, tableRowPath: "sections/0/tables/2/rows/0", format: format, index: 0);
      _ = try super.getApi().updateTableCellFormatOnline(request: request);
    }

    // Test for table rendering.
    func testRenderTable() throws {
      let remoteFileName = "TestRenderTable.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = RenderTableRequest(name: remoteFileName, format: "png", index: 0, nodePath: "", folder: remoteDataFolder);
      _ = try super.getApi().renderTable(request: request);
    }

    // Test for table rendering.
    func testRenderTableOnline() throws {
      let request = RenderTableOnlineRequest(document: InputStream(url: self.getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false))!, format: "png", index: 0, nodePath: "");
      _ = try super.getApi().renderTableOnline(request: request);
    }

    // Test for table rendering without node path.
    func testRenderTableWithoutNodePath() throws {
      let remoteFileName = "TestRenderTableWithoutNodePath.docx";

      try super.uploadFile(fileContent: getLocalTestDataFolder().appendingPathComponent(localFile, isDirectory: false), path: remoteDataFolder + "/" + remoteFileName);

      let request = RenderTableRequest(name: remoteFileName, format: "png", index: 0, folder: remoteDataFolder);
      _ = try super.getApi().renderTable(request: request);
    }
}
