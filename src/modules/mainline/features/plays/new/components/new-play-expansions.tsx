"use client";

import { useId } from "react";

import type { GameExpansion } from "@/modules/reference/features/games/types";
import { ChoiceChip } from "@/shared/components/choice-chip";
import { FieldLabel } from "@/shared/components/ui/field";

/*
 * Step 3's expansions (a game with DLC only), as their own field: the ones
 * you own add their Pokédexes and milestones to the Play.
 */
export const NewPlayExpansions = ({
  expansions,
  onOwnedChange,
  owned,
}: {
  expansions: GameExpansion[];
  onOwnedChange: (versionGroupIds: number[]) => void;
  owned: number[];
}) => {
  const labelId = useId();

  return (
    <div className="flex flex-col gap-1.5">
      <FieldLabel id={labelId}>Expansions you own (optional)</FieldLabel>
      <div
        role="group"
        aria-labelledby={labelId}
        className="flex flex-wrap gap-2"
      >
        {expansions.map((expansion) => {
          const isOwned = owned.includes(expansion.versionGroupId);

          return (
            <ChoiceChip
              key={expansion.versionGroupId}
              pressed={isOwned}
              onClick={() =>
                onOwnedChange(
                  isOwned
                    ? owned.filter((id) => id !== expansion.versionGroupId)
                    : [...owned, expansion.versionGroupId],
                )
              }
            >
              {expansion.name}
            </ChoiceChip>
          );
        })}
      </div>
    </div>
  );
};
