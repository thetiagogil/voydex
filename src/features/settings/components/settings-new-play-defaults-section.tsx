"use client";

import {
  arePlayTrackingsEqual,
  pokedexModeOptions,
  trackingRowCopy,
  type PlayTracking,
} from "@/config/play-tracking";
import { SegmentedControl } from "@/shared/components/segmented-control";
import { SettingsChoiceSection } from "@/shared/components/settings-choice-section";
import { SettingsRow } from "@/shared/components/settings-row";
import { SettingsSwitchRow } from "@/shared/components/settings-switch-row";

import { saveNewPlayDefaultsAction } from "../server/preferences-actions";

/*
 * New Play defaults: what a new Play starts tracking. A Play keeps its own
 * switches from then on (Play settings), so changing these never touches an
 * existing Play.
 */
export const SettingsNewPlayDefaultsSection = ({
  defaults,
}: {
  defaults: PlayTracking;
}) => (
  <SettingsChoiceSection
    id="new-play-defaults"
    title="New Play defaults"
    aside="What a new Play starts with. Each Play can change it."
    initialValue={defaults}
    isEqual={arePlayTrackingsEqual}
    onSave={saveNewPlayDefaultsAction}
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
        <SettingsSwitchRow
          title={trackingRowCopy.collectibles.title}
          description={trackingRowCopy.collectibles.description}
          checked={value.collectibles}
          disabled={disabled}
          onCheckedChange={(collectibles) =>
            onChange({ ...value, collectibles })
          }
        />
      </>
    )}
  />
);
