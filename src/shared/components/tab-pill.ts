import { cn } from "@/shared/utils/cn";

/*
 * One tab of a page: a 36px pill that switches what the page under it shows
 * (a Play's tabs, the Library's, the Collection's). White with a thin
 * outline like every quiet control, the current one filled with the blue.
 * It is the same size and weight picked or not, so moving tab never shifts
 * the row. Its row keeps a `gap-2`.
 */
export const getTabPillClassName = (isCurrent: boolean) =>
  cn(
    "text-15 h-9 rounded-full border-[1.5px] font-semibold whitespace-nowrap",
    isCurrent
      ? "bg-calm border-transparent text-white"
      : "border-lip bg-surface text-ink-2 hover:bg-hover hover:text-ink",
  );
