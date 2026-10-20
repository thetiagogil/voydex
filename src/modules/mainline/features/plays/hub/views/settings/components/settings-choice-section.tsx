"use client";

import { useState, useTransition, type ReactNode } from "react";
import { useRouter } from "next/navigation";
import { toast } from "sonner";

import {
  LibraryChoiceField,
  type LibraryCreateResult,
} from "@/modules/mainline/shared/components/library-choice-field";
import { DetailSectionCard } from "@/shared/components/detail-section-card";
import { UnsavedChangesFooter } from "@/shared/components/unsaved-changes-footer";
import { FieldError } from "@/shared/components/ui/field";

import type { PlaySettingsActionResult } from "../server/play-settings-actions";
import type { PlaySettingsChoice } from "../types";
import { diffIdSets } from "../utils/play-settings-validation";

/*
 * A Settings card of the rules or tags this Play keeps: its chips, and
 * "+ Add" to pick more from your Library or make one. Adding and removing
 * reach the Play with the card's Save.
 */
export const SettingsChoiceSection = ({
  addLabel,
  aside,
  empty,
  id,
  initialSelectedIds,
  noun,
  onCreate,
  onSave,
  options,
  title,
}: {
  addLabel: string;
  aside: string;
  /* Shown above the chips while your Library has none to pick. */
  empty?: ReactNode;
  id: string;
  initialSelectedIds: string[];
  noun: "rule" | "tag";
  onCreate: (name: string) => Promise<LibraryCreateResult>;
  onSave: (ids: string[]) => Promise<PlaySettingsActionResult>;
  options: PlaySettingsChoice[];
  title: string;
}) => {
  const router = useRouter();
  const [selected, setSelected] = useState(initialSelectedIds);
  const [error, setError] = useState<string | null>(null);
  const [isSaving, startTransition] = useTransition();
  const diff = diffIdSets(initialSelectedIds, selected);
  const isDirty = diff.added.length + diff.removed.length > 0;

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
      {options.length === 0 ? empty : null}
      <LibraryChoiceField
        label={title}
        noun={noun}
        addLabel={addLabel}
        choices={options}
        selectedIds={selected}
        disabled={isSaving}
        onCreate={onCreate}
        onChange={(ids) => {
          setSelected(ids);
          setError(null);
        }}
      />

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
