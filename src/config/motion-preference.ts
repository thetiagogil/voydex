/*
 * The motion choice in Settings: Full plays every reward and lift, Reduced
 * keeps the page still, and Follow device (`system`) lets the device's own
 * reduced-motion setting decide. Applied as `data-motion` on the page's root
 * element (`system` leaves it off); `app-base.css` and `isMotionReduced` read it.
 */

export const motionPreferences = ["system", "full", "reduced"] as const;

export type MotionPreference = (typeof motionPreferences)[number];

export const defaultMotionPreference: MotionPreference = "system";

export const motionPreferenceOptions: readonly {
  label: string;
  value: MotionPreference;
}[] = [
  { label: "Follow device", value: "system" },
  { label: "Full", value: "full" },
  { label: "Reduced", value: "reduced" },
];

export const isMotionPreference = (value: unknown): value is MotionPreference =>
  motionPreferences.includes(value as MotionPreference);

/* A stored choice, or Follow device when the row holds something unexpected. */
export const toMotionPreference = (value: unknown): MotionPreference =>
  isMotionPreference(value) ? value : defaultMotionPreference;
