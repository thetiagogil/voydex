// =============================================================================
// AUTH - Login/Register credentials
// =============================================================================

import type { Breadcrumb } from "./common";

export interface AuthCredentials {
  email: string;
  password: string;
}

// =============================================================================
// API RESPONSE - Standard service response wrapper
// =============================================================================

export interface ServiceResponse<T> {
  data: T | null;
  error: { message: string } | null;
}

export interface ServiceResponseWithBreadcrumbs<T> extends ServiceResponse<T> {
  breadcrumbs?: Breadcrumb[];
}
