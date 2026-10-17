"use client";

import { ChoiceChip } from "@/shared/components/choice-chip";
import { useState, useTransition, type ReactNode } from "react";
import { useRouter } from "next/navigation";
import { toast } from "sonner";

import { DetailSectionCard } from "@/shared/components/detail-section-card";
import { UnsavedChangesFooter } from "@/shared/components/unsaved-changes-footer";
import { FieldError } from "@/shared/components/ui/field";

import type {
  PlaySettingsActionResult,
  PlaySettingsCreateResult,
} from "../server/play-settings-actions";
import type { PlaySettingsChoice } from "../types";
import { diffIdSets } from "../utils/play-settings-validation";
import { SettingsAddChip } from "./settings-add-chip";

/*
 * A Settings card of chips you pick several of and can add to (challenge
 * rules, tags). A chip you add is picked straight away; like a toggle, it
 * reaches the Play with the card's Save.
 */
export const SettingsChoiceSection = ({
  add,
  aside,
  empty,
  id,
  initialSelectedIds,
  onSave,
  options,
  title,
}: {
  add: {
    label: string;
    maxLength: number;
    onCreate: (name: string) => Promise<PlaySettingsCreateResult>;
    placeholder: string;
  };
  aside: string;
  /* Shown above the add chip while there is nothing to pick. */
  empty?: ReactNode;
  id: string;
  initialSelectedIds: string[];
  onSave: (ids: string[]) => Promise<PlaySettingsActionResult>;
  options: PlaySettingsChoice[];
  title: string;
}) => {
  const router = useRouter();
  const [selected, setSelected] = useState(initialSelectedIds);
  const [added, setAdded] = useState<PlaySettingsChoice[]>([]);
  const [error, setError] = useState<string | null>(null);
  const [isSaving, startTransition] = useTransition();
  const diff = diffIdSets(initialSelectedIds, selected);
  const isDirty = diff.added.length + diff.removed.length > 0;
  /* Added chips stay at the end, where you added them, until the next visit. */
  const addedIds = new Set(added.map((choice) => choice.id));
  const choices = [
    ...options.filter((choice) => !addedIds.has(choice.id)),
    ...added,
  ];

  const toggle = (choiceId: string) => {
    setSelected((current) =>
      current.includes(choiceId)
        ? current.filter((value) => value !== choiceId)
        : [...current, choiceId],
    );
    setError(null);
  };

  const save = () => {
    startTransition(async () => {
      const result = await onSave(selected);

      if (result.status === "error") {
        setError(result.message);
        return;
      }

      toast.success(result.message);
      router.refresh();
    });
  };

  return (
    <DetailSectionCard id={id} title={title} aside={aside}>
      {choices.length === 0 ? empty : null}
      <div
        role="group"
        aria-label={title}
        className="flex flex-wrap items-center gap-2"
      >
        {choices.map((choice) => (
          <ChoiceChip
            key={choice.id}
            pressed={selected.includes(choice.id)}
            disabled={isSaving}
            onClick={() => toggle(choice.id)}
          >
            {choice.name}
          </ChoiceChip>
        ))}
        <SettingsAddChip
          {...add}
          disabled={isSaving}
          onAdded={(choice) => {
            if (!options.some((option) => option.id === choice.id)) {
              setAdded((current) =>
                current.some((item) => item.id === choice.id)
                  ? current
                  : [...current, choice],
              );
            }

            setSelected((current) =>
              current.includes(choice.id) ? current : [...current, choice.id],
            );
            setError(null);
          }}
        />
      </div>

      {error ? <FieldError className="mt-3">{error}</FieldError> : null}

      {isDirty ? (
        <UnsavedChangesFooter
          isSaving={isSaving}
          onCancel={() => {
            setSelected(initialSelectedIds);
            setError(null);
          }}
          onSave={save}
        />
      ) : null}
    </DetailSectionCard>
  );
};
