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
        /// </summary>
        [JsonProperty("domain")]
        public string Domain { get; set; }

        /// <summary>
        /// Limit the number of subdomains to detect
        /// </summary>
        [JsonProperty("limit")]
        public int? Limit { get; set; }

        /// <summary>
        /// Search the full wordlist instead of only certificate transparency and common names. Slower, and may still report complete: false when the time limit is reached
        /// </summary>
        [JsonProperty("deepScan")]
        public bool? DeepScan { get; set; }
    }
}
