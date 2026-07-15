declare module '@apiverve/subdomainfinder' {
  export interface subdomainfinderOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface subdomainfinderResponse {
    status: string;
    error: string | null;
    data: SubdomainFinderData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface SubdomainFinderData {
      rootDomain: RootDomain;
      subDomains: SubDomain[];
      count:      number | null;
      totalFound: number | null;
  }
  
  interface RootDomain {
      domain:  null | string;
      records: (null | string)[];
  }
  
  interface SubDomain {
      host:    null | string;
      records: (null | string)[];
  }

  export default class subdomainfinderWrapper {
    constructor(options: subdomainfinderOptions);

    execute(callback: (error: any, data: subdomainfinderResponse | null) => void): Promise<subdomainfinderResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: subdomainfinderResponse | null) => void): Promise<subdomainfinderResponse>;
    execute(query?: Record<string, any>): Promise<subdomainfinderResponse>;
  }
}
