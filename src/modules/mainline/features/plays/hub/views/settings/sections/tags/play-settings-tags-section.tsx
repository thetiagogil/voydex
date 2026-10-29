"use client";

import { LibraryChoiceField } from "@/modules/mainline/shared/components/library-choice-field";

import { SettingsChoiceSection } from "@/shared/components/settings-choice-section";
import {
  createPlayTagAction,
  updatePlayTagsAction,
} from "../../server/play-settings-actions";
import type { MainlinePlaySettingsData } from "../../types";
import { diffIdSets } from "../../utils/play-settings-validation";

/*
 * Tags: your own labels for a Play ("Nuzlocke", "Shiny hunt"), shared by all
 * your Plays and shown in the Play's details.
 */
export const PlaySettingsTagsSection = ({
  data,
  playId,
}: {
  data: MainlinePlaySettingsData;
  playId: string;
}) => (
  <SettingsChoiceSection
    id="tags"
    title="Tags"
    aside="Shown in the Play's details"
    initialValue={data.selectedTagIds}
    isEqual={(left, right) => {
      const diff = diffIdSets(left, right);

      return diff.added.length + diff.removed.length === 0;
    }}
    onSave={(tagIds) => updatePlayTagsAction({ playId, tagIds })}
    renderField={({ disabled, onChange, value }) => (
      <LibraryChoiceField
        label="Tags"
        noun="tag"
        addLabel="Add tag"
        choices={data.tags}
        selectedIds={value}
        disabled={disabled}
        onCreate={(name) => createPlayTagAction({ name, playId })}
        onChange={onChange}
      />
    )}
  />
);
