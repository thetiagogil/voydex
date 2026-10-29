"use client";

import { useId, useState } from "react";

import {
  describePlayTracking,
  pokedexModeOptions,
  trackingRowCopy,
  type PlayTracking,
} from "@/config/play-tracking";
import { SegmentedControl } from "@/shared/components/segmented-control";
import { SettingsRow } from "@/shared/components/settings-row";
import { SettingsSwitchRow } from "@/shared/components/settings-switch-row";
import { TextLink } from "@/shared/components/text-link";
import { FieldLabel } from "@/shared/components/ui/field";

/*
 * Step 3's tracking (v3 `.npx-track`): what the new Play keeps, starting from
 * your New Play defaults, and Change to adjust it for this Play. The three
 * choices are the Play's Tracking settings; turning something off hides it
 * and nothing is ever deleted. Expansions sit above it and challenge rules
 * under it, each its own field.
 */
export const NewPlayTracking = ({
  onChange,
  tracking,
}: {
  onChange: (tracking: PlayTracking) => void;
  tracking: PlayTracking;
}) => {
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
            {describePlayTracking(tracking)}
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
          <SettingsSwitchRow
            title={trackingRowCopy.story.title}
            description={trackingRowCopy.story.description}
            checked={tracking.story}
            onCheckedChange={(story) => onChange({ ...tracking, story })}
          />
          <SettingsRow
            title={trackingRowCopy.pokedex.title}
            description={trackingRowCopy.pokedex.description}
          >
            <SegmentedControl
              ariaLabel="Pokédex tracking"
              options={pokedexModeOptions}
              value={tracking.pokedexMode}
              onValueChange={(pokedexMode) =>
                onChange({ ...tracking, pokedexMode })
              }
              variant="segment"
            />
          </SettingsRow>
          <SettingsSwitchRow
            title={trackingRowCopy.collectibles.title}
            description={trackingRowCopy.collectibles.description}
            checked={tracking.collectibles}
            onCheckedChange={(collectibles) =>
              onChange({ ...tracking, collectibles })
            }
          />
        </div>
      </div>
    </div>
  );
};
