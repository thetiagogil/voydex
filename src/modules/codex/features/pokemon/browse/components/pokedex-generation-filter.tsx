"use client";

import type { Generation } from "@/modules/reference/types";
import { SegmentedControl } from "@/shared/components/segmented-control";

type PokedexGenerationFilterProps = {
  generations: Generation[];
  onValueChange: (generation: string) => void;
  /* The picked generation's slug, or "" for every generation. */
  value: string;
};

/* "Generation VIII" reads as "VIII" beside the row's "Generation" label. */
const getGenerationNumeral = (generationName: string) => {
  return generationName.replace(/^Generation\s+/, "");
};

/*
 * v3 `.gens`: the labelled generation pills beside the page title, compact
 * (13px, 30px tall) from small screens up and 40px tall on phones, where the
 * row scrolls sideways, edge to edge. The pill size is set through the group
 * until SegmentedControl has a compact size of its own.
 */
export const PokedexGenerationFilter = ({
  generations,
  onValueChange,
  value,
}: PokedexGenerationFilterProps) => {
  const options = [
    { label: "All", value: "" },
    ...generations.map((generation) => ({
      label: getGenerationNumeral(generation.name),
      value: generation.slug,
    })),
  ];

  return (
    <div className="no-scrollbar flex items-center gap-2 max-sm:-mx-4 max-sm:-my-1.5 max-sm:overflow-x-auto max-sm:px-4 max-sm:py-1.5">
      <span aria-hidden className="text-13 text-ink-3 shrink-0 font-bold">
        Generation
      </span>
      <SegmentedControl
        ariaLabel="Generation"
        className="*:text-13 max-w-none shrink-0 flex-nowrap *:min-w-10 *:justify-center *:px-2.5 *:font-extrabold sm:*:h-7.5"
        onValueChange={onValueChange}
        options={options}
        value={value}
      />
    </div>
  );
};
