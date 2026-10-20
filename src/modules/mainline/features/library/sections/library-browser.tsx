"use client";

import { useMemo, useState, type ReactNode } from "react";

import {
  defaultLibraryFilters,
  filterAndSortLibrary,
  hasActiveLibraryFilters,
  librarySortLabels,
  type LibraryFilters,
  type LibrarySort,
} from "@/modules/mainline/features/library/data/library-model";
import { LibraryRulesSection } from "@/modules/mainline/features/library/sections/library-rules-section";
import { LibraryTagsSection } from "@/modules/mainline/features/library/sections/library-tags-section";
import type {
  LibraryPageData,
  LibraryTab,
} from "@/modules/mainline/features/library/types";
import { EmptyState } from "@/shared/components/empty-state";
import {
  FilterSheetRow,
  FilterToolbar,
} from "@/shared/components/filter-toolbar";
import { FilterResultsLine } from "@/shared/components/filter-results-line";
import {
  FoldHead,
  FoldPanel,
  FoldToggle,
  useFold,
} from "@/shared/components/fold";
import { PageBand } from "@/shared/components/page-band";
import { ResetListButton } from "@/shared/components/reset-list-button";
import { SearchControl } from "@/shared/components/search-control";
import { SelectControl } from "@/shared/components/select-control";

/*
 * The Library's band (its head, the tabs and, folded under the head's
 * search button, the bar) and the open tab's list. Rules search by name or
 * kind, narrow by kind and sort by name or use; tags search and sort.
 */
export const LibraryBrowser = ({
  data,
  head,
  tab,
  tabs,
}: {
  data: LibraryPageData;
  head: ReactNode;
  tab: LibraryTab;
  tabs: ReactNode;
}) => {
  const [filters, setFilters] = useState<LibraryFilters>(defaultLibraryFilters);
  const fold = useFold({ defaultOpen: false });
  const isRules = tab === "rules";
  const all = isRules ? data.rules : data.tags;
  const rules = useMemo(
    () => filterAndSortLibrary(data.rules, filters),
    [data.rules, filters],
  );
  const tags = useMemo(
    () => filterAndSortLibrary(data.tags, { ...filters, kind: "" }),
    [data.tags, filters],
  );
  const shownCount = isRules ? rules.length : tags.length;
  const noun = isRules ? "rules" : "tags";
  const update = (next: Partial<LibraryFilters>) =>
    setFilters((current) => ({ ...current, ...next }));
  const resetList = () => setFilters(defaultLibraryFilters);
  const hasActiveFilters = hasActiveLibraryFilters(
    isRules ? filters : { ...filters, kind: "" },
  );

  return (
    <>
      <PageBand>
        <FoldHead
          toggle={
            <FoldToggle
              controls={fold.panelId}
              open={fold.open}
              onOpenChange={fold.setOpen}
            />
          }
        >
          {head}
        </FoldHead>
        {tabs}
        <FoldPanel id={fold.panelId} open={fold.open}>
          <FilterToolbar
            ariaLabel={`Filter your ${noun}`}
            className="mt-5"
            activeCount={isRules && filters.kind ? 1 : 0}
            resultLabel={`Show ${shownCount} ${shownCount === 1 ? noun.slice(0, -1) : noun}`}
            search={
              <SearchControl
                id="library-search"
                ariaLabel={`Search your ${noun}`}
                placeholder={`Search your ${noun}`}
                value={filters.query}
                onValueChange={(query) => update({ query })}
              />
            }
            filters={
              isRules
                ? (placement) => {
                    const kind = (
                      <SelectControl
                        id={
                          placement === "line"
                            ? "library-kind"
                            : "library-sheet-kind"
                        }
                        ariaLabel="Filter rules by kind"
                        resetValue=""
                        variant="ghost"
                        placeholder="All kinds"
                        value={filters.kind}
                        onValueChange={(value) => update({ kind: value })}
                        options={[
                          { label: "All kinds", value: "" },
                          ...data.kinds.map((item) => ({
                            label: item.name,
                            value: item.slug,
                          })),
                        ]}
                      />
                    );

                    return placement === "line" ? (
                      kind
                    ) : (
                      <FilterSheetRow htmlFor="library-sheet-kind" label="Kind">
                        {kind}
                      </FilterSheetRow>
                    );
                  }
                : undefined
            }
            controls={(placement) => {
              const sort = (
                <SelectControl
                  id={
                    placement === "line" ? "library-sort" : "library-sheet-sort"
                  }
                  ariaLabel={`Sort ${noun}`}
                  resetValue={defaultLibraryFilters.sort}
                  variant="ghost"
                  prefix={placement === "line" ? "Sort" : undefined}
                  placeholder={librarySortLabels.name}
                  value={filters.sort}
                  onValueChange={(sort) =>
                    update({ sort: sort as LibrarySort })
                  }
                  options={(
                    Object.keys(librarySortLabels) as LibrarySort[]
                  ).map((sort) => ({
                    label: librarySortLabels[sort],
                    value: sort,
                  }))}
                />
              );

              return placement === "line" ? (
                sort
              ) : (
                <FilterSheetRow htmlFor="library-sheet-sort" label="Sort">
                  {sort}
                </FilterSheetRow>
              );
            }}
          />
          <FilterResultsLine
            className="mt-3"
            hasActiveFilters={hasActiveFilters}
            isReordered={filters.sort !== defaultLibraryFilters.sort}
            noun={noun}
            nounOne={noun.slice(0, -1)}
            onReset={resetList}
            shownCount={shownCount}
            totalCount={all.length}
          />
        </FoldPanel>
      </PageBand>

      {all.length && !shownCount ? (
        <EmptyState
          variant="bare"
          title={`No ${noun} match.`}
          action={<ResetListButton onClick={resetList} />}
        />
      ) : isRules ? (
        <LibraryRulesSection kinds={data.kinds} rules={rules} />
      ) : (
        <LibraryTagsSection tags={tags} />
      )}
    </>
  );
};
