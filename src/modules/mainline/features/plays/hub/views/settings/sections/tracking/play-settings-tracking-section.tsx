"use client";

import { ChoiceChip } from "@/shared/components/choice-chip";
import { useState, useTransition } from "react";
import { useRouter } from "next/navigation";
import { toast } from "sonner";

import { DetailSectionCard } from "@/shared/components/detail-section-card";
import { PendingData } from "@/shared/components/pending-data";
import { SettingsRow } from "@/shared/components/settings-row";
import { UnsavedChangesFooter } from "@/shared/components/unsaved-changes-footer";
import { FieldError } from "@/shared/components/ui/field";

import { updatePlayExpansionsAction } from "../../server/play-settings-actions";
import type { MainlinePlaySettingsData } from "../../types";
import { diffIdSets } from "../../utils/play-settings-validation";

/*
 * Tracking (v3 `settings`): what this Play keeps track of. Expansions you
 * own are real; turning Story or Collectibles off and the Pokédex mode wait
 * for their settings columns. Turning something off hides it; nothing
 * recorded is deleted.
 */
export const PlaySettingsTrackingSection = ({
  data,
  playId,
}: {
  data: MainlinePlaySettingsData;
  playId: string;
}) => {
  const router = useRouter();
  const [selected, setSelected] = useState(data.selectedExpansionIds);
  const [error, setError] = useState<string | null>(null);
  const [isSaving, startTransition] = useTransition();
  const { added, removed } = diffIdSets(data.selectedExpansionIds, selected);
  const isDirty = added.length + removed.length > 0;

  const toggle = (versionGroupId: number) => {
    setSelected((current) =>
      current.includes(versionGroupId)
        ? current.filter((id) => id !== versionGroupId)
        : [...current, versionGroupId],
    );
    setError(null);
  };

  const save = () => {
    startTransition(async () => {
      const result = await updatePlayExpansionsAction({
        playId,
        versionGroupIds: selected,
      });

      if (result.status === "error") {
        setError(result.message);
        return;
      }

      toast.success(result.message);
      router.refresh();
    });
  };

  return (
    <DetailSectionCard
      id="tracking"
      title="Tracking"
      aside="Turning something off hides it. Nothing recorded is deleted."
    >
      <SettingsRow
        title="Story"
        description="Badges, the League and the milestones in between"
      >
        {/* TODO(v3-data): a Story tracking flag on `gameplay.mainline_play_settings` (track Story on or off). */}
        <PendingData variant="inline" label="On/off not in Voydex yet" />
      </SettingsRow>
      <SettingsRow
        title="Pokédex"
        description="Caught only, or caught and seen"
      >
        {/* TODO(v3-data): a Pokédex mode on `gameplay.mainline_play_settings` (caught only vs caught and seen); only `pokedex_tracking_enabled` exists. */}
        <PendingData variant="inline" label="Mode not in Voydex yet" />
      </SettingsRow>
      {data.expansions.length ? (
        <SettingsRow
          title="Expansions you own"
          description="Adds their Pokédexes and milestones"
        >
          <div
            role="group"
            aria-label="Expansions you own"
            className="flex flex-wrap gap-2"
          >
            {data.expansions.map((expansion) => (
              <ChoiceChip
                key={expansion.versionGroupId}
                pressed={selected.includes(expansion.versionGroupId)}
                disabled={isSaving}
                onClick={() => toggle(expansion.versionGroupId)}
              >
                {expansion.name}
              </ChoiceChip>
            ))}
          </div>
        </SettingsRow>
      ) : null}
      <SettingsRow
        title="Collectibles"
        description="Hidden items to find, where the game has them"
      >
        {/* TODO(v3-data): a Collectibles tracking flag on `gameplay.mainline_play_settings` (only `include_collectibles_in_completion` exists). */}
        <PendingData variant="inline" label="On/off not in Voydex yet" />
      </SettingsRow>

      {error ? <FieldError className="mt-3">{error}</FieldError> : null}

      {isDirty ? (
        <UnsavedChangesFooter
          isSaving={isSaving}
          onCancel={() => {
            setSelected(data.selectedExpansionIds);
            setError(null);
          }}
          onSave={save}
        />
      ) : null}
    </DetailSectionCard>
  );
};
