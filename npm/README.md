# Subdomain Finder API

Subdomain Finder is a simple tool for finding all the available subdomains for a given domain. It returns a list of all the available subdomains for the given domain.

![Build Status](https://img.shields.io/badge/build-passing-green)
![Code Climate](https://img.shields.io/badge/maintainability-B-purple)
![Prod Ready](https://img.shields.io/badge/production-ready-blue)

This is a Javascript Wrapper for the [Subdomain Finder API](https://apiverve.com/marketplace/subdomainfinder)

---

## Installation

Using npm:
```shell
npm install @apiverve/subdomainfinder
```

Using yarn:
```shell
yarn add @apiverve/subdomainfinder
```

---

## Configuration

Before using the Subdomain Finder API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com)

---

## Quick Start

[Get started with the Quick Start Guide](https://docs.apiverve.com/quickstart)

The Subdomain Finder API documentation is found here: [https://docs.apiverve.com/ref/subdomainfinder](https://docs.apiverve.com/ref/subdomainfinder).
You can find parameters, example responses, and status codes documented here.

### Setup

```javascript
const subdomainfinderAPI = require('@apiverve/subdomainfinder');
const api = new subdomainfinderAPI({
    api_key: '[YOUR_API_KEY]'
});
```

---

## Usage

---

### Perform Request

Using the API is simple. All you have to do is make a request. The API will return a response with the data you requested.

```javascript
var query = {
  domain: "google.com"
};

api.execute(query, function (error, data) {
    if (error) {
        return console.error(error);
    } else {
        console.log(data);
    }
});
```

---

### Using Promises

You can also use promises to make requests. The API returns a promise that you can use to handle the response.

```javascript
var query = {
  domain: "google.com"
};

api.execute(query)
    .then(data => {
        console.log(data);
    })
    .catch(error => {
        console.error(error);
    });
```

---

### Using Async/Await

You can also use async/await to make requests. The API returns a promise that you can use to handle the response.

```javascript
async function makeRequest() {
    var query = {
  domain: "google.com"
};

    try {
        const data = await api.execute(query);
        console.log(data);
    } catch (error) {
        console.error(error);
    }
}
```

---

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "count": 54,
    "rootDomain": {
      "domain": "paypal.com",
      "records": [
        "151.101.3.1",
        "162.159.141.96",
        "151.101.195.1"
      ]
    },
    "subDomains": [
      {
        "host": "smtp.paypal.com",
        "records": [
          "64.4.244.68"
        ]
      },
      {
        "host": "ns1.paypal.com",
        "records": [
          "64.4.244.70"
        ]
      },
      {
        "host": "www.paypal.com",
        "records": [
          "151.101.193.21",
          "151.101.129.21",
          "151.101.1.21",
          "151.101.65.21"
        ]
      },
      {
        "host": "ns2.paypal.com",
        "records": [
          "64.4.244.71"
        ]
      },
      {
        "host": "autodiscover.paypal.com",
        "records": [
          "52.96.191.8",
          "52.96.79.200",
          "52.96.239.184",
          "52.96.156.24"
        ]
      },
      {
        "host": "test.paypal.com",
        "records": [
          "156.59.125.88"
        ]
      },
      {
        "host": "admin.paypal.com",
        "records": [
          "173.0.88.10"
        ]
      },
      {
        "host": "mx.paypal.com",
        "records": [
          "10.190.3.55"
        ]
      },
      {
        "host": "m.paypal.com",
        "records": [
          "151.101.193.21",
          "151.101.1.21",
          "151.101.129.21",
          "151.101.65.21"
        ]
      },
      {
        "host": "mail.paypal.com",
        "records": [
          "159.127.187.12"
        ]
      },
      {
        "host": "api.paypal.com",
        "records": [
          "66.211.168.123"
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
        "host": "news.paypal.com",
        "records": [
          "192.243.228.1"
        ]
      },
      {
        "host": "stage.paypal.com",
        "records": [
          "64.4.241.16"
        ]
      },
      {
        "host": "login.paypal.com",
        "records": []
      },
      {
        "host": "dl.paypal.com",
        "records": [
          "216.113.188.115"
        ]
      },
      {
        "host": "i.paypal.com",
        "records": [
          "63.140.39.240",
          "63.140.38.55",
          "63.140.39.72",
          "63.140.39.35",
          "63.140.39.22",
          "63.140.38.210",
          "63.140.38.138",
          "63.140.38.111",
          "63.140.39.117",
          "63.140.39.15"
        ]
      },
      {
        "host": "ssl.paypal.com",
        "records": [
          "151.101.129.21",
          "151.101.1.21",
          "151.101.65.21",
          "151.101.193.21"
        ]
      },
      {
        "host": "service.paypal.com",
        "records": [
          "192.243.228.1"
        ]
      },
      {
        "host": "connect.paypal.com",
        "records": [
          "151.101.129.21",
          "151.101.1.21",
          "151.101.193.21",
          "151.101.65.21"
        ]
      },
      {
        "host": "sandbox.paypal.com",
        "records": [
          "151.101.195.1",
          "151.101.3.1",
          "162.159.141.96"
        ]
      },
      {
        "host": "reports.paypal.com",
        "records": [
          "173.0.93.28"
        ]
      },
      {
        "host": "t.paypal.com",
        "records": [
          "151.101.131.1",
          "151.101.67.1",
          "151.101.3.1",
          "151.101.195.1"
        ]
      },
      {
        "host": "training.paypal.com",
        "records": [
          "64.4.254.252"
        ]
      },
      {
        "host": "status.paypal.com",
        "records": [
          "20.69.68.249"
        ]
      },
      {
        "host": "forms.paypal.com",
        "records": [
          "216.113.190.190"
        ]
      },
      {
        "host": "shopping.paypal.com",
        "records": [
          "208.76.140.165"
        ]
      },
      {
        "host": "business.paypal.com",
        "records": [
          "151.101.1.21",
          "151.101.129.21",
          "151.101.65.21",
          "151.101.193.21"
        ]
      },
      {
        "host": "c.paypal.com",
        "records": [
          "151.101.129.21",
          "151.101.1.21",
          "151.101.65.21",
          "151.101.193.21"
        ]
      },
      {
        "host": "p.paypal.com",
        "records": [
          "151.101.67.1",
          "151.101.3.1",
          "151.101.131.1",
          "151.101.195.1"
        ]
      },
      {
        "host": "labs.paypal.com",
        "records": [
          "173.0.88.135"
        ]
      },
      {
        "host": "manager.paypal.com",
        "records": [
          "173.0.93.191"
        ]
      },
      {
        "host": "xmpp.paypal.com",
        "records": [
          "173.224.160.141",
          "185.97.80.136",
          "173.224.160.144",
          "185.97.80.137"
        ]
      },
      {
        "host": "developer.paypal.com",
        "records": [
          "151.101.65.21",
          "151.101.1.21",
          "151.101.193.21",
          "151.101.129.21"
        ]
      },
      {
        "host": "transfer.paypal.com",
        "records": [
          "151.101.129.21",
          "151.101.1.21",
          "151.101.193.21",
          "151.101.65.21"
        ]
      },
      {
        "host": "pics.paypal.com",
        "records": [
          "151.101.195.1",
          "151.101.131.1",
          "151.101.67.1",
          "151.101.3.1"
        ]
      },
      {
        "host": "accounts.paypal.com",
        "records": [
          "173.0.93.28"
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
        "host": "history.paypal.com",
        "records": [
          "151.101.193.21",
          "151.101.1.21",
          "151.101.129.21",
          "151.101.65.21"
        ]
      },
      {
        "host": "registration.paypal.com",
        "records": [
          "173.0.93.135"
        ]
      },
      {
        "host": "bm.paypal.com",
        "records": [
          "130.211.16.153"
        ]
      },
      {
        "host": "hotspot.paypal.com",
        "records": [
          "64.4.240.12"
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
      },
      {
        "host": "sip2.paypal.com",
        "records": [
          "64.68.79.227"
        ]
      },
      {
        "host": "credit.paypal.com",
        "records": [
          "159.127.187.12"
        ]
      },
      {
        "host": "smtp-in.paypal.com",
        "records": [
          "64.4.244.68"
        ]
      },
      {
        "host": "solutions.paypal.com",
        "records": [
          "173.0.88.143"
        ]
      },
      {
        "host": "emails.paypal.com",
        "records": [
          "13.111.204.15"
        ]
      },
      {
        "host": "notify.paypal.com",
        "records": [
          "173.0.81.33",
          "173.0.81.65",
          "173.0.81.140",
          "173.0.81.1"
        ]
      },
      {
        "host": "sip1.paypal.com",
        "records": [
          "64.68.79.226"
        ]
      },
      {
        "host": "gadget.paypal.com",
        "records": [
          "173.0.94.17"
        ]
      },
      {
        "host": "av2.paypal.com",
        "records": [
          "64.68.79.231"
        ]
      },
      {
        "host": "av1.paypal.com",
        "records": [
          "64.68.79.230"
        ]
      }
    ]
  }
}
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact).

---

## Updates

Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms) and all legal documents and agreements.

---

## License
Licensed under the The MIT License (MIT)

Copyright (&copy;) 2025 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
