let currentDir = ...
let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestReportEngineSettings = ReportEngineSettings();
requestReportEngineSettings.setDataSourceType(dataSourceType: ReportEngineSettings.DataSourceType.json);
requestReportEngineSettings.setDataSourceName(dataSourceName: "persons");
let buildReportRequest = BuildReportOnlineRequest(template: InputStream(url: currentDir!.appendingPathComponent("Sample.docx", isDirectory: false))!, data: "Data.json", reportEngineSettings: requestReportEngineSettings);
_ = try api.buildReportOnline(request: buildReportRequest);