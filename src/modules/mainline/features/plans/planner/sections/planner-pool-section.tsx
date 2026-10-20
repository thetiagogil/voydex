"use client";

import { ChoiceChip } from "@/shared/components/choice-chip";
import { CornerBubble, SlotMark } from "@/shared/components/corner-bubble";
import { PokemonTypeFilter } from "@/modules/reference/features/pokemon/components/pokemon-type-filter";
import { getPoolTileNotes } from "@/modules/mainline/features/plans/planner/data/plan-build-check";
import type {
  PlannerPokedexSection,
  PlannerPokemon,
  PlannerVersionGroup,
  PlanType,
} from "@/modules/mainline/features/plans/types";
import { formatNationalNumber } from "@/modules/mainline/shared/utils/trainer-pokemon-display";
import { PokemonCard } from "@/modules/reference/features/pokemon/components/pokemon-card";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { EmptyState } from "@/shared/components/empty-state";
import { RangeHeading } from "@/shared/components/range-heading";
import { SelectControl } from "@/shared/components/select-control";
import { SearchControl } from "@/shared/components/search-control";
import { SectionHead } from "@/shared/components/section-head";
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
import { ExplanatoryTip } from "@/shared/components/explanatory-tip";
import { cn } from "@/shared/utils/cn";

export type PlannerPoolFilters = {
  /* One Pokédex's key (the base game or an expansion), or "" for all. */
  dex: string;
  fullyEvolved: boolean;
  query: string;
  type: string;
};

type PlannerPoolSectionProps = {
  byId: Map<number, PlannerPokemon>;
  filters: PlannerPoolFilters;
  isFull: boolean;
  onFiltersChange: (filters: PlannerPoolFilters) => void;
  onPick: (pokemon: PlannerPokemon) => void;
  /* The Pokémon waiting for a slot, while the team is full. */
  replacingId: number | null;
  sections: PlannerPokedexSection[];
  /* The slot (1 to 6) each picked species sits in. */
  slotBySpeciesId: Map<number, number>;
  types: PlanType[];
  versionGroup: PlannerVersionGroup;
};

export const matchesPoolFilters = (
  pokemon: PlannerPokemon,
  filters: PlannerPoolFilters,
) => {
  const query = filters.query.trim().toLocaleLowerCase("en");

  return (
    (!filters.fullyEvolved || pokemon.isFullyEvolved) &&
    (!filters.type ||
      pokemon.types.some((type) => type.slug === filters.type)) &&
    (!query || pokemon.name.toLocaleLowerCase("en").includes(query))
  );
};

/*
 * v3 `.sec.pick`: every Pokémon of the version group, one range per
 * Pokédex (base, then each expansion) with a Pokédex select in the bar,
 * search, "Fully evolved only" and the type dots. A tile shows its slot once picked and a
 * small "!" when it needs something; tapping adds it to the next open slot,
 * or, with a full team, asks which one it replaces.
 */
