using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.SubdomainFinder
{
    /// <summary>
    /// Query options for the Subdomain Finder API
    /// </summary>
    public class SubdomainFinderQueryOptions
    {
        /// <summary>
        /// The domain you want to find all the available subdomains for (e.g. google.com)
        /// Example: google.com
        /// </summary>
        [JsonProperty("domain")]
        public string Domain { get; set; }
    }
}
