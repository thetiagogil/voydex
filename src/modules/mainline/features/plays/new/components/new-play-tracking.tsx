"use client";

import { useId, useState, type ReactNode } from "react";

import type { NewPlayExpansion } from "@/modules/mainline/features/plays/shared/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { PendingData } from "@/shared/components/pending-data";
import { Button } from "@/shared/components/ui/button";
import { cn } from "@/shared/utils/cn";

type NewPlayTrackingProps = {
  expansions: NewPlayExpansion[];
  onOwnedChange: (versionGroupIds: number[]) => void;
  owned: number[];
};

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
 * to adjust it. The expansions you own are real; the Story, Pokédex mode,
 * Collectibles switches and challenge rules wait on Play settings that
 * Voydex can't store yet.
 */
export const NewPlayTracking = ({
  expansions,
  onOwnedChange,
  owned,
}: NewPlayTrackingProps) => {
  const [isOpen, setIsOpen] = useState(false);
  const panelId = useId();
  const ownedNames = expansions
    .filter((expansion) => owned.includes(expansion.versionGroupId))
    .map((expansion) => expansion.name);
  const toggle = (versionGroupId: number) => {
    onOwnedChange(
      owned.includes(versionGroupId)
        ? owned.filter((id) => id !== versionGroupId)
        : [...owned, versionGroupId],
    );
  };

  return (
    <div className="bg-surface-2 rounded-md px-4 py-3.5">
      <div className="flex flex-wrap items-center gap-x-3.5 gap-y-1">
        <span className="text-ink-2 text-13 font-bold">Tracking</span>
        <b className="text-ink text-15 font-extrabold">
          {["Story", "Pokédex", "Collectibles", ...ownedNames].join(" · ")}
        </b>
        <Button
          type="button"
          variant="link"
          size="sm"
          aria-expanded={isOpen}
          aria-controls={panelId}
          onClick={() => setIsOpen((current) => !current)}
          className="ml-auto px-0.5"
        >
          {isOpen ? "Done" : "Change"}
        </Button>
      </div>

      <div id={panelId} hidden={!isOpen} className="divide-line mt-2 divide-y">
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
        {expansions.length ? (
          <TrackingRow
            title="Expansions you own"
            description="Adds their Pokédexes and milestones"
          >
            {expansions.map((expansion) => {
              const isOwned = owned.includes(expansion.versionGroupId);

              return (
                <button
                  key={expansion.versionGroupId}
                  type="button"
                  aria-pressed={isOwned}
                  onClick={() => toggle(expansion.versionGroupId)}
                  className={cn(
                    "text-14 focus-visible:outline-focus inline-flex h-9 items-center gap-1.5 rounded-full px-3.5 font-bold outline-none focus-visible:outline-3 focus-visible:outline-offset-2 focus-visible:outline-solid",
                    isOwned
                      ? "bg-select-soft text-select-ink font-extrabold"
                      : "bg-surface text-ink-2 hover:bg-hover hover:text-ink",
                  )}
                >
                  {isOwned ? (
                    <AppIcon icon={appIcons.status.active} size="sm" />
                  ) : null}
                  {expansion.name}
                </button>
              );
            })}
          </TrackingRow>
        ) : null}
        <TrackingRow
          title="Collectibles"
          description="The game's own collections, where it has them"
        >
          {/* TODO(v3-data): a per-Play Collectibles on/off flag on gameplay.mainline_play_settings. */}
          <PendingData variant="inline" label="Always on for now" />
        </TrackingRow>
        <TrackingRow
          title="Challenge rules"
          description="Optional. Shown on the Play and its history"
        >
          {/* TODO(v3-data): a seeded system catalogue in gameplay.mainline_challenge_rules (only development rows exist). */}
          <PendingData variant="inline" />
        </TrackingRow>
      </div>
    </div>
  );
};