export const PlannerPoolSection = ({
  byId,
  filters,
  isFull,
  onFiltersChange,
  onPick,
  replacingId,
  sections,
  slotBySpeciesId,
  types,
  versionGroup,
}: PlannerPoolSectionProps) => {
  const shownSections = sections.map((section) => ({
    ...section,
    pokemon: section.speciesIds.flatMap((speciesId) => {
      const pokemon = byId.get(speciesId);
      return pokemon && matchesPoolFilters(pokemon, filters) ? [pokemon] : [];
    }),
  }));
  const scopedSections = shownSections.filter(
    (section) => !filters.dex || section.key === filters.dex,
  );
  const hasAny = scopedSections.some((section) => section.pokemon.length);

  /* The search and filter bar folds under the heading, opened from its row. */
  const fold = useFold({
    defaultOpen:
      Boolean(filters.query) || filters.fullyEvolved || Boolean(filters.type),
  });

  return (
    <section aria-labelledby="planner-pool" className="flex flex-col gap-4">
      <FoldHead
        toggle={
          <FoldToggle
            controls={fold.panelId}
            open={fold.open}
            onOpenChange={fold.setOpen}
          />
        }
      >
        <SectionHead
          title="Pick your Pokémon"
          titleId="planner-pool"
          className="flex-wrap gap-y-3"
          titleClassName="whitespace-nowrap"
          aside={
            isFull
              ? "Team is full. Tap one to swap it in"
              : "Tap to add, tap again to take it off"
          }
        />
      </FoldHead>
      <FoldPanel id={fold.panelId} open={fold.open}>
        <FilterToolbar
          ariaLabel="Filter the Pokémon"
          activeCount={
            (filters.fullyEvolved ? 1 : 0) +
            (filters.type ? 1 : 0) +
            (filters.dex ? 1 : 0)
          }
          resultLabel="Show Pokémon"
          search={
            <SearchControl
              id="planner-search"
              ariaLabel={`Search every Pokémon in ${versionGroup.name}`}
              placeholder={`Search every Pokémon in ${versionGroup.name}`}
              value={filters.query}
              onValueChange={(query) => onFiltersChange({ ...filters, query })}
            />
          }
          filters={(placement) => {
            const fullyEvolved = (
              <ChoiceChip
                size="lg"
                pressed={filters.fullyEvolved}
                onClick={() =>
                  onFiltersChange({
                    ...filters,
                    fullyEvolved: !filters.fullyEvolved,
                  })
                }
              >
                Fully evolved only
              </ChoiceChip>
            );

            /* The Pokédexes are filters here, so they sit with the rest. */
            const dex =
              sections.length > 1 ? (
                <SelectControl
                  id={
                    placement === "line" ? "planner-dex" : "planner-sheet-dex"
                  }
                  ariaLabel="Pokédex"
                  resetValue=""
                  variant="ghost"
                  placeholder="Every Pokédex"
                  value={filters.dex}
                  onValueChange={(value) =>
                    onFiltersChange({ ...filters, dex: value })
                  }
                  options={[
                    {
                      description: `${shownSections.reduce(
                        (total, section) => total + section.pokemon.length,
                        0,
                      )} Pokémon`,
                      label: "Every Pokédex",
                      value: "",
                    },
                    ...shownSections.map((section) => ({
                      description: `${section.pokemon.length} Pokémon`,
                      label: section.name,
                      value: section.key,
                    })),
                  ]}
                />
              ) : null;

            return placement === "line" ? (
              <>
                {dex}
                {fullyEvolved}
              </>
            ) : (
              <>
                {dex ? (
                  <FilterSheetRow htmlFor="planner-sheet-dex" label="Pokédex">
                    {dex}
                  </FilterSheetRow>
                ) : null}
                <FilterSheetRow label="Evolution">
                  {fullyEvolved}
                </FilterSheetRow>
              </>
            );
          }}
          row={(placement) => {
            const type = (
              <PokemonTypeFilter
                types={types}
                value={filters.type}
                onValueChange={(type) => onFiltersChange({ ...filters, type })}
              />
            );

            return placement === "line" ? (
              type
            ) : (
              <FilterSheetRow label="Type">{type}</FilterSheetRow>
            );
          }}
        />
      </FoldPanel>

      {hasAny ? (
        scopedSections
          .filter((section) => section.pokemon.length)
          .map((section) => (
            <section
              key={section.key}
              id={`dex-${section.key}`}
              aria-labelledby={`dex-${section.key}-title`}
              /*
               * Skipped while off screen, which clips its paint to its box:
               * a little room round the cards keeps their focus rings whole.
               */
              className="-m-2 flex scroll-mt-24 flex-col gap-3 p-2 [contain-intrinsic-size:auto_640px] [content-visibility:auto]"
            >
              <RangeHeading
                headingLevel={3}
                titleId={`dex-${section.key}-title`}
                title={section.name}
                count={`${section.pokemon.length} Pokémon${section.note ? ` · ${section.note}` : ""}`}
              />
              <ul className="mt-3.5 grid grid-cols-3 gap-2.5 min-[480px]:grid-cols-4 sm:grid-cols-[repeat(auto-fill,minmax(128px,1fr))] sm:gap-3">
                {section.pokemon.map((pokemon) => {
                  const slot = slotBySpeciesId.get(pokemon.speciesId);
                  const notes = getPoolTileNotes(pokemon, versionGroup);

                  return (
                    <li
                      key={pokemon.speciesId}
                      className="relative min-w-0 transition-transform duration-150 hover:-translate-y-0.75 motion-reduce:transition-none"
                    >
                      <button
                        type="button"
                        aria-pressed={slot !== undefined}
                        title={notes.join(" ") || undefined}
                        onClick={() => onPick(pokemon)}
                        style={getPokemonTypeCssVariables(
                          pokemon.types[0] &&
                            isPokemonTypeSlug(pokemon.types[0].slug)
                            ? pokemon.types[0].slug
                            : null,
                        )}
                        className="focus-ring block w-full rounded-lg"
                      >
                        <PokemonCard
                          state="plain"
                          size="fluid"
                          imageAlt=""
                          imageUrl={pokemon.imageUrl}
                          name={pokemon.name}
                          number={formatNationalNumber(pokemon.nationalNumber)}
                          types={pokemon.types}
                          picked={slot !== undefined}
                          className={cn(
                            /* The whole tile lifts, carrying its marks. */
                            "hover:translate-y-0",
                            replacingId === pokemon.speciesId &&
                              "outline-action outline-3 outline-offset-2 outline-solid",
                          )}
                        ></PokemonCard>
                        {slot || notes.length ? (
                          <span className="sr-only">
                            {[slot ? `, in slot ${slot}` : null, ...notes]
                              .filter(Boolean)
                              .join(". ")}
                          </span>
                        ) : null}
                      </button>
                      {slot !== undefined || notes.length ? (
                        /*
                         * The tile's marks in its top corner, inside it so
                         * they lift with it (the list's sections clip
                         * anything outside): the "!" of Your team's slots,
                         * then the slot number, both raised 24px dots.
                         */
                        <CornerBubble corner="inside-top-right">
                          {notes.length ? (
                            <ExplanatoryTip
                              triggerVariant="raised"
                              triggerTone="warn"
                              triggerLabel={`${pokemon.name}: ${notes[0]}`}
                              contentClassName="w-64"
                              content={notes.map((note) => (
                                <p key={note}>{note}</p>
                              ))}
                            />
                          ) : null}
                          {slot !== undefined ? (
                            <SlotMark>{slot}</SlotMark>
                          ) : null}
                        </CornerBubble>
                      ) : null}
                    </li>
                  );
                })}
              </ul>
            </section>
          ))
      ) : (
        <EmptyState variant="bare" title="Nothing matches." />
      )}
    </section>
  );
};
