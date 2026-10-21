"use client";

import { useId, useState, useTransition } from "react";

import { LibraryPresetBoard } from "@/modules/mainline/features/library/components/library-preset-board";
import { orderPresetRules } from "@/modules/mainline/features/library/data/preset-board";
import type {
  LibraryRule,
  LibraryRuleKind,
} from "@/modules/mainline/features/library/types";
import { FormOverlay } from "@/modules/mainline/shared/components/form-overlay";
import type { RulePreset } from "@/modules/mainline/shared/data/rule-presets";
import {
  libraryNameMaxLength,
  ruleDescriptionMaxLength,
} from "@/modules/mainline/shared/utils/library-names";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { SheetSection } from "@/shared/components/sheet-section";
import { Button } from "@/shared/components/ui/button";
import { Field, FieldError, FieldLabel } from "@/shared/components/ui/field";
import { Input } from "@/shared/components/ui/input";
import { Spinner } from "@/shared/components/ui/spinner";
import { Textarea } from "@/shared/components/ui/textarea";

export type LibraryPresetDraft = {
  description: string;
  name: string;
  ruleIds: string[];
};

/*
 * A preset in full, opened from its card or made with New preset. Voydex's
 * own reads as it is: what it's for and its rules by kind. Yours (or a new
 * one) is its name, what it's for and its board, with Save, and Delete for
 * one you already have.
 */
export const LibraryPresetDetails = ({
  kinds,
  onDelete,
  onOpenChange,
  onSave,
  open,
  preset,
  rules,
}: {
  /* The rule kinds in their order, to group a preset's rules. */
  kinds: LibraryRuleKind[];
  onDelete?: () => void;
  onOpenChange: (open: boolean) => void;
  /* Saves the draft; a message keeps it open and shows it. */
  onSave: (draft: LibraryPresetDraft) => Promise<string | null>;
  open: boolean;
  /* Null for a new preset. */
  preset: RulePreset | null;
  /* Every rule you can pick, Voydex's and yours. */
  rules: LibraryRule[];
}) => {
  const id = useId();
  const initial: LibraryPresetDraft = {
    description: preset?.description ?? "",
    name: preset?.name ?? "",
    ruleIds: preset?.ruleIds ?? [],
  };
  const [draft, setDraft] = useState(initial);
  const [error, setError] = useState<string | null>(null);
  const [isSaving, startSaving] = useTransition();
  const isBuiltIn = preset?.isBuiltIn ?? false;
  const isDirty =
    draft.name !== initial.name ||
    draft.description !== initial.description ||
    draft.ruleIds.toSorted().join() !== initial.ruleIds.toSorted().join();
  const canSave =
    isDirty && Boolean(draft.name.trim()) && draft.ruleIds.length > 0;
  const change = (next: Partial<LibraryPresetDraft>) => {
    setDraft((current) => ({ ...current, ...next }));
    setError(null);
  };

  return (
    <FormOverlay
      open={open}
      onOpenChange={(next) => {
        if (!isSaving) onOpenChange(next);
      }}
      presentation="side"
      size="lg"
      kicker={`Preset · Made by ${isBuiltIn ? "Voydex" : "you"}`}
      title={preset?.name ?? "New preset"}
      footer={
        isBuiltIn ? null : (
          <>
            {preset && onDelete ? (
              <Button
                type="button"
                variant="destructive"
                disabled={isSaving}
                onClick={onDelete}
              >
                <AppIcon icon={appIcons.actions.delete} inline="start" />
                Delete
              </Button>
            ) : null}
            <Button
              type="submit"
              form={`${id}-form`}
              disabled={isSaving || !canSave}
              aria-busy={isSaving}
            >
              {isSaving ? <Spinner data-icon="inline-start" /> : null}
              {preset ? "Save" : "Add preset"}
            </Button>
          </>
        )
      }
    >
      {isBuiltIn && preset ? (
        <div className="grid gap-6">
          {preset.description ? (
            <p className="text-ink text-16 font-semibold">
              {preset.description}
            </p>
          ) : null}
          <SheetSection
            title="Its rules"
            aside={`${preset.ruleIds.length} rules`}
          >
            <ul className="grid gap-2">
              {orderPresetRules(preset.ruleIds, rules, kinds).map((rule) => (
                <li
                  key={rule.id}
                  className="bg-surface-2 grid gap-0.5 rounded-xl px-4 py-3"
                >
                  <span className="text-ink text-15 font-bold">
                    {rule.name}
                  </span>
                  {rule.description ? (
                    <span className="text-ink-2 text-14 font-semibold">
                      {rule.description}
                    </span>
                  ) : null}
                </li>
              ))}
            </ul>
          </SheetSection>
        </div>
      ) : (
        <form
          id={`${id}-form`}
          className="grid gap-5"
          onSubmit={(event) => {
            event.preventDefault();

            if (!canSave) return;

            startSaving(async () => {
              const message = await onSave(draft);

              if (message) setError(message);
            });
          }}
        >
          <Field>
            <FieldLabel htmlFor={`${id}-name`}>Preset name</FieldLabel>
            <Input
              id={`${id}-name`}
              autoComplete="off"
              maxLength={libraryNameMaxLength.preset}
              value={draft.name}
              onChange={(event) => change({ name: event.currentTarget.value })}
            />
          </Field>
          <Field>
            <FieldLabel htmlFor={`${id}-description`}>
              {"What it's for (optional)"}
            </FieldLabel>
            <Textarea
              id={`${id}-description`}
              maxLength={ruleDescriptionMaxLength}
              placeholder="Such as: the rules every run of mine keeps."
              value={draft.description}
              onChange={(event) =>
                change({ description: event.currentTarget.value })
              }
            />
          </Field>
          <SheetSection title="Its rules" aside="Drag them in, or tap +">
            <LibraryPresetBoard
              kinds={kinds}
              rules={rules}
              ruleIds={draft.ruleIds}
              onChange={(ruleIds) => change({ ruleIds })}
            />
          </SheetSection>
          {error ? <FieldError>{error}</FieldError> : null}
        </form>
      )}
    </FormOverlay>
  );
};
