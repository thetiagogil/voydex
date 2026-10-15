"use client";

import { PokemonTypeFilter } from "@/modules/reference/features/pokemon/components/pokemon-type-filter";
import { getPoolTileNotes } from "@/modules/mainline/features/plans/planner/data/plan-build-check";
import type {
  PlannerPokedexSection,
  PlannerPokemon,
  PlannerVersionGroup,
  PlanType,
} from "@/modules/mainline/features/plans/types";
import {
  PokemonCard,
  pokemonCardPickedClassName,
} from "@/modules/reference/features/pokemon/components/pokemon-card";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { EmptyState } from "@/shared/components/empty-state";
import { RangeHeading } from "@/shared/components/range-heading";
import { SearchControl } from "@/shared/components/search-control";
import { SectionHead } from "@/shared/components/section-head";
import { SegmentedControl } from "@/shared/components/segmented-control";
import { Toolbar } from "@/shared/components/toolbar";
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

const formatNumber = (value: number) => `#${String(value).padStart(3, "0")}`;

/*
 * v3 `.sec.pick`: every Pokémon of the version group, one range per
 * Pokédex (base, then each expansion) with a scope picker to show one,
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

  return (
    <section aria-labelledby="planner-pool" className="flex flex-col gap-4">
      <SectionHead
        title="Pick your Pokémon"
        titleId="planner-pool"
        className="flex-wrap gap-y-3"
        titleClassName="whitespace-nowrap"
        aside={
          isFull
            ? "Team is full. Tap one to swap it in"
            : "Tap to add to the next open slot"
        }
        action={
          sections.length > 1 ? (
            <SegmentedControl
              ariaLabel="Pokédex"
              selectedTone="strong"
              size="sm"
              className="no-scrollbar -mx-4 w-[calc(100%+2rem)] max-w-none flex-nowrap overflow-x-auto px-4 py-1.5 sm:mx-0 sm:w-auto sm:max-w-full sm:px-0 sm:py-0"
              value={filters.dex}
              onValueChange={(dex) => onFiltersChange({ ...filters, dex })}
              options={[
                {
                  count: shownSections.reduce(
                    (total, section) => total + section.pokemon.length,
                    0,
                  ),
                  label: "All",
                  value: "",
                },
                ...shownSections.map((section) => ({
                  count: section.pokemon.length,
                  label: section.name,
                  value: section.key,
                })),
              ]}
            />
          ) : null
        }
      />
      <Toolbar
        aria-label="Filter the Pokémon"
        search={
          <SearchControl
            id="planner-search"
            ariaLabel={`Search every Pokémon in ${versionGroup.name}`}
            placeholder={`Search every Pokémon in ${versionGroup.name}`}
            value={filters.query}
            onValueChange={(query) => onFiltersChange({ ...filters, query })}
          />
        }
        trailing={
          <SegmentedControl
            ariaLabel="Evolution"
            value={filters.fullyEvolved ? "final" : null}
            onValueChange={() =>
              onFiltersChange({
                ...filters,
                fullyEvolved: !filters.fullyEvolved,
              })
            }
            options={[{ label: "Fully evolved only", value: "final" }]}
          />
        }
      />
      <PokemonTypeFilter
        types={types}
        value={filters.type}
        onValueChange={(type) => onFiltersChange({ ...filters, type })}
      />

      {hasAny ? (
        scopedSections
          .filter((section) => section.pokemon.length)
          .map((section) => (
            <section
              key={section.key}
              id={`dex-${section.key}`}
              aria-labelledby={`dex-${section.key}-title`}
              className="flex scroll-mt-24 flex-col gap-3 [contain-intrinsic-size:auto_640px] [content-visibility:auto]"
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
                    <li key={pokemon.speciesId} className="min-w-0">
                      <button
                        type="button"
                        aria-pressed={slot !== undefined}
                        aria-label={[
                          pokemon.name,
                          slot ? `in slot ${slot}` : null,
                          ...notes,
                        ]
                          .filter(Boolean)
                          .join(". ")}
                        title={notes.join(" ") || undefined}
                        onClick={() => onPick(pokemon)}
                        style={getPokemonTypeCssVariables(
                          pokemon.types[0] &&
                            isPokemonTypeSlug(pokemon.types[0].slug)
                            ? pokemon.types[0].slug
                            : null,
                        )}
                        className="focus-visible:outline-focus block w-full rounded-lg outline-none focus-visible:outline-3 focus-visible:outline-offset-2 focus-visible:outline-solid"
                      >
                        <PokemonCard
                          state="plain"
                          size="fluid"
                          imageAlt=""
                          imageUrl={pokemon.imageUrl}
                          name={pokemon.name}
                          number={formatNumber(pokemon.nationalNumber)}
                          types={pokemon.types}
                          className={cn(
                            slot !== undefined && pokemonCardPickedClassName,
                            replacingId === pokemon.speciesId &&
                              "outline-game outline-3 outline-offset-2 outline-solid",
                          )}
                        >
                          {slot !== undefined ? (
                            <span
                              aria-hidden
                              className="bg-game text-12 absolute top-1.5 right-1.5 grid size-5.5 place-items-center rounded-full font-extrabold text-white tabular-nums"
                            >
                              {slot}
                            </span>
                          ) : null}
                          {notes.length ? (
                            <span
                              aria-hidden
                              className="bg-warn-soft text-warn-ink text-12 absolute bottom-1.5 left-1.5 grid size-5.5 place-items-center rounded-full font-extrabold"
                            >
                              !
                            </span>
                          ) : null}
                        </PokemonCard>
                      </button>
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
