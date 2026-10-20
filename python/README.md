Subdomain Finder API
============

Subdomain Finder discovers active subdomains and their resolved IP addresses for any target domain. It checks certificate transparency logs and common hostnames, returning matched hostnames, root A records, and scan completion status.


[![PyPI version](https://img.shields.io/pypi/v/apiverve-subdomainfinder.svg)](https://pypi.org/project/apiverve-subdomainfinder/)

This is a Python wrapper for the [Subdomain Finder API](https://apiverve.com/marketplace/subdomainfinder?utm_source=pypi&utm_medium=referral&utm_content=readme)

---

## Installation

Using `pip`:

```bash
pip install apiverve-subdomainfinder
```

Using `pip3`:

```bash
pip3 install apiverve-subdomainfinder
```

---

## Configuration

Before using the Subdomain Finder API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=pypi&utm_medium=referral&utm_content=readme)

---

## Quick Start

Here's a simple example to get you started quickly:

```python
from apiverve_subdomainfinder.apiClient import SubdomainfinderAPIClient

# Initialize the client with your APIVerve API key
api = SubdomainfinderAPIClient("[YOUR_API_KEY]")

query = {
    "domain": "google.com",
    "limit": 10,
    "deepScan": true
}

try:
    # Make the API call
    result = api.execute(query)

    # Print the result
    print(result)
except Exception as e:
    print(f"Error: {e}")
```

---

## Usage

The Subdomain Finder API documentation is found here: [https://docs.apiverve.com/ref/subdomainfinder](https://docs.apiverve.com/ref/subdomainfinder?utm_source=pypi&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```python
# Import the client module
from apiverve_subdomainfinder.apiClient import SubdomainfinderAPIClient

# Initialize the client with your APIVerve API key
api = SubdomainfinderAPIClient("[YOUR_API_KEY]")
```

---

## Perform Request

Using the API client, you can perform requests to the API.

###### Define Query

```python
query = {
    "domain": "google.com",
    "limit": 10,
    "deepScan": true
}
```

###### Simple Request

```python
# Make a request to the API
result = api.execute(query)

# Print the result
print(result)
```

###### Example Response

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
        ]
      },
      {
        "host": "mail.paypal.com",
        "records": [
          "159.127.187.12"
        ]
      },
      {
        "host": "admin.paypal.com",
        "records": [
          "173.0.88.10"
        ]
      },
      {
        "host": "smtp.paypal.com",
        "records": [
          "64.4.244.68"
        ]
      },
      {
        "host": "ns2.paypal.com",
        "records": [
          "64.4.244.71"
        ]
      },
      {
        "host": "test.paypal.com",
        "records": [
          "156.59.125.88"
        ]
      },
      {
        "host": "ns1.paypal.com",
        "records": [
          "64.4.244.70"
        ]
      },
      {
        "host": "mx.paypal.com",
        "records": [
          "10.190.3.55"
        ]
      },
      {
        "host": "demo.paypal.com",
        "records": [
          "151.101.1.21",
          "151.101.193.21",
          "151.101.129.21",
          "151.101.65.21"
        ]
      },
      {
        "host": "shop.paypal.com",
        "records": [
          "54.148.26.111",
          "35.80.170.143",
          "54.212.145.128"
        ]
      },
      {
        "host": "www.paypal.com",
        "records": [
          "151.101.193.21",
          "151.101.65.21",
          "151.101.129.21",
          "151.101.1.21"
        ]
      },
      {
        "host": "m.paypal.com",
        "records": [
          "151.101.129.21",
          "151.101.1.21",
          "151.101.193.21",
          "151.101.65.21"
        ]
      },
      {
        "host": "stage.paypal.com",
        "records": [
          "64.4.241.16"
        ]
      },
      {
        "host": "ssl.paypal.com",
        "records": [
          "151.101.65.21",
          "151.101.129.21",
          "151.101.193.21",
          "151.101.1.21"
        ]
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
        ]
      },
      {
        "host": "news.paypal.com",
        "records": [
          "192.243.228.1"
        ]
      },
      {
        "host": "autodiscover.paypal.com",
        "records": [
          "52.96.79.120",
          "52.96.79.200",
          "52.96.163.40",
          "52.96.79.248"
        ]
      },
      {
        "host": "dl.paypal.com",
        "records": [
          "216.113.188.115"
        ]
      },
      {
        "host": "connect.paypal.com",
        "records": [
          "151.101.65.21",
          "151.101.129.21",
          "151.101.1.21",
          "151.101.193.21"
        ]
      },
      {
        "host": "sandbox.paypal.com",
        "records": [
          "151.101.195.1",
          "162.159.141.96",
          "151.101.3.1"
        ]
      },
      {
        "host": "training.paypal.com",
        "records": [
          "64.4.254.252"
        ]
      },
      {
        "host": "c.paypal.com",
        "records": [
          "151.101.129.21",
          "151.101.65.21",
          "151.101.193.21",
          "151.101.1.21"
        ]
      },
      {
        "host": "business.paypal.com",
        "records": [
          "104.18.6.168",
          "104.18.7.168"
        ]
      },
      {
        "host": "service.paypal.com",
        "records": [
          "192.243.228.1"
        ]
      },
      {
        "host": "login.paypal.com",
        "records": []
      },
      {
        "host": "t.paypal.com",
        "records": [
          "151.101.3.1",
          "151.101.131.1",
          "151.101.67.1",
          "151.101.195.1"
        ]
      },
      {
        "host": "status.paypal.com",
        "records": [
          "20.69.68.249"
        ]
      },
      {
        "host": "shopping.paypal.com",
        "records": [
          "208.76.140.165"
        ]
      },
      {
        "host": "newsletter.paypal.com",
        "records": [
          "192.243.228.1"
        ]
      },
      {
        "host": "reports.paypal.com",
        "records": [
          "173.0.93.28"
        ]
      },
      {
        "host": "forms.paypal.com",
        "records": [
          "216.113.190.190"
        ]
      },
      {
        "host": "labs.paypal.com",
        "records": [
          "173.0.88.135"
        ]
      },
      {
        "host": "p.paypal.com",
        "records": [
          "151.101.131.1",
          "151.101.67.1",
          "151.101.195.1",
          "151.101.3.1"
        ]
      },
      {
        "host": "transfer.paypal.com",
        "records": [
          "151.101.193.21",
          "151.101.129.21",
          "151.101.65.21",
          "151.101.1.21"
        ]
      },
      {
        "host": "xmpp.paypal.com",
        "records": [
          "173.224.160.144",
          "173.224.160.141",
          "185.97.80.137",
          "185.97.80.136"
        ]
      },
      {
        "host": "manager.paypal.com",
        "records": [
          "173.0.93.191"
        ]
      },
      {
        "host": "developer.paypal.com",
        "records": [
          "151.101.1.21",
          "151.101.193.21",
          "151.101.129.21",
          "151.101.65.21"
        ]
      },
      {
        "host": "account.paypal.com",
        "records": [
          "192.243.228.1"
        ]
      },
      {
        "host": "history.paypal.com",
        "records": [
          "151.101.129.21",
          "151.101.193.21",
          "151.101.65.21",
          "151.101.1.21"
        ]
      },
      {
        "host": "pics.paypal.com",
        "records": [
          "151.101.131.1",
          "151.101.195.1",
          "151.101.67.1",
          "151.101.3.1"
        ]
      },
      {
        "host": "registration.paypal.com",
        "records": [
          "173.0.93.135"
        ]
      },
      {
        "host": "mcp.paypal.com",
        "records": [
          "104.18.7.170",
          "104.18.6.170"
        ]
      },
      {
        "host": "accounts.paypal.com",
        "records": [
          "173.0.93.28"
        ]
      },
      {
        "host": "hotspot.paypal.com",
        "records": [
          "64.4.240.12"
        ]
      },
      {
        "host": "bm.paypal.com",
        "records": [
          "130.211.16.153"
        ]
      },
      {
        "host": "rms.paypal.com",
        "records": [
          "173.0.82.166"
        ]
      },
      {
        "host": "cb.paypal.com",
        "records": [
          "173.0.88.142"
        ]
      }
    ],
    "count": 47,
    "totalFound": 47,
    "complete": true
  }
}
```

---

## Error Handling

The API client provides comprehensive error handling through the `SubdomainfinderAPIClientError` exception. Here are some examples:

### Basic Error Handling

```python
from apiverve_subdomainfinder.apiClient import SubdomainfinderAPIClient, SubdomainfinderAPIClientError

api = SubdomainfinderAPIClient("[YOUR_API_KEY]")

query = {
    "domain": "google.com",
    "limit": 10,
    "deepScan": true
}

try:
    result = api.execute(query)
    print("Success!")
    print(result)
except SubdomainfinderAPIClientError as e:
    print(f"API Error: {e.message}")
    if e.status_code:
        print(f"Status Code: {e.status_code}")
    if e.response:
        print(f"Response: {e.response}")
```

### Handling Specific Error Types

```python
from apiverve_subdomainfinder.apiClient import SubdomainfinderAPIClient, SubdomainfinderAPIClientError

api = SubdomainfinderAPIClient("[YOUR_API_KEY]")

query = {
    "domain": "google.com",
    "limit": 10,
    "deepScan": true
}

try:
    result = api.execute(query)

    # Check for successful response
    if result.get('status') == 'success':
        print("Request successful!")
        print(result.get('data'))
    else:
        print(f"API returned an error: {result.get('error')}")

except SubdomainfinderAPIClientError as e:
    # Handle API client errors
    if e.status_code == 401:
        print("Unauthorized: Invalid API key")
    elif e.status_code == 429:
        print("Rate limit exceeded")
    elif e.status_code >= 500:
        print("Server error - please try again later")
    else:
        print(f"API error: {e.message}")
except Exception as e:
    # Handle unexpected errors
    print(f"Unexpected error: {str(e)}")
```

### Using Context Manager (Recommended)

The client supports the context manager protocol for automatic resource cleanup:

```python
from apiverve_subdomainfinder.apiClient import SubdomainfinderAPIClient, SubdomainfinderAPIClientError

query = {
    "domain": "google.com",
    "limit": 10,
    "deepScan": true
}

# Using context manager ensures proper cleanup
with SubdomainfinderAPIClient("[YOUR_API_KEY]") as api:
    try:
        result = api.execute(query)
        print(result)
    except SubdomainfinderAPIClientError as e:
        print(f"Error: {e.message}")
# Session is automatically closed here
```

---

## Advanced Features

### Debug Mode

Enable debug logging to see detailed request and response information:

```python
from apiverve_subdomainfinder.apiClient import SubdomainfinderAPIClient

# Enable debug mode
api = SubdomainfinderAPIClient("[YOUR_API_KEY]", debug=True)

query = {
    "domain": "google.com",
    "limit": 10,
    "deepScan": true
}

# Debug information will be printed to console
result = api.execute(query)
```

### Manual Session Management

If you need to manually manage the session lifecycle:

```python
from apiverve_subdomainfinder.apiClient import SubdomainfinderAPIClient

api = SubdomainfinderAPIClient("[YOUR_API_KEY]")

query = {
    "domain": "google.com",
    "limit": 10,
    "deepScan": true
}

try:
    result = api.execute(query)
    print(result)
finally:
    # Manually close the session when done
    api.close()
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=pypi&utm_medium=referral&utm_content=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=pypi&utm_medium=referral&utm_content=readme) and all legal documents and agreements.

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
