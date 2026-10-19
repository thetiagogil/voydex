import type { StatusBadgeTone } from "@/shared/components/status-badge";

/*
 * A Play's status as one meaning colour, everywhere it shows (the Play
 * header, Plays, Collection): playing is calm (blue), paused is warn
 * (amber), completed is ok (green), abandoned is danger (red); not started and
 * anything unknown stay neutral.
 */
export const getPlayStatusTone = (
  statusSlug: string | null | undefined,
): StatusBadgeTone => {
  if (statusSlug === "playing") return "calm";
  if (statusSlug === "paused") return "warn";
  if (statusSlug === "completed") return "ok";
  if (statusSlug === "abandoned") return "danger";
  return "neutral";
};
