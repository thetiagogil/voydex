"use client";

import { useRouter } from "next/navigation";
import { useState } from "react";
import { toast } from "sonner";

import { LibraryDeleteDialog } from "@/modules/mainline/features/library/components/library-delete-dialog";
import { LibraryItemMenu } from "@/modules/mainline/features/library/components/library-item-menu";
import { LibraryRuleDetails } from "@/modules/mainline/features/library/components/library-rule-details";
import { LibraryNameDialog } from "@/modules/mainline/features/library/components/library-name-dialog";
import { getLibraryUsageLabel } from "@/modules/mainline/features/library/data/library-model";
import {
  deleteLibraryRuleAction,
  updateLibraryRuleAction,
} from "@/modules/mainline/features/library/server/library-actions";
import type {
  LibraryRule,
  LibraryRuleKind,
} from "@/modules/mainline/features/library/types";
import { libraryNameMaxLength } from "@/modules/mainline/shared/utils/library-names";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { Badge } from "@/shared/components/ui/badge";
import { Button } from "@/shared/components/ui/button";
import { EmptyState } from "@/shared/components/empty-state";
import { Card } from "@/shared/components/ui/card";

type RuleDialog =
  | { mode: "delete"; rule: LibraryRule }
  | { mode: "edit"; rule: LibraryRule }
  | { mode: "view"; rule: LibraryRule };

/*
 * One rule as a card: its kind, its name, what it asks and where it's used.
 * Tapping it opens the rule in full. Yours has a ⋯ with Edit and Delete;
 * Voydex's own wears a lock and stays as it is.
 */
const RuleCard = ({
  onDelete,
  onEdit,
  onView,
  rule,
}: {
  onDelete: () => void;
  onEdit: () => void;
  onView: () => void;
  rule: LibraryRule;
}) => {
  const usageLabel = getLibraryUsageLabel(rule);

  return (
    <li className="relative min-w-0">
      <Card
        size="sm"
        variant="interactive"
        className="relative h-full gap-2 px-5 py-4 sm:min-h-32"
      >
        {/* Room at the end for the menu, which sits over it. */}
        <div className="flex min-h-8 items-center gap-2 pr-10">
          <Badge>{rule.kind.name}</Badge>
        </div>
        <h2 className="text-16 text-ink line-clamp-2 font-sans leading-snug font-extrabold tracking-normal">
          {/* The whole card opens the rule; the ⋯ sits above it. */}
          <button
            type="button"
            aria-label={`${rule.name}, ${usageLabel}`}
            onClick={onView}
            className="focus-ring text-left after:absolute after:inset-0 after:rounded-[inherit] after:content-['']"
          >
            {rule.name}
          </button>
        </h2>
        {rule.description ? (
          <p className="text-ink-2 text-14 line-clamp-2 font-semibold">
            {rule.description}
          </p>
        ) : null}
        <p className="text-ink-3 text-13 mt-auto font-semibold">{usageLabel}</p>
      </Card>
      {rule.isBuiltIn ? (
        <Badge
          variant="outline"
          title="Voydex's own rule: you can use it, not change it"
          className="pointer-events-none absolute top-4 right-4"
        >
          <AppIcon icon={appIcons.status.locked} inline="start" />
          Voydex
        </Badge>
      ) : (
        <LibraryItemMenu
          editLabel="Edit"
          usageLabel={usageLabel}
          onEdit={onEdit}
          onDelete={onDelete}
          trigger={
            <Button
              type="button"
              variant="ghost"
              size="icon-sm"
              aria-label={`${rule.name}: more actions`}
              className="absolute top-3 right-3"
            >
              <AppIcon icon={appIcons.actions.more} />
            </Button>
          }
        />
      )}
    </li>
  );
};

/*
 * Rules: a card for each rule you can pick, Voydex's and yours; New rule
 * sits in the page's head. Editing a name fixes it in every Play that
 * keeps the rule; deleting takes it off all of them.
 */
export const LibraryRulesSection = ({
  kinds,
  rules,
}: {
  kinds: LibraryRuleKind[];
  rules: LibraryRule[];
}) => {
  const router = useRouter();
  const [dialog, setDialog] = useState<RuleDialog | null>(null);
  const close = (open: boolean) => {
    if (!open) setDialog(null);
  };

  return (
    <section aria-label="Rules">
      {rules.length ? null : (
        <EmptyState variant="bare" title="No rules yet. New rule makes one." />
      )}
      <ul className="grid gap-4 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4">
        {rules.map((rule) => (
          <RuleCard
            key={rule.id}
            rule={rule}
            onEdit={() => setDialog({ mode: "edit", rule })}
            onDelete={() => setDialog({ mode: "delete", rule })}
            onView={() => setDialog({ mode: "view", rule })}
          />
        ))}
      </ul>

      {dialog?.mode === "view" ? (
        <LibraryRuleDetails
          open
          onOpenChange={close}
          rule={dialog.rule}
          onEdit={() => setDialog({ mode: "edit", rule: dialog.rule })}
          onDelete={() => setDialog({ mode: "delete", rule: dialog.rule })}
        />
      ) : null}

      {dialog?.mode === "edit" ? (
        <LibraryNameDialog
          key={dialog.rule.id}
          open
          onOpenChange={close}
          title="Edit rule"
          submitLabel="Save"
          nameLabel="Rule name"
          maxLength={libraryNameMaxLength.rule}
          kinds={kinds}
          initial={{ kindId: dialog.rule.kind.id, name: dialog.rule.name }}
          onSubmit={async ({ kindId, name }) => {
            if (!kindId) return "Pick a kind from the list.";

            const result = await updateLibraryRuleAction({
              id: dialog.rule.id,
              kindId,
              name,
            });

            if (result.status === "error") return result.message;

            toast.success(result.message);
            router.refresh();

            return null;
          }}
        />
      ) : null}

      {dialog?.mode === "delete" ? (
        <LibraryDeleteDialog
          open
          onOpenChange={close}
          name={dialog.rule.name}
          noun="rule"
          usage={dialog.rule}
          onConfirm={async () => {
            const result = await deleteLibraryRuleAction(dialog.rule.id);

            if (result.status === "error") return result.message;

            toast.success(`${dialog.rule.name} deleted`);
            router.refresh();

            return null;
          }}
        />
      ) : null}
    </section>
  );
};
