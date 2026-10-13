import type { CSSProperties } from "react";

import type { SiteTypeSlug } from "@/features/site/types";

/* A type's colour as `--t`, the variable every type-tinted surface reads. */
export const getTypeColourStyle = (type: SiteTypeSlug): CSSProperties =>
  ({ "--t": `var(--type-${type})` }) as CSSProperties;
