declare module '@apiverve/subdomainfinder' {
  export interface subdomainfinderOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface subdomainfinderResponse {
    status: string;
    error: string | null;
    data: SubdomainFinderData;
    code?: number;
  }


  interface SubdomainFinderData {
      count:      number;
      rootDomain: RootDomain;
      subDomains: SubDomain[];
  }
  
  interface RootDomain {
      domain:  string;
      records: string[];
  }
  
  interface SubDomain {
      host:    string;
      records: string[];
  }

  export default class subdomainfinderWrapper {
    constructor(options: subdomainfinderOptions);

    execute(callback: (error: any, data: subdomainfinderResponse | null) => void): Promise<subdomainfinderResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: subdomainfinderResponse | null) => void): Promise<subdomainfinderResponse>;
    execute(query?: Record<string, any>): Promise<subdomainfinderResponse>;
  }
}
