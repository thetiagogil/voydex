import { cn } from "@/shared/utils/cn";

/*
 * One link in a bar of sections (the top bar, the Codex menu's trigger, a
 * Pokémon entry's docked index): quiet words on the band, the current one a
 * plain white pill in the selected ink. It is the same size and weight as a
 * hovered link, so it never grows or nudges its neighbours, and it swaps at
 * once, never fades. Its row keeps a `gap-2` so a hovered link never touches
 * the next one.
 */
export const getBarLinkClassName = (isCurrent: boolean) =>
  cn(
    "text-15 font-bold hover:text-(--bar-ink) inline-flex h-9 shrink-0 items-center rounded-full px-3 whitespace-nowrap text-(--bar-ink-2) hover:bg-(--bar-hover)",
    isCurrent &&
      "bg-(--bar-current) text-(--bar-current-ink) hover:bg-(--bar-current) hover:text-(--bar-current-ink)",
  );
