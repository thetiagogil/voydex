"use client";

import { useState, useTransition } from "react";
import { useRouter } from "next/navigation";
import { toast } from "sonner";

import { DetailSectionCard } from "@/shared/components/detail-section-card";
import { PendingData } from "@/shared/components/pending-data";
import { UnsavedChangesFooter } from "@/shared/components/unsaved-changes-footer";
import { FieldError } from "@/shared/components/ui/field";

import { SettingsChoiceChip } from "../../components/settings-choice-chip";
import { updatePlayChallengeRulesAction } from "../../server/play-settings-actions";
import type { MainlinePlaySettingsData } from "../../types";
import { diffIdSets } from "../../utils/play-settings-validation";

/*
 * Challenge rules (v3 `settings`): Nuzlocke, Monotype and the like, shown on
 * the Play and in its History. The chips are every rule you can attach:
 * Voydex's catalogue (not seeded yet) and your own.
 */
export const PlaySettingsRulesSection = ({
  data,
  playId,
}: {
  data: MainlinePlaySettingsData;
  playId: string;
}) => {
  const router = useRouter();
  const [selected, setSelected] = useState(data.selectedRuleIds);
  const [error, setError] = useState<string | null>(null);
  const [isSaving, startTransition] = useTransition();
  const { added, removed } = diffIdSets(data.selectedRuleIds, selected);
  const isDirty = added.length + removed.length > 0;

  const toggle = (ruleId: string) => {
    setSelected((current) =>
      current.includes(ruleId)
        ? current.filter((id) => id !== ruleId)
        : [...current, ruleId],
    );
    setError(null);
  };

  const save = () => {
    startTransition(async () => {
      const result = await updatePlayChallengeRulesAction({
        playId,
        ruleIds: selected,
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
      id="rules"
      title="Challenge rules"
      aside="Shown on the Play and in its History"
    >
      {data.rules.length ? (
        <div
          role="group"
          aria-label="Challenge rules"
          className="flex flex-wrap gap-2"
        >
          {data.rules.map((rule) => (
            <SettingsChoiceChip
              key={rule.id}
              label={rule.name}
              pressed={selected.includes(rule.id)}
              disabled={isSaving}
              onToggle={() => toggle(rule.id)}
            />
          ))}
        </div>
      ) : (
        /* TODO(v3-data): the system challenge-rule catalogue (Nuzlocke, Monotype, No battle items, Level caps, Set battle mode, Shiny hunt) seeded into `gameplay.mainline_challenge_rules`; only development seeds exist. */
        <PendingData
          label="Challenge rules aren't in Voydex yet"
          note="Nuzlocke, Monotype, Level caps and the rest arrive with the rule catalogue."
        />
      )}

      {error ? <FieldError className="mt-3">{error}</FieldError> : null}

      {isDirty ? (
        <UnsavedChangesFooter
          isSaving={isSaving}
          onCancel={() => {
            setSelected(data.selectedRuleIds);
            setError(null);
          }}
          onSave={save}
        />
      ) : null}
    </DetailSectionCard>
  );
};
