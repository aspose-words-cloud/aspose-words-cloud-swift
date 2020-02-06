import XCTest
@testable import AsposeWordsCloudSdk

class TableTests: BaseTestContext {
    static var allTests = [
        ("testGetTableBorders", testGetTableBorders),
        ("testGetTableBorder", testGetTableBorder),
        ("testDeleteTableBorders", testDeleteTableBorders),
        ("testDeleteTableBorder", testDeleteTableBorder),
        ("testUpdateTableBorder", testUpdateTableBorder),
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
        ("testDeleteCell", testDeleteCell),
        ("testInsertTableCell", testInsertTableCell),
        ("testGetTableCellFormat", testGetTableCellFormat),
        ("testUpdateTableCellFormat", testUpdateTableCellFormat),
        ("testRenderTable", testRenderTable),
        ("testRenderTableWithoutNodePath", testRenderTableWithoutNodePath),
    ];

    func getRemoteDataFolder(action : String) -> String {
        return super.getRemoteTestDataFolder() + "Table/" + action;
    }
    
    private let tableFolder = "DocumentElements/Tables"

    func testGetTableBorders() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestGetTableBorders.docx";
        let fullName = (getRemoteDataFolder(action: "GetTableBorders") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetBordersRequest(name: remoteName, nodePath: "tables/1/rows/0/cells/0", folder: getRemoteDataFolder(action: "GetTableBorders"));
        let actual = try super.getApi().getBorders(request: request);
    }
    

    func testGetTableBorder() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestGetTableBorder.docx";
        let fullName = (getRemoteDataFolder(action: "GetTableBorder") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetBorderRequest(name: remoteName, nodePath: "tables/1/rows/0/cells/0", borderType: "left", folder: getRemoteDataFolder(action: "GetTableBorder"));
        let actual = try super.getApi().getBorder(request: request);
    }
    

