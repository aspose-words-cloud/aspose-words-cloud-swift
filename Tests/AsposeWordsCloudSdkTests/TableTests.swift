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

    func testGetTableBorders() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestGetTableBorders.docx";
        let fullName = (getRemoteDataFolder(action: "GetTableBorders") + "/" + remoteName);
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetBordersRequest(remoteName, "tables/1/rows/0/cells/0", getRemoteDataFolder(action: "GetTableBorders"));
        let actual = super.getApi().getBorders(request);
    }
    

    func testGetTableBorder() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestGetTableBorder.docx";
        let fullName = (getRemoteDataFolder(action: "GetTableBorder") + "/" + remoteName);
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetBorderRequest(remoteName, "tables/1/rows/0/cells/0", "left", getRemoteDataFolder(action: "GetTableBorder"));
        let actual = super.getApi().getBorder(request);
    }
    

    func testDeleteTableBorders() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestDeleteTableBorders.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteTableBorders") + "/" + remoteName);
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = DeleteBordersRequest(remoteName, "tables/1/rows/0/cells/0", getRemoteDataFolder(action: "DeleteTableBorders"));
        let actual = super.getApi().deleteBorders(request);
    }
    

    func testDeleteTableBorder() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestDeleteTableBorder.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteTableBorder") + "/" + remoteName);
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = DeleteBorderRequest(remoteName, "tables/1/rows/0/cells/0", "left", getRemoteDataFolder(action: "DeleteTableBorder"));
        let actual = super.getApi().deleteBorder(request);
    }
    

    func testUpdateTableBorder() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestUpdateTableBorder.docx";
        let fullName = (getRemoteDataFolder(action: "UpdateTableBorder") + "/" + remoteName);
        let border = Border
                         {
                             BorderType = Border.BorderTypeEnum.Left,
                             Color = XmlColor { Alpha = 2 },
                             DistanceFromText = 6,
                             LineStyle = Border.LineStyleEnum.DashDotStroker,
                             LineWidth = 2,
                             Shadow = true
                         };
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = UpdateBorderRequest(remoteName, border, "tables/1/rows/0/cells/0", "left", getRemoteDataFolder(action: "UpdateTableBorder"));
        let actual = super.getApi().updateBorder(request);
    }

    func testGetTables() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestGetTables.docx";
        let fullName = (getRemoteDataFolder(action: "GetTables") + "/" + remoteName);
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetTablesRequest(remoteName, null, getRemoteDataFolder(action: "GetTables"));
        let actual = super.getApi().getTables(request);
    }
    

    func testGetTablesWithoutNodePath() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestGetTablesWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "GetTablesWithoutNodePath") + "/" + remoteName);
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetTablesWithoutNodePathRequest(remoteName, getRemoteDataFolder(action: "GetTablesWithoutNodePath"));
        let actual = super.getApi().getTablesWithoutNodePath(request);
    }
    

    func testGetTable() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestGetTable.docx";
        let fullName = (getRemoteDataFolder(action: "GetTable") + "/" + remoteName);
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetTableRequest(remoteName, null, 1, getRemoteDataFolder(action: "GetTable"));
        let actual = super.getApi().getTable(request);
    }
    

    func testGetTableWithoutNodePath() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestGetTableWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "GetTableWithoutNodePath") + "/" + remoteName);
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetTableWithoutNodePathRequest(remoteName, 1, getRemoteDataFolder(action: "GetTableWithoutNodePath"));
        let actual = super.getApi().getTableWithoutNodePath(request);
    }
    

    func testDeleteTable() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestDeleteTable.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteTable") + "/" + remoteName);
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = DeleteTableRequest(remoteName, null, 1, getRemoteDataFolder(action: "DeleteTable"));
        super.getApi().deleteTable(request);
    }
    

    func testDeleteTableWithoutNodePath() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestDeleteTableWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteTableWithoutNodePath") + "/" + remoteName);
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = DeleteTableWithoutNodePathRequest(remoteName, 1, getRemoteDataFolder(action: "DeleteTableWithoutNodePath"));
        super.getApi().deleteTableWithoutNodePath(request);
    }
    

    func testInsertTable() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestInsertTable.docx";
        let fullName = (getRemoteDataFolder(action: "InsertTable") + "/" + remoteName);
        let tableDto = TableInsert { ColumnsCount = 5, RowsCount = 4 };
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = InsertTableRequest(remoteName, null, getRemoteDataFolder(action: "InsertTable"), table: tableDto);
        let actual = super.getApi().insertTable(request);
    }
    

    func testInsertTableWithoutNodePath() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestInsertTableWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "InsertTableWithoutNodePath") + "/" + remoteName);
        let tableDto = TableInsert { ColumnsCount = 5, RowsCount = 4 };
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = InsertTableWithoutNodePathRequest(remoteName, getRemoteDataFolder(action: "InsertTableWithoutNodePath"), table: tableDto);
        let actual = super.getApi().insertTableWithoutNodePath(request);
    }
    

    func testGetTableProperties() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestGetTableProperties.docx";
        let fullName = (getRemoteDataFolder(action: "GetTableProperties") + "/" + remoteName);
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetTablePropertiesRequest(remoteName, null, 1, getRemoteDataFolder(action: "GetTableProperties"));
        let actual = super.getApi().getTableProperties(request);
    }
    

    func testGetTablePropertiesWithoutNodePath() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestGetTablePropertiesWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "GetTablePropertiesWithoutNodePath") + "/" + remoteName);
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetTablePropertiesWithoutNodePathRequest(remoteName, 1, getRemoteDataFolder(action: "GetTablePropertiesWithoutNodePath"));
        let actual = super.getApi().getTablePropertiesWithoutNodePath(request);
    }
    

    func testUpdateTableProperties() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestUpdateTableProperties.docx";
        let fullName = (getRemoteDataFolder(action: "UpdateTableProperties") + "/" + remoteName);
        let newProperties = TableProperties
                                {
                                    Alignment = TableProperties.AlignmentEnum.Right,
                                    AllowAutoFit = false,
                                    Bidi = true,
                                    BottomPadding = 1,
                                    CellSpacing = 2,
                                    LeftIndent = 3,
                                    LeftPadding = 4,
                                    RightPadding = 5,
                                    StyleOptions = TableProperties.StyleOptionsEnum.ColumnBands,
                                    TopPadding = 6
                                };
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = UpdateTablePropertiesRequest(remoteName, null, 1, getRemoteDataFolder(action: "UpdateTableProperties"), properties: newProperties);
        let actual = super.getApi().updateTableProperties(request);
    }
    

    func testUpdateTablePropertiesWithoutNodePath() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestUpdateTablePropertiesWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "UpdateTablePropertiesWithoutNodePath") + "/" + remoteName);
        let newProperties = TableProperties
        {
            Alignment = TableProperties.AlignmentEnum.Right,
            AllowAutoFit = false,
            Bidi = true,
            BottomPadding = 1,
            CellSpacing = 2,
            LeftIndent = 3,
            LeftPadding = 4,
            RightPadding = 5,
            StyleOptions = TableProperties.StyleOptionsEnum.ColumnBands,
            TopPadding = 6
        };
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = UpdateTablePropertiesWithoutNodePathRequest(remoteName, 1, getRemoteDataFolder(action: "UpdateTablePropertiesWithoutNodePath"), properties: newProperties);
        let actual = super.getApi().updateTablePropertiesWithoutNodePath(request);
    }
    

    func testGetTableRow() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestGetTableRow.docx";
        let fullName = (getRemoteDataFolder(action: "GetTableRow") + "/" + remoteName);
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetTableRowRequest(remoteName, "tables/1", 0, getRemoteDataFolder(action: "GetTableRow"));
        let actual = super.getApi().getTableRow(request);
    }
    

    func testDeleteTableRow() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestDeleteTableRow.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteTableRow") + "/" + remoteName);
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = DeleteTableRowRequest(remoteName, "tables/1", 0, getRemoteDataFolder(action: "DeleteTableRow"));
        super.getApi().deleteTableRow(request);
    }
    

    func testInsertTableRow() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestInsertTableRow.docx";
        let fullName = (getRemoteDataFolder(action: "InsertTableRow") + "/" + remoteName);
        let row = TableRowInsert { ColumnsCount = 5 };
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = InsertTableRowRequest(remoteName, "sections/0/tables/2", getRemoteDataFolder(action: "InsertTableRow"), row: row);
        let actual = super.getApi().insertTableRow(request);
    }
    

    func testGetTableRowFormat() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestGetTableRowFormat.docx";
        let fullName = (getRemoteDataFolder(action: "GetTableRowFormat") + "/" + remoteName);
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetTableRowFormatRequest(remoteName, "sections/0/tables/2", 0, getRemoteDataFolder(action: "GetTableRowFormat"));
        let actual = super.getApi().getTableRowFormat(request);
    }
    

    func testUpdateTableRowFormat() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestUpdateTableRowFormat.docx";
        let fullName = (getRemoteDataFolder(action: "UpdateTableRowFormat") + "/" + remoteName);
        let rowFormat = TableRowFormat { AllowBreakAcrossPages = true, HeadingFormat = true, Height = 10, HeightRule = TableRowFormat.HeightRuleEnum.Auto };
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = UpdateTableRowFormatRequest(remoteName, "sections/0/tables/2", 0, getRemoteDataFolder(action: "UpdateTableRowFormat"), format: rowFormat);
        let actual = super.getApi().updateTableRowFormat(request);
    }
    

    func testGetTableCell() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestGetTableCell.docx";
        let fullName = (getRemoteDataFolder(action: "GetTableCell") + "/" + remoteName);
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetTableCellRequest(remoteName, "sections/0/tables/2/rows/0", 0, getRemoteDataFolder(action: "GetTableCell"));
        let actual = super.getApi().getTableCell(request);
    }
    

    func testDeleteCell() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestDeleteCell.docx";
        let fullName = (getRemoteDataFolder(action: "DeleteCell") + "/" + remoteName);
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = DeleteTableCellRequest(remoteName, "sections/0/tables/2/rows/0", 0, getRemoteDataFolder(action: "DeleteCell"));
        super.getApi().deleteTableCell(request);
    }
    

    func testInsertTableCell() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestInsertTableCell.docx";
        let fullName = (getRemoteDataFolder(action: "InsertTableCell") + "/" + remoteName);
        let cell = TableCellInsert();
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = InsertTableCellRequest(remoteName, "sections/0/tables/2/rows/0", getRemoteDataFolder(action: "InsertTableCell"), cell: cell);
        let actual = super.getApi().insertTableCell(request);
    }
    

    func testGetTableCellFormat() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestGetTableCellFormat.docx";
        let fullName = (getRemoteDataFolder(action: "GetTableCellFormat") + "/" + remoteName);
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = GetTableCellFormatRequest(remoteName, "sections/0/tables/2/rows/0", 0, getRemoteDataFolder(action: "GetTableCellFormat"));
        let actual = super.getApi().getTableCellFormat(request);
    }
    

    func testUpdateTableCellFormat() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestUpdateTableCellFormat.docx";
        let fullName = (getRemoteDataFolder(action: "UpdateTableCellFormat") + "/" + remoteName);
        let cellFormat = TableCellFormat { BottomPadding = 5, FitText = true, HorizontalMerge = TableCellFormat.HorizontalMergeEnum.First, WrapText = true };
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = UpdateTableCellFormatRequest(remoteName, "sections/0/tables/2/rows/0", 0, getRemoteDataFolder(action: "UpdateTableCellFormat"), format: cellFormat);
        let actual = super.getApi().updateTableCellFormat(request);
    }
    

    func testRenderTable() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestRenderTable.docx";
        let fullName = (getRemoteDataFolder(action: "RenderTable") + "/" + remoteName);
        let index = 0;
        let format = "png";
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = RenderTableRequest(remoteName, format, null, index, getRemoteDataFolder(action: "RenderTable"));
        let actual = super.getApi().renderTable(request);
        Assert.IsTrue(actual.Length > 0, "Error has occurred while table rendering");
    }
    

    func testRenderTableWithoutNodePath() throws {
        let localName = "TablesGet.docx";
        let remoteName = "TestRenderTableWithoutNodePath.docx";
        let fullName = (getRemoteDataFolder(action: "RenderTableWithoutNodePath") + "/" + remoteName);
        let index = 0;
        let format = "png";
        super.uploadFile(path: fullName, fileContent: self.getLocalTestDataFolder().appendingPathComponent(this.tableFolder, isDirectory: true).appendingPathComponent(localName, isDirectory: false));
        let request = RenderTableWithoutNodePathRequest(remoteName, format, index, getRemoteDataFolder(action: "RenderTableWithoutNodePath"));
        let actual = super.getApi().renderTableWithoutNodePath(request);
        Assert.IsTrue(actual.Length > 0, "Error has occurred while table rendering");
    }
}
