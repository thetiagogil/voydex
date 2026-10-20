"use client";

import { TextLink } from "@/shared/components/text-link";
import { useId, useState, type ReactNode } from "react";

import { PendingData } from "@/shared/components/pending-data";
import { FieldLabel } from "@/shared/components/ui/field";

const TrackingRow = ({
  children,
  description,
  title,
}: {
  children: ReactNode;
  description: string;
  title: string;
}) => (
  <div className="flex flex-wrap items-center justify-between gap-x-6 gap-y-2 py-3">
    <div className="min-w-0">
      <b className="text-ink text-15 block font-extrabold">{title}</b>
      <span className="text-ink-2 text-13 font-semibold">{description}</span>
    </div>
    <div className="flex max-w-full flex-wrap justify-end gap-1.5">
      {children}
    </div>
  </div>
);

/*
 * Step 3's tracking (v3 `.npx-track`): what the new Play keeps, and Change
 * to adjust it. The Story, Pokédex mode and Collectibles switches wait on
 * Play settings that Voydex can't store yet. Expansions sit above it and
 * challenge rules under it, each its own field.
 */
export const NewPlayTracking = () => {
  const [isOpen, setIsOpen] = useState(false);
  const panelId = useId();
  const labelId = useId();

  return (
    <div className="flex flex-col gap-1.5">
      <FieldLabel id={labelId}>Tracking (optional)</FieldLabel>
      {/* The fields' corner, so the box reads as one of them. */}
      <div
        role="group"
        aria-labelledby={labelId}
        className="bg-surface-2 rounded-3xl px-5 py-3.5"
      >
        <div className="flex flex-wrap items-center gap-x-3.5 gap-y-1">
          <b className="text-ink text-15 font-extrabold">
            {["Story", "Pokédex", "Collectibles"].join(" · ")}
          </b>
          <TextLink
            standalone
            aria-expanded={isOpen}
            aria-controls={panelId}
            onClick={() => setIsOpen((current) => !current)}
            className="ml-auto"
          >
            {isOpen ? "Done" : "Change"}
          </TextLink>
        </div>

        <div id={panelId} hidden={!isOpen} className="mt-2">
          <TrackingRow
            title="Story"
            description="Badges, league and the milestones in between"
          >
            {/* TODO(v3-data): a per-Play Story on/off flag on gameplay.mainline_play_settings. */}
            <PendingData variant="inline" label="Always on for now" />
          </TrackingRow>
          <TrackingRow
            title="Pokédex"
            description="Mark what you catch, or what you've seen too"
          >
            {/* TODO(v3-data): a caught-only or caught-and-seen Pokédex mode on gameplay.mainline_play_settings. */}
            <PendingData variant="inline" label="Caught and seen for now" />
          </TrackingRow>
          <TrackingRow
            title="Collectibles"
            description="The game's own collections, where it has them"
          >
            {/* TODO(v3-data): a per-Play Collectibles on/off flag on gameplay.mainline_play_settings. */}
            <PendingData variant="inline" label="Always on for now" />
          </TrackingRow>
        </div>
      </div>
    </div>
  );
};
