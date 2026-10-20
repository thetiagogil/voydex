"use client";

import { ChoiceChip } from "@/shared/components/choice-chip";

import { SettingsChoiceSection } from "../../components/settings-choice-section";
import { updatePlayExpansionsAction } from "../../server/play-settings-actions";
import type { MainlinePlaySettingsData } from "../../types";
import { diffIdSets } from "../../utils/play-settings-validation";

/*
 * Expansions (a game with DLC only): the ones you own add their Pokédexes
 * and milestones to this Play. Their own card, apart from Tracking, as they
 * change what the Play holds. Turning one off hides it; nothing recorded is
 * deleted.
 */
export const PlaySettingsExpansionsSection = ({
  data,
  playId,
}: {
  data: MainlinePlaySettingsData;
  playId: string;
}) => (
  <SettingsChoiceSection
    id="expansions"
    title="Expansions"
    aside="The ones you own add their Pokédexes and milestones"
    initialValue={data.selectedExpansionIds}
    isEqual={(left, right) => {
      const diff = diffIdSets(left, right);

      return diff.added.length + diff.removed.length === 0;
    }}
    onSave={(versionGroupIds) =>
      updatePlayExpansionsAction({ playId, versionGroupIds })
    }
    renderField={({ disabled, onChange, value }) => (
      <div
        role="group"
        aria-label="Expansions"
        className="flex flex-wrap gap-2"
      >
        {data.expansions.map((expansion) => (
          <ChoiceChip
            key={expansion.versionGroupId}
            pressed={value.includes(expansion.versionGroupId)}
            disabled={disabled}
            onClick={() =>
              onChange(
                value.includes(expansion.versionGroupId)
                  ? value.filter((id) => id !== expansion.versionGroupId)
                  : [...value, expansion.versionGroupId],
              )
            }
          >
            {expansion.name}
          </ChoiceChip>
        ))}
      </div>
    )}
  />
);
