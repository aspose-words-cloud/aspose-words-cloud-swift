# Aspose.Words Cloud SDK for Swift
This repository contains Aspose.Words Cloud SDK for Swift source code. This SDK allows you to work with Aspose.Words Cloud REST APIs in your Swift applications quickly and easily, with zero initial cost.

[Aspose.Words Cloud](https://products.aspose.cloud/words/family "Aspose.Words Cloud")  
[API Reference](https://apireference.aspose.cloud/words/)  

## Key Features
* Conversion between various document-related formats (20+ formats supported), including PDF<->Word conversion
* Mail merge and reports generation 
* Splitting Word documents
* Accessing Word document metadata and statistics
* Find and replace
* Watermarks and protection
* Full read & write access to Document Object Model, including sections, paragraphs, text, images, tables, headers/footers and many others

## How to use the SDK?
The complete source code is available in this repository folder. You can either directly use it in your project via source code or add this repository as dependency (recommended). For more details, please visit our [documentation website](https://docs.aspose.cloud/display/wordscloud/Available+SDKs).

### Prerequisites
To use Aspose Words Cloud SDK for Swift you need to register an account with [Aspose Cloud](https://www.aspose.cloud/) and lookup/create App Key and SID at [Cloud Dashboard](https://dashboard.aspose.cloud/#/apps). There is free quota available. For more details, see [Aspose Cloud Pricing](https://purchase.aspose.cloud/pricing).

## Installation & Usage
Add link to this repository as dependency to your Package.swift:

```swift

dependencies: [
    // Dependencies declare other packages that this package depends on.
    .package(url: "https://github.com/aspose-words-cloud/aspose-words-cloud-swift", from: "20.4"),
],
targets: [
    // Targets are the basic building blocks of a package. A target can define a module or a test suite.
    // Targets can depend on other targets in this package, and on products in packages which this package depends on.
    .target(
        name: "YourTargetName",
        dependencies: ["AsposeWordsCloud"]
    ),
]

```

## Getting Started

```swift

import Foundation;
import AsposeWordsCloud;

let wordsApi = WordsAPI(appSid: "YOUR_APP_SID", appKey: "YOUR_APP_KEY");
let fileName = "TestCreateDocument.doc";
let request = CreateDocumentRequest(fileName: fileName);
let response = try wordsApi.createDocument(request: request);

```

[Test](Tests/AsposeWordsCloudTests) contain various examples of using the SDK.
Please put your credentials into "Settings/servercreds.json" for run tests.

## Dependencies
- Swift 4.2+
- referenced packages (see [here](Package.swift) for more details)

## Licensing
 
All Aspose.Words Cloud SDKs, helper scripts and templates are licensed under [MIT License](https://github.com/aspose-words-cloud/aspose-words-cloud-swift/blob/master/LICENSE). 

## Contact Us
Your feedback is very important to us. Please feel free to contact us using our [Support Forums](https://forum.aspose.cloud/c/words).

## Resources
 
[Website](https://www.aspose.cloud/)  
[Product Home](https://products.aspose.cloud/words/family)  
[API Reference](https://apireference.aspose.cloud/words/)  
[Documentation](https://docs.aspose.cloud/display/wordscloud/Home)  
[Blog](https://blog.aspose.cloud/category/words/)  
 
## Other languages
We generate our SDKs in different languages so you may check if yours is available in our [list](https://github.com/aspose-words-cloud).
 
If you don't find your language in the list, feel free to request it from us, or use raw REST API requests as you can find it [here](https://products.aspose.cloud/words/curl).
