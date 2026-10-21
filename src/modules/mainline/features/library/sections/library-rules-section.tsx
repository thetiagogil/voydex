"use client";

import { useRouter } from "next/navigation";
import { useState } from "react";
import { toast } from "sonner";

import { LibraryOwnerGroups } from "@/modules/mainline/features/library/components/library-owner-groups";
import { LibraryDeleteDialog } from "@/modules/mainline/features/library/components/library-delete-dialog";
import { LibraryRuleDetails } from "@/modules/mainline/features/library/components/library-rule-details";
import { getLibraryUsageLabel } from "@/modules/mainline/features/library/data/library-model";
import {
  deleteLibraryRuleAction,
  updateLibraryRuleAction,
} from "@/modules/mainline/features/library/server/library-actions";
import type {
  LibraryRule,
  LibraryRuleKind,
} from "@/modules/mainline/features/library/types";
import { Badge } from "@/shared/components/ui/badge";
import { Card } from "@/shared/components/ui/card";

type RuleDialog =
  | { mode: "delete"; rule: LibraryRule }
  | { mode: "view"; rule: LibraryRule };

/*
 * One rule as a card: its kind, its name, what it asks and where it's used.
 * Tapping it opens the rule in full, where yours is changed or deleted.
 */
const RuleCard = ({
  onView,
  rule,
}: {
  onView: () => void;
  rule: LibraryRule;
}) => {
  const usageLabel = getLibraryUsageLabel(rule);

  return (
    <li className="min-w-0">
      {/* Everything on the card sits inside it, so it lifts with the card. */}
      <Card
        size="sm"
        variant="interactive"
        className="relative h-full gap-2 px-5 py-4 sm:min-h-32"
      >
        <div className="flex min-h-8 items-center gap-2">
          <Badge>{rule.kind.name}</Badge>
        </div>
        <h2 className="text-16 text-ink line-clamp-2 font-sans leading-snug font-extrabold tracking-normal">
          {/* The whole card opens the rule. */}
          <button
            type="button"
            data-slot="card-open"
            aria-label={`${rule.name}, ${usageLabel}`}
            onClick={onView}
            className="text-left outline-none after:absolute after:inset-0 after:content-['']"
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
    </li>
  );
};

/*
 * Rules: a card for each rule you can pick, Voydex's and yours; New rule
 * sits in the page's head. A rule opens in full: changing yours fixes it in
 * every Play that keeps it, and deleting takes it off all of them.
 */
export const LibraryRulesSection = ({
  isFiltered,
  kinds,
  rules,
}: {
  /* The bar narrows the list: an empty group of yours is left out. */
  isFiltered: boolean;
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
      <LibraryOwnerGroups
        items={rules}
        emptyYours={
          isFiltered ? null : "No rules of yours yet. New rule makes one."
        }
        renderItem={(rule) => (
          <RuleCard
            key={rule.id}
            rule={rule}
            onView={() => setDialog({ mode: "view", rule })}
          />
        )}
      />

      {dialog?.mode === "view" ? (
        <LibraryRuleDetails
          key={dialog.rule.id}
          open
          onOpenChange={close}
          kinds={kinds}
          rule={dialog.rule}
          onDelete={() => setDialog({ mode: "delete", rule: dialog.rule })}
          onSave={async ({ description, kindId, name }) => {
            const result = await updateLibraryRuleAction({
              description,
              id: dialog.rule.id,
              kindId,
              name,
            });

            if (result.status === "error") return result.message;

            toast.success(result.message);
            setDialog(null);
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
