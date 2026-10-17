import type { CSSProperties } from "react";

import type { PublicTypeSlug } from "@/config/public-art";

/* A type's colour as `--t`, the variable every type-tinted surface reads. */
export const getTypeColourStyle = (type: PublicTypeSlug): CSSProperties =>
  ({ "--t": `var(--type-${type})` }) as CSSProperties;
