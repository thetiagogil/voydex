"use client";

import { useState } from "react";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";

import type { MainlinePlayCollectibleEntry } from "../types";
import { IconTip } from "@/shared/components/icon-tip";

/*
 * One collectible as a token: missing is a dashed square with its number;
 * found is a small card of yours in gold, as a caught Pokédex entry is one
 * in its type's colour (a frame round a paler face, its mark and its number
 * on it). It
 * pops only at the moment it is marked found, and settles back softly when
 * it is unmarked. While it saves it stays
 * focusable, so a keyboard keeps its place in the list. Its place in the
 * grid lifts it on hover, so anything pinned to it lifts too.
 */
export const CollectibleToken = ({
  className,
  entry,
  isFound,
  isPending,
  onToggle,
  place,
}: {
  /* Its size: a fixed square in a row of places, or a grid cell. */
  className: string;
  entry: MainlinePlayCollectibleEntry;
  isFound: boolean;
  isPending: boolean;
  onToggle: () => void;
  /* Where it hides, when the area holds several places. */
  place: string | null;
}) => {
  const [motion, setMotion] = useState<"pop" | "settle" | null>(null);

  return (
    <IconTip
      label={place}
      trigger={
        <button
          type="button"
          aria-label={`${entry.name}${place ? `, ${place},` : ""} found`}
          aria-pressed={isFound}
          aria-disabled={isPending || undefined}
          onClick={() => {
            if (isPending) {
              return;
            }

            setMotion(isFound ? "settle" : "pop");

            onToggle();
          }}
          onAnimationEnd={() => setMotion(null)}
          className={cn(
            "focus-ring relative grid aspect-square shrink-0 place-items-center rounded-lg p-0 aria-disabled:cursor-wait",
            isFound ? "card-frame p-1 [--t:var(--gold)]" : "empty-slot",
            motion === "pop" && "animate-pop",
            motion === "settle" && "animate-settle",
            className,
          )}
        >
          {isFound ? (
            <span className="card-face flex size-full flex-col items-center justify-center rounded-[1.125rem]">
              <AppIcon
                icon={appIcons.product.collectible}
                className="text-warn-ink size-[40%]"
                aria-hidden
              />
              <span className="text-ink-tint copy-mark tabular-nums">
                {entry.sortOrder}
              </span>
            </span>
          ) : (
            <span className="text-ink-3 copy-label tabular-nums">
              {entry.sortOrder}
            </span>
          )}
        </button>
      }
    />
  );
};
