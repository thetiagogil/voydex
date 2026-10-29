"use client";

import { motionPreferenceOptions } from "@/config/motion-preference";
import { searchFiltersPreferenceOptions } from "@/config/search-filters-preference";
import { SegmentedControl } from "@/shared/components/segmented-control";
import { SettingsChoiceSection } from "@/shared/components/settings-choice-section";
import { SettingsRow } from "@/shared/components/settings-row";
import { PendingData } from "@/shared/components/pending-data";

import {
  saveLookAndFeelAction,
  type LookAndFeel,
} from "../server/preferences-actions";

/*
 * Look and feel (v3 `.set-sec`): Motion and Search and filters are saved;
 * Mode and Colour theme wait on #38, each row saying what it will control. A
 * choice shows on every page once saved, and Follow device lets the device's
 * own setting decide.
 */
export const SettingsLookSection = ({
  lookAndFeel,
}: {
  lookAndFeel: LookAndFeel;
}) => (
  <SettingsChoiceSection
    id="look"
    title="Look and feel"
    initialValue={lookAndFeel}
    isEqual={(left, right) =>
      left.motion === right.motion && left.searchFilters === right.searchFilters
    }
    onSave={saveLookAndFeelAction}
    renderField={({ disabled, onChange, value }) => (
      <>
        {/* TODO(v3-data): mode and colour theme preferences (#38; only the light look is designed). */}
        <SettingsRow title="Mode" description="System follows your device">
          <PendingData variant="inline" />
        </SettingsRow>
        <SettingsRow
          title="Colour theme"
          description="The ground and button colours, the same on every page."
        >
          <PendingData variant="inline" />
        </SettingsRow>
        <SettingsRow
          title="Motion"
          description="Stamps, pops and little lifts. Follow device uses your device's reduced-motion setting."
        >
          <SegmentedControl
            ariaLabel="Motion"
            options={motionPreferenceOptions.map((option) => ({
              ...option,
              disabled,
            }))}
            value={value.motion}
            onValueChange={(motion) => onChange({ ...value, motion })}
            variant="segment"
          />
        </SettingsRow>
        <SettingsRow
          title="Search and filters"
          description="Folded keeps a list's search and filters under its search button. Always open shows them on every list."
        >
          <SegmentedControl
            ariaLabel="Search and filters"
            options={searchFiltersPreferenceOptions.map((option) => ({
              ...option,
              disabled,
            }))}
            value={value.searchFilters}
            onValueChange={(searchFilters) =>
              onChange({ ...value, searchFilters })
            }
            variant="segment"
          />
        </SettingsRow>
      </>
    )}
  />
);