    func testDeleteTableBorders() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestDeleteTableBorders.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteTableBorders") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = DeleteBordersRequest(name: remoteName, nodePath: "tables/1/rows/0/cells/0", folder: getRemoteDataFolder(action: "DeleteTableBorders"));
        let actual = try super.getApi().deleteBorders(request: request);
    }
    

    func testDeleteTableBorder() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestDeleteTableBorder.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteTableBorder") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = DeleteBorderRequest(name: remoteName, nodePath: "tables/1/rows/0/cells/0", borderType: "left", folder: getRemoteDataFolder(action: "DeleteTableBorder"));
        let actual = try super.getApi().deleteBorder(request: request);
    }
    

    func testUpdateTableBorder() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestUpdateTableBorder.docx";
        let fullName = (getRemoteDataFolder(action: "UpdateTableBorder") + "/" + remoteName);
        
        let color = XmlColor();
        color.setAlpha(alpha: 2);
        
        let border = Border();
        border.setBorderType(borderType: Border.BorderType._left);
        border.setColor(color: color);
        border.setDistanceFromText(distanceFromText: 6);
        border.setLineStyle(lineStyle: Border.LineStyle.dashDotStroker);
        border.setLineWidth(lineWidth: 2);
        border.setShadow(shadow: true);
        
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = UpdateBorderRequest(name: remoteName, borderProperties: border, nodePath: "tables/1/rows/0/cells/0", borderType: "left", folder: getRemoteDataFolder(action: "UpdateTableBorder"));
        let actual = try super.getApi().updateBorder(request: request);
    }

    func testGetTables() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestGetTables.docx";
        let fullName = (getRemoteDataFolder(action: "GetTables") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetTablesRequest(name: remoteName, nodePath: "", folder: getRemoteDataFolder(action: "GetTables"));
        let actual = try super.getApi().getTables(request: request);
    }
    

    func testGetTablesWithoutNodePath() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestGetTablesWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "GetTablesWithoutNodePath") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetTablesWithoutNodePathRequest(name: remoteName, folder: getRemoteDataFolder(action: "GetTablesWithoutNodePath"));
        let actual = try super.getApi().getTablesWithoutNodePath(request: request);
    }
    

    func testGetTable() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestGetTable.docx";
        let fullName = (getRemoteDataFolder(action: "GetTable") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetTableRequest(name: remoteName, nodePath: "", index: 1, folder: getRemoteDataFolder(action: "GetTable"));
        let actual = try super.getApi().getTable(request: request);
    }
    

    func testGetTableWithoutNodePath() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestGetTableWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "GetTableWithoutNodePath") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetTableWithoutNodePathRequest(name: remoteName, index: 1, folder: getRemoteDataFolder(action: "GetTableWithoutNodePath"));
        let actual = try super.getApi().getTableWithoutNodePath(request: request);
    }
    

    func testDeleteTable() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestDeleteTable.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteTable") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = DeleteTableRequest(name: remoteName, nodePath: "", index: 1, folder: getRemoteDataFolder(action: "DeleteTable"));
        try super.getApi().deleteTable(request: request);
    }
    

    func testDeleteTableWithoutNodePath() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestDeleteTableWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteTableWithoutNodePath") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = DeleteTableWithoutNodePathRequest(name: remoteName, index: 1, folder: getRemoteDataFolder(action: "DeleteTableWithoutNodePath"));
        try super.getApi().deleteTableWithoutNodePath(request: request);
    }
    

    func testInsertTable() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestInsertTable.docx";
        let fullName = (getRemoteDataFolder(action: "InsertTable") + "/" + remoteName);
        
        let tableDto = TableInsert();
        tableDto.setColumnsCount(columnsCount: 5);
        tableDto.setRowsCount(rowsCount: 4);
        
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = InsertTableRequest(name: remoteName, nodePath: "", folder: getRemoteDataFolder(action: "InsertTable"), table: tableDto);
        let actual = try super.getApi().insertTable(request: request);
    }
    

    func testInsertTableWithoutNodePath() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestInsertTableWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "InsertTableWithoutNodePath") + "/" + remoteName);
        
        let tableDto = TableInsert();
        tableDto.setColumnsCount(columnsCount: 5);
        tableDto.setRowsCount(rowsCount: 4);
        
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = InsertTableWithoutNodePathRequest(name: remoteName, folder: getRemoteDataFolder(action: "InsertTableWithoutNodePath"), table: tableDto);
        let actual = try super.getApi().insertTableWithoutNodePath(request: request);
    }
    

    func testGetTableProperties() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestGetTableProperties.docx";
        let fullName = (getRemoteDataFolder(action: "GetTableProperties") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetTablePropertiesRequest(name: remoteName, nodePath: "", index: 1, folder: getRemoteDataFolder(action: "GetTableProperties"));
        let actual = try super.getApi().getTableProperties(request: request);
    }
    

    func testGetTablePropertiesWithoutNodePath() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestGetTablePropertiesWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "GetTablePropertiesWithoutNodePath") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetTablePropertiesWithoutNodePathRequest(name: remoteName, index: 1, folder: getRemoteDataFolder(action: "GetTablePropertiesWithoutNodePath"));
        let actual = try super.getApi().getTablePropertiesWithoutNodePath(request: request);
    }
    

    func testUpdateTableProperties() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestUpdateTableProperties.docx";
        let fullName = (getRemoteDataFolder(action: "UpdateTableProperties") + "/" + remoteName);
        
        let newProperties = TableProperties();
        newProperties.setAlignment(alignment: TableProperties.Alignment._right);
        newProperties.setAllowAutoFit(allowAutoFit: false);
        newProperties.setBidi(bidi: true);
        newProperties.setBottomPadding(bottomPadding: 1);
        newProperties.setCellSpacing(cellSpacing: 2);
        newProperties.setLeftIndent(leftIndent: 3);
        newProperties.setLeftPadding(leftPadding: 4);
        newProperties.setRightPadding(rightPadding: 5);
        newProperties.setStyleOptions(styleOptions: TableProperties.StyleOptions.columnBands);
        newProperties.setTopPadding(topPadding: 6);
        
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = UpdateTablePropertiesRequest(name: remoteName, nodePath: "", index: 1, folder: getRemoteDataFolder(action: "UpdateTableProperties"), properties: newProperties);
        let actual = try super.getApi().updateTableProperties(request: request);
    }
    

    func testUpdateTablePropertiesWithoutNodePath() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestUpdateTablePropertiesWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "UpdateTablePropertiesWithoutNodePath") + "/" + remoteName);
        
        let newProperties = TableProperties();
        newProperties.setAlignment(alignment: TableProperties.Alignment._right);
        newProperties.setAllowAutoFit(allowAutoFit: false);
        newProperties.setBidi(bidi: true);
        newProperties.setBottomPadding(bottomPadding: 1);
        newProperties.setCellSpacing(cellSpacing: 2);
        newProperties.setLeftIndent(leftIndent: 3);
        newProperties.setLeftPadding(leftPadding: 4);
        newProperties.setRightPadding(rightPadding: 5);
        newProperties.setStyleOptions(styleOptions: TableProperties.StyleOptions.columnBands);
        newProperties.setTopPadding(topPadding: 6);
        
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = UpdateTablePropertiesWithoutNodePathRequest(name: remoteName, index: 1, folder: getRemoteDataFolder(action: "UpdateTablePropertiesWithoutNodePath"), properties: newProperties);
        let actual = try super.getApi().updateTablePropertiesWithoutNodePath(request: request);
    }
    

    func testGetTableRow() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestGetTableRow.docx";
        let fullName = (getRemoteDataFolder(action: "GetTableRow") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetTableRowRequest(name: remoteName, tablePath: "tables/1", index: 0, folder: getRemoteDataFolder(action: "GetTableRow"));
        let actual = try super.getApi().getTableRow(request: request);
    }
    

    func testDeleteTableRow() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestDeleteTableRow.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteTableRow") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = DeleteTableRowRequest(name: remoteName, tablePath: "tables/1", index: 0, folder: getRemoteDataFolder(action: "DeleteTableRow"));
        try super.getApi().deleteTableRow(request: request);
    }
    

    func testInsertTableRow() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestInsertTableRow.docx";
        let fullName = (getRemoteDataFolder(action: "InsertTableRow") + "/" + remoteName);
        
        let row = TableRowInsert();
        row.setColumnsCount(columnsCount: 5);
        
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = InsertTableRowRequest(name: remoteName, tablePath: "sections/0/tables/2", folder: getRemoteDataFolder(action: "InsertTableRow"), row: row);
        let actual = try super.getApi().insertTableRow(request: request);
    }
    

    func testGetTableRowFormat() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestGetTableRowFormat.docx";
        let fullName = (getRemoteDataFolder(action: "GetTableRowFormat") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetTableRowFormatRequest(name: remoteName, tablePath: "sections/0/tables/2", index: 0, folder: getRemoteDataFolder(action: "GetTableRowFormat"));
        let actual = try super.getApi().getTableRowFormat(request: request);
    }
    

    func testUpdateTableRowFormat() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestUpdateTableRowFormat.docx";
        let fullName = (getRemoteDataFolder(action: "UpdateTableRowFormat") + "/" + remoteName);
        
        let rowFormat = TableRowFormat();
        rowFormat.setAllowBreakAcrossPages(allowBreakAcrossPages: true)
        rowFormat.setHeadingFormat(headingFormat: true);
        rowFormat.setHeight(height: 10);
        rowFormat.setHeightRule(heightRule: TableRowFormat.HeightRule.auto);
        
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = UpdateTableRowFormatRequest(name: remoteName, tablePath: "sections/0/tables/2", index: 0, folder: getRemoteDataFolder(action: "UpdateTableRowFormat"), format: rowFormat);
        let actual = try super.getApi().updateTableRowFormat(request: request);
    }
    

    func testGetTableCell() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestGetTableCell.docx";
        let fullName = (getRemoteDataFolder(action: "GetTableCell") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetTableCellRequest(name: remoteName, tableRowPath: "sections/0/tables/2/rows/0", index: 0, folder: getRemoteDataFolder(action: "GetTableCell"));
        let actual = try super.getApi().getTableCell(request: request);
    }
    

    func testDeleteCell() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestDeleteCell.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteCell") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = DeleteTableCellRequest(name: remoteName, tableRowPath: "sections/0/tables/2/rows/0", index: 0, folder: getRemoteDataFolder(action: "DeleteCell"));
        try super.getApi().deleteTableCell(request: request);
    }
    

    func testInsertTableCell() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestInsertTableCell.docx";
        let fullName = (getRemoteDataFolder(action: "InsertTableCell") + "/" + remoteName);
        let cell = TableCellInsert();
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = InsertTableCellRequest(name: remoteName, tableRowPath: "sections/0/tables/2/rows/0", folder: getRemoteDataFolder(action: "InsertTableCell"), cell: cell);
        let actual = try super.getApi().insertTableCell(request: request);
    }
    

    func testGetTableCellFormat() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestGetTableCellFormat.docx";
        let fullName = (getRemoteDataFolder(action: "GetTableCellFormat") + "/" + remoteName);
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = GetTableCellFormatRequest(name: remoteName, tableRowPath: "sections/0/tables/2/rows/0", index: 0, folder: getRemoteDataFolder(action: "GetTableCellFormat"));
        let actual = try super.getApi().getTableCellFormat(request: request);
    }
    

    func testUpdateTableCellFormat() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestUpdateTableCellFormat.docx";
        let fullName = (getRemoteDataFolder(action: "UpdateTableCellFormat") + "/" + remoteName);
        
        let cellFormat = TableCellFormat();
        cellFormat.setBottomPadding(bottomPadding: 5);
        cellFormat.setFitText(fitText: true);
        cellFormat.setHorizontalMerge(horizontalMerge: TableCellFormat.HorizontalMerge.first);
        cellFormat.setWrapText(wrapText: true);
        
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = UpdateTableCellFormatRequest(name: remoteName, tableRowPath: "sections/0/tables/2/rows/0", index: 0, folder: getRemoteDataFolder(action: "UpdateTableCellFormat"), format: cellFormat);
        let actual = try super.getApi().updateTableCellFormat(request: request);
    }
    

    func testRenderTable() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestRenderTable.docx";
        let fullName = (getRemoteDataFolder(action: "RenderTable") + "/" + remoteName);
        let index = 0;
        let format = "png";
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = RenderTableRequest(name: remoteName, format: format, nodePath: "", index: index, folder: getRemoteDataFolder(action: "RenderTable"));
        let actual = try super.getApi().renderTable(request: request);
        XCTAssert(actual.count > 0, "Error has occurred while table rendering");
    }
    

    func testRenderTableWithoutNodePath() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestRenderTableWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "RenderTableWithoutNodePath") + "/" + remoteName);
        let index = 0;
        let format = "png";
        try super.uploadFile(fileContent: self.getLocalTestDataFolder().appendingPathComponent(tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false), path: fullName);
        let request = RenderTableWithoutNodePathRequest(name: remoteName, format: format, index: index, folder: getRemoteDataFolder(action: "RenderTableWithoutNodePath"));
        let actual = try super.getApi().renderTableWithoutNodePath(request: request);
        XCTAssert(actual.count > 0, "Error has occurred while table rendering");
    }
}
