let config = Configuration(clientId: "####-####-####-####-####", clientSecret: "##################");
let api = WordsAPI(configuration: config);
let requestReportEngineSettingsReportBuildOptions = [
  ReportBuildOptions.allowMissingMembers,
ReportBuildOptions.removeEmptyParagraphs
];
let requestReportEngineSettings = ReportEngineSettings()
  .setDataSourceType(dataSourceType: ReportEngineSettings.DataSourceType.json)
  .setReportBuildOptions(reportBuildOptions: requestReportEngineSettingsReportBuildOptions);
let buildReportRequest = BuildReportRequest(name: "Sample.docx", data: "Data.json", reportEngineSettings: requestReportEngineSettings);
_ = try api.buildReport(request: buildReportRequest);