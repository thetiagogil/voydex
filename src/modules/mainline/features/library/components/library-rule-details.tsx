"use client";

import { getLibraryUsageLabel } from "@/modules/mainline/features/library/data/library-model";
import type { LibraryRule } from "@/modules/mainline/features/library/types";
import { FormOverlay } from "@/modules/mainline/shared/components/form-overlay";
import { ruleOptionNotes } from "@/modules/mainline/shared/data/challenge-rule-options";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Button } from "@/shared/components/ui/button";

/*
 * A rule in full, opened from its card: its kind and maker, everything it
 * asks, the options each Play sets for it and where it's used. Yours offers
 * Edit and Delete; Voydex's own stays as it is.
 */
export const LibraryRuleDetails = ({
  onDelete,
  onEdit,
  onOpenChange,
  open,
  rule,
}: {
  onDelete: () => void;
  onEdit: () => void;
  onOpenChange: (open: boolean) => void;
  open: boolean;
  rule: LibraryRule;
}) => {
  const optionKeys = rule.optionKeys ?? [];

  return (
    <FormOverlay
      open={open}
      onOpenChange={onOpenChange}
      kicker={`${rule.kind.name} · ${rule.isBuiltIn ? "Voydex's own" : "Yours"}`}
      title={rule.name}
      footer={
        rule.isBuiltIn ? null : (
          <>
            <Button type="button" variant="destructive" onClick={onDelete}>
              <AppIcon icon={appIcons.actions.delete} inline="start" />
              Delete
            </Button>
            <Button type="button" variant="secondary" onClick={onEdit}>
              <AppIcon icon={appIcons.actions.edit} inline="start" />
              Edit
            </Button>
          </>
        )
      }
    >
      <div className="grid gap-4">
        <p className="text-ink text-16 font-semibold">
          {rule.description ??
            "Your own rule: Voydex keeps it on your Plays as you named it."}
        </p>
        {optionKeys.length ? (
          <ul className="text-ink-2 text-14 grid list-disc gap-1.5 pl-5 font-semibold">
            {optionKeys.map((key) => (
              <li key={key}>{ruleOptionNotes[key]}</li>
            ))}
          </ul>
        ) : null}
        {rule.isBuiltIn ? (
          <p className="text-ink-2 text-14 flex items-center gap-2 font-semibold">
            <AppIcon icon={appIcons.status.locked} size="sm" />
            {"Voydex's own rule: you can use it, not change it."}
          </p>
        ) : null}
        <p className="text-ink-3 text-14 font-semibold">
          {getLibraryUsageLabel(rule)}
        </p>
      </div>
    </FormOverlay>
  );
};
