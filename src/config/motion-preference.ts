/*
 * The motion choice in Settings: Full plays every reward and lift unless the
 * device asks for reduced motion, and None keeps the page still. None is
 * applied as `data-motion="none"` on the page's root element (Full leaves it
 * off, so the device decides); `app-base.css` and `isMotionReduced` read it.
 */

export const motionPreferences = ["full", "none"] as const;

export type MotionPreference = (typeof motionPreferences)[number];

export const defaultMotionPreference: MotionPreference = "full";

export const motionPreferenceOptions: readonly {
  label: string;
  value: MotionPreference;
}[] = [
  { label: "Full", value: "full" },
  { label: "None", value: "none" },
];

export const isMotionPreference = (value: unknown): value is MotionPreference =>
  motionPreferences.includes(value as MotionPreference);

/* A stored choice, or Full when the row holds something unexpected. */
export const toMotionPreference = (value: unknown): MotionPreference =>
  isMotionPreference(value) ? value : defaultMotionPreference;
