"use client";

import { useRouter } from "next/navigation";
import { useState } from "react";
import { toast } from "sonner";

import { LibraryDeleteDialog } from "@/modules/mainline/features/library/components/library-delete-dialog";
import { LibraryPresetDetails } from "@/modules/mainline/features/library/components/library-preset-details";
import {
  deleteLibraryPresetAction,
  saveLibraryPresetAction,
} from "@/modules/mainline/features/library/server/library-actions";
import { orderPresetRules } from "@/modules/mainline/features/library/data/preset-board";
import type {
  LibraryRule,
  LibraryRuleKind,
} from "@/modules/mainline/features/library/types";
import type { RulePreset } from "@/modules/mainline/shared/data/rule-presets";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { SectionHead } from "@/shared/components/section-head";
import { Badge } from "@/shared/components/ui/badge";
import { Button } from "@/shared/components/ui/button";
import { Card } from "@/shared/components/ui/card";

type PresetDialog =
  | { mode: "delete"; preset: RulePreset }
  | { mode: "new" }
  | { mode: "view"; preset: RulePreset };

/*
 * One preset as a card: its name and its rules, by kind.
 * Tapping it opens it in full; Voydex's own wears a lock.
 */
const PresetCard = ({
  onView,
  preset,
  ruleNames,
}: {
  onView: () => void;
  preset: RulePreset;
  ruleNames: string[];
}) => (
  <li className="min-w-0">
    <Card
      size="sm"
      variant="interactive"
      className="relative h-full gap-2 px-5 py-4 sm:min-h-32"
    >
      <div className="flex min-h-8 items-center gap-2 pr-24">
        <Badge>{`${ruleNames.length} rules`}</Badge>
      </div>
      <h3 className="text-16 text-ink line-clamp-2 font-sans leading-snug font-extrabold tracking-normal">
        {/* The whole card opens the preset. */}
        <button
          type="button"
          data-slot="card-open"
          aria-label={`${preset.name}, ${ruleNames.length} rules`}
          onClick={onView}
          className="text-left outline-none after:absolute after:inset-0 after:content-['']"
        >
          {preset.name}
        </button>
      </h3>
      <p className="text-ink-2 text-14 line-clamp-2 font-semibold">
        {ruleNames.join(" · ")}
      </p>
      {preset.isBuiltIn ? (
        <Badge
          variant="outline"
          title="Made by Voydex: you can use it, not change it"
          className="pointer-events-none absolute top-4 right-4"
        >
          <AppIcon icon={appIcons.status.locked} inline="start" />
          Voydex
        </Badge>
      ) : null}
    </Card>
  </li>
);

/*
 * Presets, first in the Rules tab: Voydex's Nuzlockes and yours, each a
 * group of rules a Play takes in one go. New preset sits in the section's
 * head; a preset of yours is built on a board.
 */
export const LibraryPresetsSection = ({
  kinds,
  presets,
  rules,
}: {
  kinds: LibraryRuleKind[];
  presets: RulePreset[];
  /* Every rule you can pick, for names and the board. */
  rules: LibraryRule[];
}) => {
  const router = useRouter();
  const [dialog, setDialog] = useState<PresetDialog | null>(null);
  const close = (open: boolean) => {
    if (!open) setDialog(null);
  };
  const save =
    (presetId?: string) =>
    async ({
      description,
      name,
      ruleIds,
    }: {
      description: string;
      name: string;
      ruleIds: string[];
    }) => {
      const result = await saveLibraryPresetAction({
        description,
        id: presetId,
        name,
        ruleIds,
      });

      if (result.status === "error") return result.message;

      toast.success(result.message);
      setDialog(null);
      router.refresh();

      return null;
    };

  return (
    <section aria-labelledby="library-presets" className="grid gap-4">
      <SectionHead
        title="Presets"
        titleId="library-presets"
        headingLevel={2}
        aside="Rules that go together, added in one go"
        action={
          <Button
            type="button"
            variant="secondary"
            onClick={() => setDialog({ mode: "new" })}
          >
            <AppIcon icon={appIcons.actions.create} inline="start" />
            New preset
          </Button>
        }
      />
      <ul className="grid gap-4 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4">
        {presets.map((preset) => (
          <PresetCard
            key={preset.id}
            preset={preset}
            ruleNames={orderPresetRules(preset.ruleIds, rules, kinds).map(
              (rule) => rule.name,
            )}
            onView={() => setDialog({ mode: "view", preset })}
          />
        ))}
      </ul>

      {dialog?.mode === "new" ? (
        <LibraryPresetDetails
          open
          preset={null}
          kinds={kinds}
          rules={rules}
          onOpenChange={close}
          onSave={save()}
        />
      ) : null}

      {dialog?.mode === "view" ? (
        <LibraryPresetDetails
          key={dialog.preset.id}
          open
          preset={dialog.preset}
          kinds={kinds}
          rules={rules}
          onOpenChange={close}
          onSave={save(dialog.preset.id)}
          onDelete={() => setDialog({ mode: "delete", preset: dialog.preset })}
        />
      ) : null}

      {dialog?.mode === "delete" ? (
        <LibraryDeleteDialog
          open
          onOpenChange={close}
          name={dialog.preset.name}
          noun="preset"
          usage={{ playCount: 0, plays: [] }}
          onConfirm={async () => {
            const result = await deleteLibraryPresetAction(dialog.preset.id);

            if (result.status === "error") return result.message;

            toast.success(`${dialog.preset.name} deleted`);
            router.refresh();

            return null;
          }}
        />
      ) : null}
    </section>
  );
};
