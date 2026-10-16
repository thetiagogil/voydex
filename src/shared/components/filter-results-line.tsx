import { ClearFiltersButton } from "@/shared/components/clear-filters-button";
import { cn } from "@/shared/utils/cn";

const countFormat = new Intl.NumberFormat("en-US");

type FilterResultsLineProps = {
  className?: string;
  hasActiveFilters: boolean;
  /* What the list holds, as a plural noun: "Pokémon", "games", "Plays". */
  noun: string;
  /* The singular, for a list of one ("Showing all 1 Play"); the plural if left out. */
  nounOne?: string;
  onClearFilters: () => void;
  shownCount: number;
  totalCount: number;
};

/*
 * The one line under every filterable list's toolbar: always there, so
 * filtering never pushes the list down or changes the bar's width. It reads
 * "Showing all 1,025 Pokémon", and while a filter is on "Showing 81 of 1,025
 * Pokémon" with Clear filters on its right (an empty list carries its own
 * Clear, so the line leaves it out then).
 */
export const FilterResultsLine = ({
  className,
  hasActiveFilters,
  noun,
  nounOne = noun,
  onClearFilters,
  shownCount,
  totalCount,
}: FilterResultsLineProps) => {
  const totalNoun = totalCount === 1 ? nounOne : noun;

  return (
    <div
      className={cn(
        "flex min-h-9 items-center justify-between gap-3 px-1",
        className,
      )}
    >
      <p className="text-ink-2 text-14 font-semibold" aria-live="polite">
        {hasActiveFilters ? (
          <>
            Showing{" "}
            <span className="tabular-nums">
              {countFormat.format(shownCount)}
            </span>{" "}
            of{" "}
            <span className="tabular-nums">
              {countFormat.format(totalCount)}
            </span>{" "}
            {totalNoun}
          </>
        ) : (
          <>
            Showing all{" "}
            <span className="tabular-nums">
              {countFormat.format(totalCount)}
            </span>{" "}
            {totalNoun}
          </>
        )}
      </p>
      {hasActiveFilters && shownCount ? (
        <ClearFiltersButton onClick={onClearFilters} />
      ) : null}
    </div>
  );
};
