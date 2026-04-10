import type { IconType } from "@/components/shared/icon";
import { COLOR_VARIANTS } from "@/shared/ui/colors";

// =============================================================================
// PLAY STATUSES — real domain values
// =============================================================================

export const PLAY_STATUSES = [
  "active",
  "completed",
  "paused",
  "dropped",
] as const;

export type PlayStatus = (typeof PLAY_STATUSES)[number];

// =============================================================================
// STATUS VARIANTS — play statuses + "total" for UI display
// =============================================================================

export const STATUS_VARIANTS = ["total", ...PLAY_STATUSES] as const;

export type StatusVariant = (typeof STATUS_VARIANTS)[number];

// =============================================================================
// STATUS VARIANT META — single source of truth for status visual treatment
// =============================================================================

type StatusVariantMeta = {
  label: string;
  icon: IconType;
  colors: {
    icon: string;
    bg: string;
    text: string;
  };
};

export const STATUS_VARIANT_META: Record<StatusVariant, StatusVariantMeta> = {
  total: {
    label: "Total",
    icon: "total",
    colors: COLOR_VARIANTS.blue,
  },
  active: {
    label: "Active",
    icon: "active",
    colors: COLOR_VARIANTS.pink,
  },
  completed: {
    label: "Completed",
    icon: "completed",
    colors: COLOR_VARIANTS.green,
  },
  paused: {
    label: "Paused",
    icon: "paused",
    colors: COLOR_VARIANTS.yellow,
  },
  dropped: {
    label: "Dropped",
    icon: "dropped",
    colors: COLOR_VARIANTS.gray,
  },
};
