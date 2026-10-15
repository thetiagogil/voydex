import type { StatusBadgeTone } from "@/shared/components/status-badge";

/*
 * A Play's status as one meaning colour, everywhere it shows: playing is ok
 * (green), paused is warn (amber), completed is calm (blue); not started,
 * abandoned and anything unknown stay neutral.
 */
export const getPlayStatusTone = (
  statusSlug: string | null | undefined,
): StatusBadgeTone => {
  if (statusSlug === "playing") return "ok";
  if (statusSlug === "paused") return "warn";
  if (statusSlug === "completed") return "calm";
  return "neutral";
};

/* The same colour as a small dot beside the status's name. */
export const playStatusDotClassNames: Record<StatusBadgeTone, string> = {
  calm: "bg-calm",
  danger: "bg-danger",
  gold: "bg-gold",
  neutral: "bg-mute",
  ok: "bg-ok",
  warn: "bg-warn",
};
