import { cn } from "@/shared/utils/cn";

/*
 * A link's label, as wide as its bold self whether or not it is current, so
 * moving between sections never nudges the row's other links.
 */
export const SteadyLabel = ({ children }: { children: string }) => (
  <span className="grid justify-items-center">
    <span className="col-start-1 row-start-1">{children}</span>
    <span
      aria-hidden
      className="invisible col-start-1 row-start-1 font-extrabold"
    >
      {children}
    </span>
  </span>
);

/*
 * One link in a bar of sections (the top bar, the Codex menu's trigger, a
 * Pokémon entry's docked index): quiet words on the band, the current one a
 * small sticker in the selected tint. It swaps at once, never fades. Pair
 * it with `SteadyLabel`.
 */
export const getBarLinkClassName = (isCurrent: boolean) =>
  cn(
    "text-14 hover:text-ink inline-flex h-9 shrink-0 items-center rounded-full px-3 font-semibold whitespace-nowrap text-(--bar-ink-2) hover:bg-(--bar-hover)",
    isCurrent &&
      "bubble bg-(--bar-current) font-extrabold text-(--bar-current-ink) hover:bg-(--bar-current) hover:text-(--bar-current-ink)",
  );
