"use client";

import { SettingsChoiceSection } from "../../components/settings-choice-section";
import {
  createPlayTagAction,
  updatePlayTagsAction,
} from "../../server/play-settings-actions";
import type { MainlinePlaySettingsData } from "../../types";

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
    options={data.tags}
    initialSelectedIds={data.selectedTagIds}
    onSave={(tagIds) => updatePlayTagsAction({ playId, tagIds })}
    noun="tag"
    addLabel="Add tag"
    onCreate={(name) => createPlayTagAction({ name, playId })}
  />
);
