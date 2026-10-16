const countFormat = new Intl.NumberFormat("en-US");

type BrowseResultSummaryProps = {
  hasActiveFilters: boolean;
  /* What the list holds, as in "Showing 12 of 40 games". */
  noun: string;
  shownCount: number;
  totalCount: number;
};

/*
 * How many items the filters leave, read out as they change but never
 * shown: a line appearing under the toolbar would push the list down. The
 * way back is the toolbar's Clear filters, and an empty list says so itself.
 */
export const BrowseResultSummary = ({
  hasActiveFilters,
  noun,
  shownCount,
  totalCount,
}: BrowseResultSummaryProps) => {
  return (
    <p aria-live="polite" className="sr-only">
      {hasActiveFilters
        ? `Showing ${countFormat.format(shownCount)} of ${countFormat.format(totalCount)} ${noun}`
        : `Showing all ${countFormat.format(totalCount)} ${noun}`}
    </p>
  );
};
