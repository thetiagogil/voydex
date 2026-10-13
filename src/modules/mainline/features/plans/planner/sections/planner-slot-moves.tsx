"use client";

import { useEffect, useState } from "react";

import {
  loadPlanMemberOptionsAction,
  type PlanMemberOptions,
} from "@/modules/mainline/features/plans/planner/server/plan-member-options-action";
import type {
  PlanMember,
  PlanMoveSlots,
} from "@/modules/mainline/features/plans/types";
import { EmptyState } from "@/shared/components/empty-state";
import {
  SearchSelect,
  type SearchSelectOption,
} from "@/shared/components/search-select";
import { Label } from "@/shared/components/ui/label";
import { Spinner } from "@/shared/components/ui/spinner";

type OptionsState =
  | { key: string; options: PlanMemberOptions; status: "success" }
  | { key: string; message: string; status: "error" };

type PlannerSlotMovesProps = {
  /* Whether the version group's capability profile has held items. */
  heldItemsApply: boolean;
  member: PlanMember;
  onChange: (
    changes: Pick<Partial<PlanMember>, "heldItemId" | "moveIds">,
  ) => void;
  versionGroupSlug: string;
};

/*
 * The slot sheet's held item and four moves (v3 `targetSheet`'s build). Its
 * choices load when it opens: what the Pokémon learns in every game of the
 * version group, and held items only where the group has them.
 */
export const PlannerSlotMoves = ({
  heldItemsApply,
  member,
  onChange,
  versionGroupSlug,
}: PlannerSlotMovesProps) => {
  const key = `${member.formId}:${versionGroupSlug}`;
  const [state, setState] = useState<OptionsState | null>(null);

  useEffect(() => {
    let isCurrent = true;

    void loadPlanMemberOptionsAction({
      formId: member.formId,
      versionGroupSlug,
    }).then((result) => {
      if (isCurrent) setState({ ...result, key });
    });

    return () => {
      isCurrent = false;
    };
  }, [key, member.formId, versionGroupSlug]);

  if (!state || state.key !== key) {
    return (
      <div className="grid place-items-center py-4">
        <Spinner
          aria-label="Loading its held items and moves"
          className="text-action"
        />
      </div>
    );
  }

  if (state.status === "error") {
    return <EmptyState variant="bare" title={state.message} />;
  }

  const { heldItems, moves } = state.options;
  const moveOptions: SearchSelectOption[] = moves.map((move) => ({
    detail: [move.typeName, move.damageClass].filter(Boolean).join(" · "),
    label: move.name,
    value: String(move.id),
  }));
  /* A saved move its learnset here no longer lists stays visible. */
  const savedOnly = member.moveIds.flatMap((moveId) =>
    moveId !== null && !moves.some((move) => move.id === moveId)
      ? [{ label: "A move not in its learnset here", value: String(moveId) }]
      : [],
  );
  const picked = member.moveIds.map((moveId) =>
    moveId === null ? null : String(moveId),
  );

  return (
    <div className="grid gap-3">
      {heldItemsApply ? (
        <div className="flex flex-col gap-1.5">
          <Label
            htmlFor="plan-slot-held-item"
            className="text-ink-2 text-13 font-bold"
          >
            Held item
          </Label>
          <SearchSelect
            id="plan-slot-held-item"
            placeholder="Any"
            value={member.heldItemId ? String(member.heldItemId) : null}
            onValueChange={(value) =>
              onChange({ heldItemId: value ? Number(value) : null })
            }
            options={heldItems.map((item) => ({
              label: item.name,
              value: String(item.id),
            }))}
          />
        </div>
      ) : null}
      <fieldset className="grid gap-1.5">
        <legend className="text-ink-2 text-13 mb-1.5 font-bold">Moves</legend>
        {moveOptions.length || savedOnly.length ? (
          <div className="grid gap-2 sm:grid-cols-2">
            {picked.map((value, index) => (
              <SearchSelect
                key={index}
                ariaLabel={`Move ${index + 1}`}
                placeholder={`Move ${index + 1}: any`}
                value={value}
                onValueChange={(next) => {
                  const moveIds = [...member.moveIds] as PlanMoveSlots;
                  moveIds[index] = next ? Number(next) : null;
                  onChange({ moveIds });
                }}
                options={[...moveOptions, ...savedOnly].filter(
                  (option) =>
                    option.value === value || !picked.includes(option.value),
                )}
              />
            ))}
          </div>
        ) : (
          <p className="text-ink-2 text-14 font-semibold">
            Voydex doesn&apos;t have its moves for this game yet.
          </p>
        )}
      </fieldset>
    </div>
  );
};
