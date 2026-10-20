"use client";

import { useId, useState, useTransition } from "react";

import { LibraryUsedIn } from "@/modules/mainline/features/library/components/library-used-in";
import type {
  LibraryRule,
  LibraryRuleKind,
} from "@/modules/mainline/features/library/types";
import { FormOverlay } from "@/modules/mainline/shared/components/form-overlay";
import { ruleOptionNotes } from "@/modules/mainline/shared/data/challenge-rule-options";
import {
  libraryNameMaxLength,
  ruleDescriptionMaxLength,
} from "@/modules/mainline/shared/utils/library-names";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { SelectControl } from "@/shared/components/select-control";
import { Button } from "@/shared/components/ui/button";
import { Field, FieldError, FieldLabel } from "@/shared/components/ui/field";
import { Input } from "@/shared/components/ui/input";
import { Spinner } from "@/shared/components/ui/spinner";
import { Textarea } from "@/shared/components/ui/textarea";

export type LibraryRuleDraft = {
  description: string;
  kindId: number;
  name: string;
};

/* Who made the rule, and what that means for changing it. */
const RuleMaker = ({ isBuiltIn }: { isBuiltIn: boolean }) => (
  <p className="text-ink-2 text-14 flex items-center gap-2 font-semibold">
    <AppIcon
      icon={isBuiltIn ? appIcons.status.locked : appIcons.actions.edit}
      size="sm"
    />
    {isBuiltIn
      ? "Made by Voydex: you can use it, not change it."
      : "Created by you: change it here and every Play that keeps it follows."}
  </p>
);

/*
 * A rule in full, opened from its card. Voydex's own reads as it is: what
 * it asks and the options each Play sets for it. Yours is the same view
 * with its name, kind and description open to change, Save and Delete.
 * Both end with the Plays that keep it.
 */
export const LibraryRuleDetails = ({
  kinds,
  onDelete,
  onOpenChange,
  onSave,
  open,
  rule,
}: {
  kinds: LibraryRuleKind[];
  onDelete: () => void;
  onOpenChange: (open: boolean) => void;
  /* Saves the draft; a message keeps it open and shows it. */
  onSave: (draft: LibraryRuleDraft) => Promise<string | null>;
  open: boolean;
  rule: LibraryRule;
}) => {
  const id = useId();
  const initial: LibraryRuleDraft = {
    description: rule.description ?? "",
    kindId: rule.kind.id,
    name: rule.name,
  };
  const [draft, setDraft] = useState(initial);
  const [error, setError] = useState<string | null>(null);
  const [isSaving, startSaving] = useTransition();
  const isDirty =
    draft.name !== initial.name ||
    draft.kindId !== initial.kindId ||
    draft.description !== initial.description;
  const optionKeys = rule.optionKeys ?? [];
  const change = (next: Partial<LibraryRuleDraft>) => {
    setDraft((current) => ({ ...current, ...next }));
    setError(null);
  };
  const save = () =>
    startSaving(async () => {
      const message = await onSave(draft);

      if (message) setError(message);
    });

  return (
    <FormOverlay
      open={open}
      onOpenChange={(next) => {
        if (!isSaving) onOpenChange(next);
      }}
      kicker={rule.kind.name}
      title={rule.name}
      footer={
        rule.isBuiltIn ? null : (
          <>
            <Button
              type="button"
              variant="destructive"
              disabled={isSaving}
              onClick={onDelete}
            >
              <AppIcon icon={appIcons.actions.delete} inline="start" />
              Delete
            </Button>
            <Button
              type="submit"
              form={`${id}-form`}
              disabled={isSaving || !isDirty || !draft.name.trim()}
              aria-busy={isSaving}
            >
              {isSaving ? <Spinner data-icon="inline-start" /> : null}
              Save
            </Button>
          </>
        )
      }
    >
      <div className="grid gap-5">
        <RuleMaker isBuiltIn={rule.isBuiltIn} />
        {rule.isBuiltIn ? (
          <>
            <p className="text-ink text-16 font-semibold">{rule.description}</p>
            {optionKeys.length ? (
              <ul className="text-ink-2 text-14 grid list-disc gap-1.5 pl-5 font-semibold">
                {optionKeys.map((key) => (
                  <li key={key}>{ruleOptionNotes[key]}</li>
                ))}
              </ul>
            ) : null}
          </>
        ) : (
          <form
            id={`${id}-form`}
            className="grid gap-4"
            onSubmit={(event) => {
              event.preventDefault();

              if (isDirty && draft.name.trim()) save();
            }}
          >
            <Field>
              <FieldLabel htmlFor={`${id}-name`}>Rule name</FieldLabel>
              <Input
                id={`${id}-name`}
                autoComplete="off"
                maxLength={libraryNameMaxLength.rule}
                value={draft.name}
                onChange={(event) =>
                  change({ name: event.currentTarget.value })
                }
              />
            </Field>
            <Field>
              <FieldLabel htmlFor={`${id}-kind`}>Kind</FieldLabel>
              <SelectControl
                id={`${id}-kind`}
                ariaLabel="Kind"
                placeholder="Pick a kind"
                value={String(draft.kindId)}
                onValueChange={(value) =>
                  change({ kindId: Number(value) || initial.kindId })
                }
                options={kinds.map((kind) => ({
                  label: kind.name,
                  value: String(kind.id),
                }))}
              />
            </Field>
            <Field>
              <FieldLabel htmlFor={`${id}-description`}>
                What it asks (optional)
              </FieldLabel>
              <Textarea
                id={`${id}-description`}
                maxLength={ruleDescriptionMaxLength}
                placeholder="Such as: heal only with items between battles."
                value={draft.description}
                onChange={(event) =>
                  change({ description: event.currentTarget.value })
                }
              />
            </Field>
            {error ? <FieldError>{error}</FieldError> : null}
          </form>
        )}
        <LibraryUsedIn plays={rule.plays} />
      </div>
    </FormOverlay>
  );
};
