"use client";

import type { ReactNode } from "react";

import { PokemonTypeFilter } from "@/modules/reference/features/pokemon/components/pokemon-type-filter";
import type { SpeciesGeneration } from "@/modules/reference/features/pokemon/data/species-generations";
import type { TrainerPokemonType } from "@/modules/mainline/shared/data/trainer-pokemon-model";
import { FilterResultsLine } from "@/shared/components/filter-results-line";
import {
  FilterSheetRow,
  FilterToolbar,
} from "@/shared/components/filter-toolbar";
import {
  FoldHead,
  FoldPanel,
  FoldToggle,
  useFold,
} from "@/shared/components/fold";
import { PageBand } from "@/shared/components/page-band";
import { SearchControl } from "@/shared/components/search-control";
import { SegmentedControl } from "@/shared/components/segmented-control";
import { SelectControl } from "@/shared/components/select-control";

/* What both Pokémon lists filter by; `kind` and `sort` are each list's own. */
export type CollectionFilterValues<Kind extends string, Sort extends string> = {
  /* A generation's id, or "" for every generation. */
  generation: string;
  kind: Kind;
  query: string;
  sort: Sort;
  /* A type slug, or "" for every type. */
  type: string;
};

type CollectionFilterBandProps<Kind extends string, Sort extends string> = {
  activeCount: number;
  defaults: CollectionFilterValues<Kind, Sort>;
  filters: CollectionFilterValues<Kind, Sort>;
  /* Every generation, for the Generation filter. */
  generations: SpeciesGeneration[];
  /* Any filter or search set, beyond the order. */
  hasFilters: boolean;
  /* The page's head, which opens the band above the toolbar. */
  head: ReactNode;
  /* Prefixes the controls' ids, one per list. */
  idPrefix: string;
  /* The Show choice, in order, with each one's count. */
  kinds: { count: number; label: string; value: Kind }[];
  /* "Your Pokémon", "your favourites": the toolbar and search name it. */
  listName: string;
  onChange: (next: Partial<CollectionFilterValues<Kind, Sort>>) => void;
  onReset: () => void;
  shownCount: number;
  sorts: { label: string; value: Sort }[];
  totalCount: number;
  types: TrainerPokemonType[];
  /* The views switch, between the head and the toolbar. */
  viewSwitch: ReactNode;
};

/*
 * The band over a Collection list of Pokémon: the head with its fold toggle,
 * the views switch, then, folded, one toolbar (search, Show, Generation,
 * Sort, the type dots) and the results line. Pokémon and Favourites share it.
 */
export const CollectionFilterBand = <Kind extends string, Sort extends string>({
  activeCount,
  defaults,
  filters,
  generations,
  hasFilters,
  head,
  idPrefix,
  kinds,
  listName,
  onChange,
  onReset,
  shownCount,
  sorts,
  totalCount,
  types,
  viewSwitch,
}: CollectionFilterBandProps<Kind, Sort>) => {
  const fold = useFold({ defaultOpen: hasFilters });
  const defaultSortLabel =
    sorts.find((sort) => sort.value === defaults.sort)?.label ?? "";

  return (
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
      {viewSwitch}
      <FoldPanel id={fold.panelId} open={fold.open}>
        <FilterToolbar
          ariaLabel={`Filter ${listName}`}
          className="mt-5"
          activeCount={activeCount}
          resultLabel={`Show ${shownCount} Pokémon`}
          search={
            <SearchControl
              id={`${idPrefix}-search`}
              ariaLabel={`Search ${listName}`}
              placeholder={`Search ${listName}`}
              value={filters.query}
              onValueChange={(query) => onChange({ query })}
            />
          }
          controls={(placement) => {
            const idPlace = placement === "line" ? "" : "sheet-";
            const generation = (
              <SelectControl
                id={`${idPrefix}-${idPlace}generation`}
                ariaLabel="Filter by generation"
                resetValue={defaults.generation}
                prefix={placement === "line" ? "Generation" : undefined}
                value={filters.generation}
                variant="ghost"
                placeholder="All generations"
                onValueChange={(generation) => onChange({ generation })}
                options={[
                  { label: "All generations", value: "" },
                  ...generations.map((each) => ({
                    label: each.name,
                    value: String(each.id),
                  })),
                ]}
              />
            );
            const sort = (
              <SelectControl
                id={`${idPrefix}-${idPlace}sort`}
                ariaLabel={`Sort ${listName}`}
                resetValue={defaults.sort}
                prefix={placement === "line" ? "Sort" : undefined}
                value={filters.sort}
                variant="ghost"
                placeholder={defaultSortLabel}
                onValueChange={(sort) => onChange({ sort: sort as Sort })}
                options={sorts}
              />
            );

            return placement === "line" ? (
              <>
                {generation}
                {sort}
              </>
            ) : (
              <>
                <FilterSheetRow
                  htmlFor={`${idPrefix}-sheet-generation`}
                  label="Generation"
                >
                  {generation}
                </FilterSheetRow>
                <FilterSheetRow htmlFor={`${idPrefix}-sheet-sort`} label="Sort">
                  {sort}
                </FilterSheetRow>
              </>
            );
          }}
          filters={(placement) => {
            const kind = (
              <SegmentedControl
                variant="segment"
                selectedTone="soft"
                ariaLabel="Show"
                value={filters.kind}
                onValueChange={(kind) => onChange({ kind })}
                options={kinds}
              />
            );

            return placement === "line" ? (
              kind
            ) : (
              <FilterSheetRow label="Show">{kind}</FilterSheetRow>
            );
          }}
          row={(placement) => {
            const type = (
              <PokemonTypeFilter
                types={types}
                value={filters.type}
                onValueChange={(type) => onChange({ type })}
              />
            );

            return placement === "line" ? (
              type
            ) : (
              <FilterSheetRow label="Type">{type}</FilterSheetRow>
            );
          }}
        />
        <FilterResultsLine
          className="mt-3"
          hasActiveFilters={hasFilters}
          isReordered={filters.sort !== defaults.sort}
          noun="Pokémon"
          onReset={onReset}
          shownCount={shownCount}
          totalCount={totalCount}
        />
      </FoldPanel>
    </PageBand>
  );
};
