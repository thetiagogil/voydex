import { ClearFiltersButton } from "@/shared/components/clear-filters-button";
import { cn } from "@/shared/utils/cn";

const countFormat = new Intl.NumberFormat("en-US");

type BrowseResultSummaryProps = {
  hasActiveFilters: boolean;
  /* What the list holds, as in "Showing 12 of 40 games". */
  noun: string;
  onClearFilters: () => void;
  shownCount: number;
  totalCount: number;
};

/*
 * How many items the filters leave, with the way back to all of them. It
 * shows only while a filter is on; otherwise it is read out but not seen,
 * since the page head already says how many there are.
 */
export const BrowseResultSummary = ({
  hasActiveFilters,
  noun,
  onClearFilters,
  shownCount,
  totalCount,
}: BrowseResultSummaryProps) => {
  return (
    <div
      className={cn(
        "flex items-center justify-between gap-3",
        hasActiveFilters && "mt-3 min-h-9",
      )}
    >
      <p
        aria-live="polite"
        className={cn(
          "text-ink-2 text-14 font-semibold",
          !hasActiveFilters && "sr-only",
        )}
      >
        Showing{" "}
        <span className="tabular-nums">{countFormat.format(shownCount)}</span>{" "}
        of{" "}
        <span className="tabular-nums">{countFormat.format(totalCount)}</span>{" "}
        {noun}
      </p>
      {hasActiveFilters ? (
        <ClearFiltersButton onClick={onClearFilters} />
      ) : null}
    </div>
  );
};
