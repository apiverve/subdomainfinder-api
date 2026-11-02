# Subdomain Finder API - Ruby Gem

Subdomain Finder discovers active subdomains and their resolved IP addresses for any target domain. It checks certificate transparency logs and common hostnames, returning matched hostnames, root A records, and scan completion status.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_subdomainfinder'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_subdomainfinder
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_subdomainfinder'

# Initialize the client
client = APIVerve::Subdomainfinder::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  domain: "google.com",
  limit: 10,
  deepScan: true
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ domain: "google.com", limit: 10, deepScan: true })
  puts response["data"]
rescue APIVerve::Subdomainfinder::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Subdomainfinder::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Subdomainfinder::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/subdomainfinder?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/subdomainfinder?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/subdomainfinder?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
