import type { StatusBadgeTone } from "@/shared/components/status-badge";

const playStatusToneBySlug: Record<string, StatusBadgeTone> = {
  abandoned: "danger",
  completed: "gold",
  not_started: "neutral",
  paused: "warn",
  playing: "ok",
};

const normalizePlayStatusKey = (value: string | null | undefined) => {
  return (
    value
      ?.trim()
      .toLowerCase()
      .replace(/[\s-]+/g, "_") ?? null
  );
};

export const getPlayStatusBadgeTone = (
  statusSlug: string | null | undefined,
  statusName: string | null | undefined,
): StatusBadgeTone => {
  const statusKey =
    normalizePlayStatusKey(statusSlug) ?? normalizePlayStatusKey(statusName);

  if (!statusKey) {
    return "neutral";
  }

  return playStatusToneBySlug[statusKey] ?? "neutral";
};
