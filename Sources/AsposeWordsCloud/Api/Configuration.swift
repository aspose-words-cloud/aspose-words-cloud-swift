/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="Configuration.swift">
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

// Represents a set of configuration settings
public class Configuration : Codable {
    // Aspose Cloud API base URL
    private var baseUrl : String;
    
    // Aspose Cloud API app sid
    private var appSid: String;
    
    // Aspose Cloud API app key
    private var appKey: String;
    
    // Indicating whether debug mode
    private var debugMode: Bool?;
    
    // Initialize new instance of Aspose Words configuration object with given parameters
    public init(appSid: String, appKey: String, baseUrl: String = "https://api.aspose.cloud", debugMode: Bool = false) {
        self.appSid = appSid;
        self.appKey = appKey;
        self.baseUrl = baseUrl;
        self.debugMode = debugMode;
    }
    
    // Returns Aspose Cloud API base URL
    public func getBaseUrl() -> String {
        return self.baseUrl;
    }
    
    // Returns Cloud API app sid
    public func getAppSid() -> String {
        return self.appSid;
    }
    
    // Returns Aspose Cloud API app key
    public func getAppKey() -> String {
        return self.appKey;
    }
    
    // Is debug mode enabled
    public func isDebugMode() -> Bool {
        return self.debugMode != nil ? self.debugMode! : false;
    }
    
    // Returns general version of cloud api
    public func getApiVersion() -> String {
        return "v4.0";
    }
    
    // Returns URL to Aspose Cloud API with remote API version
    public func getApiRootUrl() throws -> URL {
        let url = URL(string: self.getBaseUrl());
        if (url == nil) {
            throw WordsApiError.badHostAddress(hostName: self.getBaseUrl());
        }
        
        return url!.appendingPathComponent(self.getApiVersion());
    }
    
    // Returns SDK name for using in statistics headers
    public func getSdkName() -> String {
        return "swift sdk";
    }
    
    // Returns SDK version for using in statistics headers
    public func getSdkVersion() -> String {
        return "20.4";
    }
}
