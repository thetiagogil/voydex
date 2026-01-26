// =============================================================================
// AUTH - Login/Register credentials
// =============================================================================

interface AuthCredentials {
  email: string;
  password: string;
}

// =============================================================================
// API RESPONSE - Standard service response wrapper
// =============================================================================

interface ServiceResponse<T> {
  data: T | null;
  error: { message: string } | null;
}

interface ServiceResponseWithBreadcrumbs<T> extends ServiceResponse<T> {
  breadcrumbs?: Breadcrumb[];
}
