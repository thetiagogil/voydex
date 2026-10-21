import type { ReactNode } from "react";

import { SectionHead } from "@/shared/components/section-head";

/*
 * The Rules and Presets tabs, split by who made them: yours first, then
 * Voydex's own (used, never changed). A group with nothing in it is left
 * out, except yours while the bar isn't narrowing the list, which says how
 * to make one.
 */
export const LibraryOwnerGroups = <
  TItem extends { id: string; isBuiltIn: boolean },
>({
  emptyYours,
  items,
  renderItem,
}: {
  /* Shown in your group while it's empty, or null to leave it out. */
  emptyYours: string | null;
  items: TItem[];
  renderItem: (item: TItem) => ReactNode;
}) => {
  const yours = items.filter((item) => !item.isBuiltIn);
  const voydex = items.filter((item) => item.isBuiltIn);
  const grid = (group: TItem[]) => (
    <ul className="grid gap-4 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4">
      {group.map((item) => renderItem(item))}
    </ul>
  );

  return (
    <div className="grid gap-8 sm:gap-10">
      {yours.length || emptyYours ? (
        <section aria-label="Yours" className="grid gap-4">
          <SectionHead title="Yours" aside={yours.length || undefined} />
          {yours.length ? (
            grid(yours)
          ) : (
            <p className="text-ink-2 text-15 font-semibold">{emptyYours}</p>
          )}
        </section>
      ) : null}
      {voydex.length ? (
        <section aria-label="Made by Voydex" className="grid gap-4">
          <SectionHead title="Made by Voydex" aside={voydex.length} />
          {grid(voydex)}
        </section>
      ) : null}
    </div>
  );
};
