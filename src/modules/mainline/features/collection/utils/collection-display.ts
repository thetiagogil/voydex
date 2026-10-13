import type { StatusBadgeTone } from "@/shared/components/status-badge";

/* A national number as the Pokédex prints it: "#025". */
export const formatNationalNumber = (value: number | null) =>
  value === null ? "" : `#${String(value).padStart(3, "0")}`;

/* A Play's status as a small meaning mark: playing is ok, completed is gold. */
export const getPlayStatusTone = (
  statusSlug: string | null,
): StatusBadgeTone => {
  if (statusSlug === "completed") return "gold";
  if (statusSlug === "playing") return "ok";
  return "neutral";
};
