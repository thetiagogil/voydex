"use client";

import {
  arePlayTrackingsEqual,
  pokedexModeOptions,
  trackingRowCopy,
} from "@/config/play-tracking";
import { SegmentedControl } from "@/shared/components/segmented-control";
import { SettingsChoiceSection } from "@/shared/components/settings-choice-section";
import { SettingsRow } from "@/shared/components/settings-row";
import { SettingsSwitchRow } from "@/shared/components/settings-switch-row";

import { updatePlayTrackingAction } from "../../server/play-settings-actions";
import type { MainlinePlaySettingsData } from "../../types";

/*
 * Tracking (v3 `settings`): what this Play keeps track of. Turning Story or
 * Collectibles off hides it and leaves it out of completion; the Pokédex
 * keeps being tracked, as caught only or caught and seen. Nothing recorded is
 * ever deleted, and turning it back on restores everything. Collectibles
 * shows only for a game that has them.
 */
export const PlaySettingsTrackingSection = ({
  data,
  playId,
}: {
  data: MainlinePlaySettingsData;
  playId: string;
}) => (
  <SettingsChoiceSection
    id="tracking"
    title="Tracking"
    aside="Turning something off hides it. Nothing recorded is deleted."
    initialValue={data.tracking}
    isEqual={arePlayTrackingsEqual}
    onSave={(tracking) => updatePlayTrackingAction({ playId, tracking })}
    renderField={({ disabled, onChange, value }) => (
      <>
        <SettingsSwitchRow
          title={trackingRowCopy.story.title}
          description={trackingRowCopy.story.description}
          checked={value.story}
          disabled={disabled}
          onCheckedChange={(story) => onChange({ ...value, story })}
        />
        <SettingsRow
          title={trackingRowCopy.pokedex.title}
          description={trackingRowCopy.pokedex.description}
        >
          <SegmentedControl
            ariaLabel="Pokédex tracking"
            options={pokedexModeOptions.map((option) => ({
              ...option,
              disabled,
            }))}
            value={value.pokedexMode}
            onValueChange={(pokedexMode) => onChange({ ...value, pokedexMode })}
            variant="segment"
          />
        </SettingsRow>
        {data.hasCollectibles ? (
          <SettingsSwitchRow
            title={trackingRowCopy.collectibles.title}
            description={trackingRowCopy.collectibles.description}
            checked={value.collectibles}
            disabled={disabled}
            onCheckedChange={(collectibles) =>
              onChange({ ...value, collectibles })
            }
          />
        ) : null}
      </>
    )}
  />
);
