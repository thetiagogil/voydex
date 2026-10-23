import { getNatureFocus } from "@/modules/reference/features/pokemon/domain/nature-stats";
import type { SelectControlOption } from "@/shared/components/select-control";

import { NatureEffect } from "./nature-effect";

/*
 * Natures as select options: grouped by the stat each raises (the neutral
 * ones last), each ending in what it does. Within a group they keep their
 * order from the database. Every nature select builds its list with this.
 */
export const toNatureOptions = (
  natures: readonly {
    decreased: string | null;
    id: number;
    increased: string | null;
    name: string;
  }[],
): SelectControlOption[] =>
  natures
    .map((nature, index) => ({
      focus: getNatureFocus(nature.increased, nature.decreased),
      index,
      nature,
    }))
    .toSorted(
      (left, right) =>
        left.focus.order - right.focus.order || left.index - right.index,
    )
    .map(({ focus, nature }) => ({
      group: focus.label,
      label: nature.name,
      trailing: (
        <NatureEffect
          increased={nature.increased}
          decreased={nature.decreased}
        />
      ),
      value: String(nature.id),
    }));
