Subdomain Finder API
============

Subdomain Finder discovers active subdomains and their resolved IP addresses for any target domain. It checks certificate transparency logs and common hostnames, returning matched hostnames, root A records, and scan completion status.


[![NuGet version](https://img.shields.io/nuget/v/APIVerve.API.SubdomainFinder.svg)](https://www.nuget.org/packages/APIVerve.API.SubdomainFinder)

This is a .NET wrapper for the [Subdomain Finder API](https://apiverve.com/marketplace/subdomainfinder?utm_source=nuget&utm_medium=referral&utm_content=readme)

---

## Installation

Using the .NET CLI:
```
dotnet add package APIVerve.API.SubdomainFinder
```

Using the Package Manager:
```
nuget install APIVerve.API.SubdomainFinder
```

Using the Package Manager Console:
```
Install-Package APIVerve.API.SubdomainFinder
```

From within Visual Studio:

1. Open the Solution Explorer
2. Right-click on a project within your solution
3. Click on Manage NuGet Packages
4. Click on the Browse tab and search for "APIVerve.API.SubdomainFinder"
5. Click on the APIVerve.API.SubdomainFinder package, select the appropriate version in the right-tab and click Install

---

## Configuration

Before using the Subdomain Finder API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=nuget&utm_medium=referral&utm_content=readme)

---

## Quick Start

Here's a simple example to get you started quickly:

```csharp
using System;
using APIVerve.API.SubdomainFinder;

class Program
{
    static async Task Main(string[] args)
    {
        // Initialize the API client
        var apiClient = new SubdomainFinderAPIClient("[YOUR_API_KEY]");

        var queryOptions = new SubdomainFinderQueryOptions {
            Domain = "google.com",
            Limit = 10,
            DeepScan = true
        };

        // Make the API call
        try
        {
            var response = await apiClient.ExecuteAsync(queryOptions);

            if (response.Error != null)
            {
                Console.WriteLine($"API Error: {response.Error}");
            }
            else
            {
                Console.WriteLine("Success!");
                // Access response data using the strongly-typed ResponseObj properties
                Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Exception: {ex.Message}");
        }
    }
}
```

---

## Usage

The Subdomain Finder API documentation is found here: [https://docs.apiverve.com/ref/subdomainfinder](https://docs.apiverve.com/ref/subdomainfinder?utm_source=nuget&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

###### Authentication
Subdomain Finder API uses API Key-based authentication. When you create an instance of the API client, you can pass your API Key as a parameter.

```csharp
// Create an instance of the API client
var apiClient = new SubdomainFinderAPIClient("[YOUR_API_KEY]");
```

---

## Usage Examples

### Basic Usage (Async/Await Pattern - Recommended)

The modern async/await pattern provides the best performance and code readability:

```csharp
using System;
using System.Threading.Tasks;
using APIVerve.API.SubdomainFinder;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new SubdomainFinderAPIClient("[YOUR_API_KEY]");

        var queryOptions = new SubdomainFinderQueryOptions {
            Domain = "google.com",
            Limit = 10,
            DeepScan = true
        };

        var response = await apiClient.ExecuteAsync(queryOptions);

        if (response.Error != null)
        {
            Console.WriteLine($"Error: {response.Error}");
        }
        else
        {
            Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
        }
    }
}
```

### Synchronous Usage

If you need to use synchronous code, you can use the `Execute` method:

```csharp
using System;
using APIVerve.API.SubdomainFinder;

public class Example
{
    public static void Main(string[] args)
    {
        var apiClient = new SubdomainFinderAPIClient("[YOUR_API_KEY]");

        var queryOptions = new SubdomainFinderQueryOptions {
            Domain = "google.com",
            Limit = 10,
            DeepScan = true
        };

        var response = apiClient.Execute(queryOptions);

        if (response.Error != null)
        {
            Console.WriteLine($"Error: {response.Error}");
        }
        else
        {
            Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
        }
    }
}
```

---

## Error Handling

The API client provides comprehensive error handling. Here are some examples:

### Handling API Errors

```csharp
using System;
using System.Threading.Tasks;
using APIVerve.API.SubdomainFinder;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new SubdomainFinderAPIClient("[YOUR_API_KEY]");

        var queryOptions = new SubdomainFinderQueryOptions {
            Domain = "google.com",
            Limit = 10,
            DeepScan = true
        };

        try
        {
            var response = await apiClient.ExecuteAsync(queryOptions);

            // Check for API-level errors
            if (response.Error != null)
            {
                Console.WriteLine($"API Error: {response.Error}");
                Console.WriteLine($"Status: {response.Status}");
                return;
            }

            // Success - use the data
            Console.WriteLine("Request successful!");
            Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
        }
        catch (ArgumentException ex)
        {
            // Invalid API key or parameters
            Console.WriteLine($"Invalid argument: {ex.Message}");
        }
        catch (System.Net.Http.HttpRequestException ex)
        {
            // Network or HTTP errors
            Console.WriteLine($"Network error: {ex.Message}");
        }
        catch (Exception ex)
        {
            // Other errors
            Console.WriteLine($"Unexpected error: {ex.Message}");
        }
    }
}
```

### Comprehensive Error Handling with Retry Logic

```csharp
using System;
using System.Threading.Tasks;
using APIVerve.API.SubdomainFinder;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new SubdomainFinderAPIClient("[YOUR_API_KEY]");

        // Configure retry behavior (max 3 retries)
        apiClient.SetMaxRetries(3);        // Retry up to 3 times (default: 0, max: 3)
        apiClient.SetRetryDelay(2000);     // Wait 2 seconds between retries

        var queryOptions = new SubdomainFinderQueryOptions {
            Domain = "google.com",
            Limit = 10,
            DeepScan = true
        };

        try
        {
            var response = await apiClient.ExecuteAsync(queryOptions);

            if (response.Error != null)
            {
                Console.WriteLine($"API Error: {response.Error}");
            }
            else
            {
                Console.WriteLine("Success!");
                Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Failed after retries: {ex.Message}");
        }
    }
}
```

---

## Advanced Features

### Custom Headers

Add custom headers to your requests:

```csharp
var apiClient = new SubdomainFinderAPIClient("[YOUR_API_KEY]");

// Add custom headers
apiClient.AddCustomHeader("X-Custom-Header", "custom-value");
apiClient.AddCustomHeader("X-Request-ID", Guid.NewGuid().ToString());

var queryOptions = new SubdomainFinderQueryOptions {
    Domain = "google.com",
    Limit = 10,
    DeepScan = true
};

var response = await apiClient.ExecuteAsync(queryOptions);

// Remove a header
apiClient.RemoveCustomHeader("X-Custom-Header");

// Clear all custom headers
apiClient.ClearCustomHeaders();
```

### Request Logging

Enable logging for debugging:

```csharp
var apiClient = new SubdomainFinderAPIClient("[YOUR_API_KEY]", isDebug: true);

// Or use a custom logger
apiClient.SetLogger(message =>
{
    Console.WriteLine($"[LOG] {DateTime.Now:yyyy-MM-dd HH:mm:ss} - {message}");
});

var queryOptions = new SubdomainFinderQueryOptions {
    Domain = "google.com",
    Limit = 10,
    DeepScan = true
};

var response = await apiClient.ExecuteAsync(queryOptions);
```

### Retry Configuration

Customize retry behavior for failed requests:

```csharp
var apiClient = new SubdomainFinderAPIClient("[YOUR_API_KEY]");

// Set retry options
apiClient.SetMaxRetries(3);           // Retry up to 3 times (default: 0, max: 3)
apiClient.SetRetryDelay(1500);        // Wait 1.5 seconds between retries (default: 1000ms)

var queryOptions = new SubdomainFinderQueryOptions {
    Domain = "google.com",
    Limit = 10,
    DeepScan = true
};

var response = await apiClient.ExecuteAsync(queryOptions);
```

### Dispose Pattern

The API client implements `IDisposable` for proper resource cleanup:

```csharp
var queryOptions = new SubdomainFinderQueryOptions {
    Domain = "google.com",
    Limit = 10,
    DeepScan = true
};

using (var apiClient = new SubdomainFinderAPIClient("[YOUR_API_KEY]"))
{
    var response = await apiClient.ExecuteAsync(queryOptions);
    Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
}
// HttpClient is automatically disposed here
```

---

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "rootDomain": {
      "domain": "paypal.com",
      "records": [
        "151.101.3.1",
        "151.101.195.1",
        "162.159.141.96"
      ]
    },
    "subDomains": [
      {
        "host": "api.paypal.com",
        "records": [
          "66.211.168.123"
        ],
        "source": "certificate",
        "firstSeen": "2008-11-03",
        "certificateExpires": "2020-08-14",
        "hostingProvider": null
      },
      {
        "host": "mail.paypal.com",
        "records": [
          "159.127.187.12"
        ],
        "source": "wordlist",
        "firstSeen": null,
        "certificateExpires": null,
        "hostingProvider": null
      },
      {
        "host": "admin.paypal.com",
        "records": [
          "173.0.88.10"
        ],
        "source": "certificate",
        "firstSeen": "2011-08-11",
        "certificateExpires": "2020-01-22",
        "hostingProvider": null
      },
      {
        "host": "smtp.paypal.com",
        "records": [
          "64.4.244.68"
        ],
        "source": "wordlist",
        "firstSeen": null,
        "certificateExpires": null,
        "hostingProvider": null
      },
      {
        "host": "ns2.paypal.com",
        "records": [
          "64.4.244.71"
        ],
        "source": "wordlist",
        "firstSeen": null,
        "certificateExpires": null,
        "hostingProvider": null
      },
      {
        "host": "test.paypal.com",
        "records": [
          "156.59.125.88"
        ],
        "source": "wordlist",
        "firstSeen": null,
        "certificateExpires": null,
        "hostingProvider": null
      },
      {
        "host": "ns1.paypal.com",
        "records": [
          "64.4.244.70"
        ],
        "source": "wordlist",
        "firstSeen": null,
        "certificateExpires": null,
        "hostingProvider": null
      },
      {
        "host": "mx.paypal.com",
        "records": [
          "10.190.3.55"
        ],
        "source": "wordlist",
        "firstSeen": null,
        "certificateExpires": null,
        "hostingProvider": null
      },
      {
        "host": "demo.paypal.com",
        "records": [
          "151.101.1.21",
          "151.101.193.21",
          "151.101.129.21",
          "151.101.65.21"
        ],
        "source": "certificate",
        "firstSeen": "2014-04-17",
        "certificateExpires": "2020-03-10",
        "hostingProvider": "Fastly"
      },
      {
        "host": "shop.paypal.com",
        "records": [
          "54.148.26.111",
          "35.80.170.143",
          "54.212.145.128"
        ],
        "source": "wordlist",
        "firstSeen": null,
        "certificateExpires": null,
        "hostingProvider": null
      },
      {
        "host": "www.paypal.com",
        "records": [
          "151.101.193.21",
          "151.101.65.21",
          "151.101.129.21",
          "151.101.1.21"
        ],
        "source": "certificate",
        "firstSeen": "2007-01-30",
        "certificateExpires": "2020-09-01",
        "hostingProvider": "Fastly"
      },
      {
        "host": "m.paypal.com",
        "records": [
          "151.101.129.21",
          "151.101.1.21",
          "151.101.193.21",
          "151.101.65.21"
        ],
        "source": "certificate",
        "firstSeen": "2009-07-28",
        "certificateExpires": "2020-06-19",
        "hostingProvider": "Fastly"
      },
      {
        "host": "stage.paypal.com",
        "records": [
          "64.4.241.16"
        ],
        "source": "wordlist",
        "firstSeen": null,
        "certificateExpires": null,
        "hostingProvider": null
      },
      {
        "host": "ssl.paypal.com",
        "records": [
          "151.101.65.21",
          "151.101.129.21",
          "151.101.193.21",
          "151.101.1.21"
        ],
        "source": "wordlist",
        "firstSeen": null,
        "certificateExpires": null,
        "hostingProvider": "Fastly"
      },
      {
        "host": "i.paypal.com",
        "records": [
          "63.140.38.107",
          "63.140.39.244",
          "63.140.39.114",
          "63.140.38.116",
          "63.140.39.254",
          "63.140.39.146",
          "63.140.38.213",
          "63.140.39.214",
          "63.140.39.87",
          "63.140.39.123"
        ],
        "source": "wordlist",
        "firstSeen": null,
        "certificateExpires": null,
        "hostingProvider": null
      },
      {
        "host": "news.paypal.com",
        "records": [
          "192.243.228.1"
        ],
        "source": "wordlist",
        "firstSeen": null,
        "certificateExpires": null,
        "hostingProvider": null
      },
      {
        "host": "autodiscover.paypal.com",
        "records": [
          "52.96.79.120",
          "52.96.79.200",
          "52.96.163.40",
          "52.96.79.248"
        ],
        "source": "certificate",
        "firstSeen": "2011-04-21",
        "certificateExpires": "2017-11-13",
        "hostingProvider": null
      },
      {
        "host": "dl.paypal.com",
        "records": [
          "216.113.188.115"
        ],
        "source": "certificate",
        "firstSeen": "2009-10-19",
        "certificateExpires": "2014-03-11",
        "hostingProvider": null
      },
      {
        "host": "connect.paypal.com",
        "records": [
          "151.101.65.21",
          "151.101.129.21",
          "151.101.1.21",
          "151.101.193.21"
        ],
        "source": "wordlist",
        "firstSeen": null,
        "certificateExpires": null,
        "hostingProvider": "Fastly"
      },
      {
        "host": "sandbox.paypal.com",
        "records": [
          "151.101.195.1",
          "162.159.141.96",
          "151.101.3.1"
        ],
        "source": "wordlist",
        "firstSeen": null,
        "certificateExpires": null,
        "hostingProvider": "Fastly"
      },
      {
        "host": "training.paypal.com",
        "records": [
          "64.4.254.252"
        ],
        "source": "wordlist",
        "firstSeen": null,
        "certificateExpires": null,
        "hostingProvider": null
      },
      {
        "host": "c.paypal.com",
        "records": [
          "151.101.129.21",
          "151.101.65.21",
          "151.101.193.21",
          "151.101.1.21"
        ],
        "source": "certificate",
        "firstSeen": "2014-02-19",
        "certificateExpires": "2020-08-18",
        "hostingProvider": "Fastly"
      },
      {
        "host": "business.paypal.com",
        "records": [
          "104.18.6.168",
          "104.18.7.168"
        ],
        "source": "certificate",
        "firstSeen": "2008-07-17",
        "certificateExpires": "2019-05-29",
        "hostingProvider": null
      },
      {
        "host": "service.paypal.com",
        "records": [
          "192.243.228.1"
        ],
        "source": "wordlist",
        "firstSeen": null,
        "certificateExpires": null,
        "hostingProvider": null
      },
      {
        "host": "login.paypal.com",
        "records": [],
        "source": "certificate",
        "firstSeen": "2019-06-27",
        "certificateExpires": "2020-08-18",
        "hostingProvider": null
      },
      {
        "host": "t.paypal.com",
        "records": [
          "151.101.3.1",
          "151.101.131.1",
          "151.101.67.1",
          "151.101.195.1"
        ],
        "source": "certificate",
        "firstSeen": "2012-04-26",
        "certificateExpires": "2020-08-18",
        "hostingProvider": "Fastly"
      },
      {
        "host": "status.paypal.com",
        "records": [
          "20.69.68.249"
        ],
        "source": "certificate",
        "firstSeen": "2017-07-28",
        "certificateExpires": "2019-08-02",
        "hostingProvider": null
      },
      {
        "host": "shopping.paypal.com",
        "records": [
          "208.76.140.165"
        ],
        "source": "certificate",
        "firstSeen": "2009-11-12",
        "certificateExpires": "2019-02-06",
        "hostingProvider": null
      },
      {
        "host": "newsletter.paypal.com",
        "records": [
          "192.243.228.1"
        ],
        "source": "wordlist",
        "firstSeen": null,
        "certificateExpires": null,
        "hostingProvider": null
      },
      {
        "host": "reports.paypal.com",
        "records": [
          "173.0.93.28"
        ],
        "source": "wordlist",
        "firstSeen": null,
        "certificateExpires": null,
        "hostingProvider": null
      },
      {
        "host": "forms.paypal.com",
        "records": [
          "216.113.190.190"
        ],
        "source": "certificate",
        "firstSeen": "2009-09-10",
        "certificateExpires": "2011-10-01",
        "hostingProvider": null
      },
      {
        "host": "labs.paypal.com",
        "records": [
          "173.0.88.135"
        ],
        "source": "wordlist",
        "firstSeen": null,
        "certificateExpires": null,
        "hostingProvider": null
      },
      {
        "host": "p.paypal.com",
        "records": [
          "151.101.131.1",
          "151.101.67.1",
          "151.101.195.1",
          "151.101.3.1"
        ],
        "source": "certificate",
        "firstSeen": "2016-02-02",
        "certificateExpires": "2020-08-18",
        "hostingProvider": "Fastly"
      },
      {
        "host": "transfer.paypal.com",
        "records": [
          "151.101.193.21",
          "151.101.129.21",
          "151.101.65.21",
          "151.101.1.21"
        ],
        "source": "wordlist",
        "firstSeen": null,
        "certificateExpires": null,
        "hostingProvider": "Fastly"
      },
      {
        "host": "xmpp.paypal.com",
        "records": [
          "173.224.160.144",
          "173.224.160.141",
          "185.97.80.137",
          "185.97.80.136"
        ],
        "source": "wordlist",
        "firstSeen": null,
        "certificateExpires": null,
        "hostingProvider": null
      },
      {
        "host": "manager.paypal.com",
        "records": [
          "173.0.93.191"
        ],
        "source": "certificate",
        "firstSeen": "2009-01-06",
        "certificateExpires": "2020-01-24",
        "hostingProvider": null
      },
      {
        "host": "developer.paypal.com",
        "records": [
          "151.101.1.21",
          "151.101.193.21",
          "151.101.129.21",
          "151.101.65.21"
        ],
        "source": "certificate",
        "firstSeen": "2009-02-20",
        "certificateExpires": "2020-09-29",
        "hostingProvider": "Fastly"
      },
      {
        "host": "account.paypal.com",
        "records": [
          "192.243.228.1"
        ],
        "source": "wordlist",
        "firstSeen": null,
        "certificateExpires": null,
        "hostingProvider": null
      },
      {
        "host": "history.paypal.com",
        "records": [
          "151.101.129.21",
          "151.101.193.21",
          "151.101.65.21",
          "151.101.1.21"
        ],
        "source": "certificate",
        "firstSeen": "2009-01-09",
        "certificateExpires": "2020-08-26",
        "hostingProvider": "Fastly"
      },
      {
        "host": "pics.paypal.com",
        "records": [
          "151.101.131.1",
          "151.101.195.1",
          "151.101.67.1",
          "151.101.3.1"
        ],
        "source": "certificate",
        "firstSeen": "2012-03-30",
        "certificateExpires": "2020-08-10",
        "hostingProvider": "Fastly"
      },
      {
        "host": "registration.paypal.com",
        "records": [
          "173.0.93.135"
        ],
        "source": "certificate",
        "firstSeen": "2006-07-22",
        "certificateExpires": "2020-01-24",
        "hostingProvider": null
      },
      {
        "host": "mcp.paypal.com",
        "records": [
          "104.18.7.170",
          "104.18.6.170"
        ],
        "source": "wordlist",
        "firstSeen": null,
        "certificateExpires": null,
        "hostingProvider": null
      },
      {
        "host": "accounts.paypal.com",
        "records": [
          "173.0.93.28"
        ],
        "source": "wordlist",
        "firstSeen": null,
        "certificateExpires": null,
        "hostingProvider": null
      },
      {
        "host": "hotspot.paypal.com",
        "records": [
          "64.4.240.12"
        ],
        "source": "certificate",
        "firstSeen": "2016-11-10",
        "certificateExpires": "2018-11-14",
        "hostingProvider": null
      },
      {
        "host": "bm.paypal.com",
        "records": [
          "130.211.16.153"
        ],
        "source": "wordlist",
        "firstSeen": null,
        "certificateExpires": null,
        "hostingProvider": null
      },
      {
        "host": "rms.paypal.com",
        "records": [
          "173.0.82.166"
        ],
        "source": "certificate",
        "firstSeen": "2015-06-17",
        "certificateExpires": "2020-01-24",
        "hostingProvider": null
      },
      {
        "host": "cb.paypal.com",
        "records": [
          "173.0.88.142"
        ],
        "source": "certificate",
        "firstSeen": "2015-10-15",
        "certificateExpires": "2017-10-19",
        "hostingProvider": null
      }
    ],
    "count": 47,
    "totalFound": 47,
    "complete": true,
    "hasWildcard": false
  }
}
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=nuget&utm_medium=referral&utm_content=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=nuget&utm_medium=referral&utm_content=readme) and all legal documents and agreements.

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
