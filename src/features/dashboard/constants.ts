import type { IconType } from "@/components/shared/icon";
import {
  STATUS_VARIANTS,
  STATUS_VARIANT_META,
  type StatusVariant,
} from "@/shared/constants/play-statuses";
import { COLOR_VARIANTS } from "@/shared/ui/colors";

// =============================================================================
// DASHBOARD ACTIVITY TYPES
// =============================================================================

export const DASHBOARD_ACTIVITY_TYPES = [
  "play_created",
  "play_status_changed",
  "pokemon_added",
  "tracking_completed",
] as const;

export type DashboardActivityType = (typeof DASHBOARD_ACTIVITY_TYPES)[number];

// =============================================================================
// DASHBOARD ACTIVITY VARIANTS
// =============================================================================

// Feature-specific variants (non-status visual treatment)
export const DASHBOARD_ACTIVITY_FEATURE_VARIANTS = [
  "pokemon",
  "tracking",
] as const;

export type DashboardActivityFeatureVariant =
  (typeof DASHBOARD_ACTIVITY_FEATURE_VARIANTS)[number];

// Full set: status variants + feature variants
export type DashboardActivityVariant =
  | StatusVariant
  | DashboardActivityFeatureVariant;

// =============================================================================
// DASHBOARD ACTIVITY VARIANT META
// =============================================================================

type ActivityVariantMeta = {
  icon: IconType;
  colors: {
    icon: string;
    bg: string;
    text: string;
  };
};

export const DASHBOARD_ACTIVITY_VARIANT_META: Record<
  DashboardActivityVariant,
  ActivityVariantMeta
> = {
  ...Object.fromEntries(
    STATUS_VARIANTS.map((variant) => [
      variant,
      {
        icon: STATUS_VARIANT_META[variant].icon,
        colors: {
          icon: STATUS_VARIANT_META[variant].colors.icon,
          bg: STATUS_VARIANT_META[variant].colors.bg,
        },
      },
    ]),
  ),
  pokemon: {
    icon: "pokemon",
    colors: COLOR_VARIANTS.orange,
  },
  tracking: {
    icon: "badge",
    colors: COLOR_VARIANTS.green,
  },
} as Record<DashboardActivityVariant, ActivityVariantMeta>;
