// =============================================================================
// BASE INFO - Common structure for entities with id, slug, name
// =============================================================================

export interface BaseInfo {
  id: number;
  slug: string;
  name: string;
}

// =============================================================================
// BREADCRUMBS - Navigation breadcrumb item
// =============================================================================

export interface Breadcrumb {
  label: string;
  href: string;
  current?: boolean;
}
