"use client";

import { Input } from "@/shared/components/ui/input";

/* A Play's playtime as hours and minutes, both empty for not recorded. */
export const PlayPlaytimeFields = ({
  hours,
  minutes,
  onHoursChange,
  onMinutesChange,
}: {
  hours: string;
  minutes: string;
  onHoursChange: (value: string) => void;
  onMinutesChange: (value: string) => void;
}) => (
  <div className="grid grid-cols-2 gap-2.5">
    <label className="relative">
      <span className="sr-only">Hours</span>
      <Input
        type="number"
        inputMode="numeric"
        min={0}
        max={9999}
        value={hours}
        placeholder="0"
        className="pr-9"
        onChange={(event) => onHoursChange(event.target.value)}
      />
      <span
        aria-hidden
        className="text-ink-3 absolute top-1/2 right-4 -translate-y-1/2 font-bold"
      >
        h
      </span>
    </label>
    <label className="relative">
      <span className="sr-only">Minutes</span>
      <Input
        type="number"
        inputMode="numeric"
        min={0}
        max={59}
        value={minutes}
        placeholder="0"
        className="pr-9"
        onChange={(event) => onMinutesChange(event.target.value)}
      />
      <span
        aria-hidden
        className="text-ink-3 absolute top-1/2 right-4 -translate-y-1/2 font-bold"
      >
        m
      </span>
    </label>
  </div>
);
