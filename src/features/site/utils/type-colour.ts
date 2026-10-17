import type { CSSProperties } from "react";

import type { PublicTypeSlug } from "@/config/public-art";

/*
 * A type's colour as `--t`, the variable every type-tinted surface reads, and
 * `--t-on`, the ink for a label or icon on it.
 */
export const getTypeColourStyle = (type: PublicTypeSlug): CSSProperties =>
  ({
    "--t": `var(--type-${type})`,
    "--t-on": `var(--type-${type}-on)`,
  }) as CSSProperties;
