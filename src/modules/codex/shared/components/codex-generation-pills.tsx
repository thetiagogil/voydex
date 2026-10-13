"use client";

import { useEffect, useRef } from "react";

import {
  SegmentedControl,
  type SegmentedControlOption,
} from "@/shared/components/segmented-control";
import { cn } from "@/shared/utils/cn";

type CodexGenerationPillsProps<TValue extends string> = {
  className?: string;
  /* Not needed when every option is a link. */
  onValueChange?: (value: TValue) => void;
  options: readonly SegmentedControlOption<TValue>[];
  value: TValue | null;
};

/*
 * v3 `.gens`: the labelled generation pills of every Codex page that reads by
 * generation. Filters on the Pokémon list, links on a Pokémon's entry. On
 * phones the row scrolls sideways, edge to edge, and keeps the current pill
 * in view with the one before it.
 */
export const CodexGenerationPills = <TValue extends string>({
  className,
  onValueChange,
  options,
  value,
}: CodexGenerationPillsProps<TValue>) => {
  const rowRef = useRef<HTMLDivElement>(null);

  useEffect(() => {
    const row = rowRef.current;
    const current = row?.querySelector<HTMLElement>(
      '[aria-current], [aria-pressed="true"]',
    );

    if (!row || !current || row.scrollWidth <= row.clientWidth) {
      return;
    }

    const previous = current.previousElementSibling;
    const anchor = previous instanceof HTMLElement ? previous : current;

    row.scrollLeft = Math.max(anchor.offsetLeft - row.offsetLeft, 0);
  }, [value]);

  return (
    <div
      ref={rowRef}
      className={cn(
        "no-scrollbar flex items-center gap-2 max-sm:-mx-4 max-sm:-my-1.5 max-sm:overflow-x-auto max-sm:px-4 max-sm:py-1.5",
        className,
      )}
    >
      <span aria-hidden className="text-13 text-ink-3 shrink-0 font-bold">
        Generation
      </span>
      <SegmentedControl
        ariaLabel="Generation"
        className="max-w-none shrink-0 flex-nowrap"
        size="sm"
        onValueChange={onValueChange}
        options={options}
        value={value}
      />
    </div>
  );
};
