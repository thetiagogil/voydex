"use client";

import { useState } from "react";

import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { cn } from "@/shared/utils/cn";

import type { MainlinePlayCollectibleEntry } from "../types";

/*
 * One collectible as a token: missing is a dashed square with its number;
 * found is gold, with a white border, a gold lip and the number on a tab. It
 * pops only at the moment it is marked found. While it saves it stays
 * focusable, so a keyboard keeps its place in the list.
 */
export const CollectibleToken = ({
  className,
  describedBy,
  entry,
  isFound,
  isPending,
  onToggle,
}: {
  /* Its size: a fixed square in a row of places, or a grid cell. */
  className: string;
  describedBy?: string;
  entry: MainlinePlayCollectibleEntry;
  isFound: boolean;
  isPending: boolean;
  onToggle: () => void;
}) => {
  const [isPopping, setIsPopping] = useState(false);

  return (
    <button
      type="button"
      aria-label={`${entry.name} found`}
      aria-pressed={isFound}
      aria-describedby={describedBy}
      aria-disabled={isPending || undefined}
      onClick={() => {
        if (isPending) {
          return;
        }

        if (!isFound) {
          setIsPopping(true);
        }

        onToggle();
      }}
      onAnimationEnd={() => setIsPopping(false)}
      className={cn(
        "focus-visible:outline-focus relative grid aspect-square shrink-0 place-items-center rounded-lg p-0 transition-transform duration-150 outline-none hover:-translate-y-0.5 focus-visible:outline-3 focus-visible:outline-offset-2 focus-visible:outline-solid aria-disabled:cursor-wait",
        isFound ? "sticker [--t:var(--gold)]" : "empty-slot",
        isPopping && "animate-pop",
        className,
      )}
    >
      {isFound ? (
        <AppIcon
          icon={appIcons.product.collectible}
          className="text-warn-ink -mt-1.5 size-[42%]"
          aria-hidden
        />
      ) : null}
      <span
        className={cn(
          "font-extrabold tabular-nums",
          isFound
            ? "text-12 text-ink-2 absolute -bottom-[9px] left-1/2 -translate-x-1/2 rounded-full bg-white px-[7px] shadow-[0_1px_2px_rgb(90_70_35/0.18)]"
            : "text-13 text-ink-3",
        )}
      >
        {entry.sortOrder}
      </span>
    </button>
  );
};
