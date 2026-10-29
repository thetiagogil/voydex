"use client";

import {
  motionPreferenceOptions,
  type MotionPreference,
} from "@/config/motion-preference";
import { SegmentedControl } from "@/shared/components/segmented-control";
import { SettingsChoiceSection } from "@/shared/components/settings-choice-section";
import { SettingsRow } from "@/shared/components/settings-row";
import { PendingData } from "@/shared/components/pending-data";

import { saveMotionAction } from "../server/preferences-actions";

/*
 * Look and feel (v3 `.set-sec`): Motion is saved; Mode and Colour theme wait
 * on #38, each row saying what it will control. A choice shows on every page
 * once saved, and Follow device lets the device's own setting decide.
 */
export const SettingsLookSection = ({
  motion,
}: {
  motion: MotionPreference;
}) => (
  <SettingsChoiceSection
    id="look"
    title="Look and feel"
    initialValue={motion}
    isEqual={(left, right) => left === right}
    onSave={saveMotionAction}
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
            value={value}
            onValueChange={onChange}
            variant="segment"
          />
        </SettingsRow>
      </>
    )}
  />
);
