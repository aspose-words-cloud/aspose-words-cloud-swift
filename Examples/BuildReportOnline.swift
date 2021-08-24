let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestTemplate = InputStream(url: URL(string: "Sample.docx"))!;
let requestReportEngineSettings = ReportEngineSettings()
  .setDataSourceName(dataSourceName: "persons")
  .setDataSourceType(dataSourceType: ReportEngineSettings.DataSourceType.json);
let buildReportRequest = BuildReportOnlineRequest(template: requestTemplate, data: "Data.json", reportEngineSettings: requestReportEngineSettings);
_ = try api.buildReportOnline(request: buildReportRequest);