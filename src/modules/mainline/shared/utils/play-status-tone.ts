import type { StatusBadgeTone } from "@/shared/components/status-badge";

/*
 * A Play's status as one meaning colour, everywhere it shows (the Play
 * header, Plays, Collection): playing is ok (green), paused is warn (amber),
 * completed is calm (blue), abandoned is danger (red); not started and
 * anything unknown stay neutral.
 */
export const getPlayStatusTone = (
  statusSlug: string | null | undefined,
): StatusBadgeTone => {
  if (statusSlug === "playing") return "ok";
  if (statusSlug === "paused") return "warn";
  if (statusSlug === "completed") return "calm";
  if (statusSlug === "abandoned") return "danger";
  return "neutral";
};
