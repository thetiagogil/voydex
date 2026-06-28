import Link from "next/link";
import type { ReactNode } from "react";

import { appRoutes } from "@/config/routes";
import { cn } from "@/lib/utils";
import { PokemonDetailVisualPanel } from "@/modules/codex/components/pokemon-detail/pokemon-detail-visual-panel";
import {
  getPokemonStatTotal,
  PokemonStats,
} from "@/modules/codex/components/pokemon-detail/pokemon-detail-stats";
import { PokemonTypeList } from "@/modules/codex/components/pokemon-type-list";
import type {
  Ability,
  AbilityAttribute,
  EggGroup,
  PokemonAttributes,
  PokemonAvailabilitySummary,
  PokemonDetailData,
  PokemonEvolutionEdgeSummary,
  PokemonEvolutionSpeciesSummary,
} from "@/modules/codex/types";
import { getPokemonDetailScopeHref } from "@/modules/codex/utils/pokemon-detail-routes";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { PokemonPortrait } from "@/shared/components/pokemon/pokemon-portrait";
import { Badge } from "@/shared/components/ui/badge";
import { isPokemonTypeSlug } from "@/shared/domain/pokemon/constants";
import { getPokemonCategoryLabel } from "@/shared/domain/pokemon/pokemon-categories";
import {
  formatPokemonHeight,
  formatPokemonNationalNumber,
  formatPokemonWeight,
} from "@/shared/domain/pokemon/pokemon-formatters";
import {
  getPokemonFormImageAlt,
  getPokemonFormImageUrl,
  getPokemonFormShinyImageUrl,
} from "@/shared/domain/pokemon/pokemon-images";
import type { ResolvedPokemonDetailScope } from "@/modules/codex/data/pokemon-detail-scope";

type PokemonDetailDossierProps = {
  data: PokemonDetailData;
  scope: ResolvedPokemonDetailScope;
};

type DossierSectionProps = {
  children: ReactNode;
  className?: string;
  title: string;
};

type InfoItemProps = {
  children: ReactNode;
  label: string;
};

type AbilityTileProps = {
  ability: Ability;
  description: string | null;
  label: string;
};

type EvolutionLineProps = {
  currentSpeciesId: number;
  edges: PokemonEvolutionEdgeSummary[];
  gameSlug: string | null;
  species: PokemonEvolutionSpeciesSummary[];
};

type AvailabilityListProps = {
  availability: PokemonAvailabilitySummary[];
  gameName: string | null;
};

type PokedexNumberListProps = {
  data: PokemonDetailData;
  scope: ResolvedPokemonDetailScope;
};

const DossierSection = ({
  children,
  className,
  title,
}: DossierSectionProps) => {
  return (
    <section className={cn("grid gap-3", className)}>
      <h2 className="text-primary text-xs font-semibold tracking-widest uppercase">
        {title}
      </h2>
      {children}
    </section>
  );
};

const InfoItem = ({ children, label }: InfoItemProps) => {
  return (
    <div className="border-app-surface-border/70 min-w-0 border-l pl-3 first:border-l-0 first:pl-0">
      <div className="text-muted-foreground text-xs">{label}</div>
      <div className="mt-1 min-w-0 font-semibold">{children}</div>
    </div>
  );
};

const AbilityTile = ({ ability, description, label }: AbilityTileProps) => {
  return (
    <div className="ring-app-surface-border bg-background/35 min-w-0 flex-1 basis-56 rounded-lg p-3 ring-1">
      <div className="text-muted-foreground text-xs">{label}</div>
      <div className="mt-1 font-semibold">{ability.name}</div>
      {description ? (
        <p className="text-muted-foreground mt-2 text-sm leading-5">
          {description}
        </p>
      ) : null}
    </div>
  );
};

const getAbilityById = (abilities: Ability[]) => {
  return new Map(abilities.map((ability) => [ability.id, ability]));
};

const getEggGroupById = (eggGroups: EggGroup[]) => {
  return new Map(eggGroups.map((eggGroup) => [eggGroup.id, eggGroup]));
};

const getAbilityDescription = (
  abilityId: number,
  abilityAttributes: AbilityAttribute[],
  scope: ResolvedPokemonDetailScope,
) => {
  const versionGroupId = scope.versionGroup?.versionGroup.id;
  const matchingAttributes = abilityAttributes
    .filter((attribute) => {
      return attribute.ability_id === abilityId;
    })
    .sort((a, b) => {
      return b.version_group_start_id - a.version_group_start_id;
    });

  if (!matchingAttributes.length) {
    return null;
  }

  if (!versionGroupId) {
    return matchingAttributes[0].effect_summary;
  }

  return (
    matchingAttributes.find((attribute) => {
      return attribute.version_group_start_id <= versionGroupId;
    })?.effect_summary ?? matchingAttributes[0].effect_summary
  );
};

const getAbilityTiles = (
  data: PokemonDetailData,
  scope: ResolvedPokemonDetailScope,
) => {
  const attributes = scope.form?.attributes;

  if (!attributes) {
    return [];
  }

  const abilityById = getAbilityById(data.abilities);
  const abilityDefinitions = [
    { id: attributes.primary_ability_id, label: "Ability 1" },
    { id: attributes.secondary_ability_id, label: "Ability 2" },
    { id: attributes.hidden_ability_id, label: "Hidden ability" },
  ];

  return abilityDefinitions.flatMap(({ id, label }) => {
    if (!id) {
      return [];
    }

    const ability = abilityById.get(id);

    if (!ability) {
      return [];
    }

    return [
      {
        ability,
        description: getAbilityDescription(id, data.abilityAttributes, scope),
        label,
      },
    ];
  });
};

const getEggGroupNames = (
  attributes: PokemonAttributes | null,
  eggGroups: EggGroup[],
) => {
  if (!attributes) {
    return [];
  }

  const eggGroupById = getEggGroupById(eggGroups);

  return [
    attributes.primary_egg_group_id
      ? eggGroupById.get(attributes.primary_egg_group_id)?.name
      : null,
    attributes.secondary_egg_group_id
      ? eggGroupById.get(attributes.secondary_egg_group_id)?.name
      : null,
  ].filter((name): name is string => Boolean(name));
};

const hasAnyAbilityData = (forms: PokemonDetailData["forms"]) => {
  return forms.some((form) => {
    return form.attributesByGeneration.some((attributes) => {
      return Boolean(
        attributes.primary_ability_id ||
        attributes.secondary_ability_id ||
        attributes.hidden_ability_id,
      );
    });
  });
};

const hasAnyEggGroupData = (forms: PokemonDetailData["forms"]) => {
  return forms.some((form) => {
    return form.attributesByGeneration.some((attributes) => {
      return Boolean(
        attributes.primary_egg_group_id || attributes.secondary_egg_group_id,
      );
    });
  });
};

const getFormOptions = (
  data: PokemonDetailData,
  scope: ResolvedPokemonDetailScope,
) => {
  return scope.generation.forms.map((form) => ({
    href: getPokemonDetailScopeHref(data.species.slug, {
      form: form.form.slug,
      game: scope.game?.slug,
      generation: scope.generation.generation.slug,
      versionGroup: scope.versionGroup?.versionGroup.slug,
    }),
    label: form.form.name,
    value: form.form.slug,
  }));
};

const AvailabilityList = ({
  availability,
  gameName,
}: AvailabilityListProps) => {
  if (!availability.length) {
    return (
      <p className="text-muted-foreground text-sm">
        No availability rows are seeded for this game scope.
      </p>
    );
  }

  return (
    <div className="grid gap-2">
      {availability.map(({ availability: row, game, method }) => (
        <div
          key={row.id}
          className="border-app-surface-border/70 grid gap-2 border-t pt-3 first:border-t-0 first:pt-0 sm:grid-cols-3 sm:items-start"
        >
          <div className="min-w-0">
            <div className="font-medium">
              {game?.name ?? gameName ?? "Version group scope"}
            </div>
            <div className="text-muted-foreground text-xs">
              {row.game_id
                ? "Game-specific"
                : gameName
                  ? "Shared version-group data"
                  : "Shared scope"}
            </div>
          </div>
          <Badge variant="secondary">{method?.name ?? "Availability"}</Badge>
          <p className="text-muted-foreground text-sm">
            {row.notes ?? method?.description ?? "No availability notes."}
          </p>
        </div>
      ))}
    </div>
  );
};

const PokedexNumberList = ({ data, scope }: PokedexNumberListProps) => {
  const localEntries = scope.pokedexEntries.filter(({ pokedex }) => {
    return !pokedex?.name.toLowerCase().includes("national");
  });

  return (
    <div className="grid gap-2">
      <div className="flex items-center justify-between gap-3">
        <span className="text-muted-foreground">National Pokédex</span>
        <span className="font-semibold tabular-nums">
          {formatPokemonNationalNumber(data.species.national_number)}
        </span>
      </div>

      {localEntries.length ? (
        localEntries.map(({ entry, pokedex }) => (
          <div
            key={`${entry.pokedex_id}-${entry.pokedex_number}`}
            className="flex items-center justify-between gap-3"
          >
            <span className="text-muted-foreground">
              {pokedex?.name ?? "Local Pokédex"}
            </span>
            <span className="font-semibold tabular-nums">
              {formatPokemonNationalNumber(entry.pokedex_number)}
            </span>
          </div>
        ))
      ) : (
        <p className="text-muted-foreground text-sm">
          No local Pokédex number is seeded for this scope.
        </p>
      )}
    </div>
  );
};

const getEvolutionCondition = ({
  edge,
  method,
}: PokemonEvolutionEdgeSummary) => {
  if (edge.condition_summary) {
    return edge.condition_summary;
  }

  if (edge.minimum_level) {
    return `Level ${edge.minimum_level}`;
  }

  return method?.name ?? "Evolution";
};

const EvolutionLine = ({
  currentSpeciesId,
  edges,
  gameSlug,
  species,
}: EvolutionLineProps) => {
  if (!species.length) {
    return (
      <p className="text-muted-foreground text-sm">
        No evolution data is seeded yet.
      </p>
    );
  }

  return (
    <div className="grid gap-3">
      <div className="grid gap-2 sm:grid-cols-3 lg:grid-cols-1 xl:grid-cols-3">
        {species.map((summary) => {
          const primaryTypeSlug = summary.typePair.primaryType?.slug;
          const portraitType =
            primaryTypeSlug && isPokemonTypeSlug(primaryTypeSlug)
              ? primaryTypeSlug
              : null;
          const isCurrentSpecies = summary.species.id === currentSpeciesId;

          return (
            <Link
              key={summary.species.id}
              href={
                gameSlug
                  ? appRoutes.codexPokemonGameSpecies(
                      gameSlug,
                      summary.species.slug,
                    )
                  : appRoutes.codexPokemonSpecies(summary.species.slug)
              }
              aria-current={isCurrentSpecies ? "page" : undefined}
              className={cn(
                "ring-app-surface-border hover:bg-background/55 focus-visible:ring-ring bg-background/30 grid gap-2 rounded-lg p-3 text-center ring-1 transition-colors focus-visible:ring-2 focus-visible:outline-none",
                isCurrentSpecies && "ring-primary/60",
              )}
            >
              <PokemonPortrait
                alt={getPokemonFormImageAlt(summary.defaultForm)}
                imageUrl={getPokemonFormImageUrl(summary.defaultForm)}
                type={portraitType}
                className="mx-auto size-20 rounded-full"
                imageClassName="p-2"
              />
              <div>
                <div className="text-muted-foreground text-xs">
                  {formatPokemonNationalNumber(summary.species.national_number)}
                </div>
                <div className="font-semibold">{summary.species.name}</div>
              </div>
            </Link>
          );
        })}
      </div>

      {edges.length ? (
        <div className="grid gap-2">
          {edges.map((edge) => (
            <div
              key={edge.edge.id}
              className="text-muted-foreground flex items-start gap-2 text-sm"
            >
              <AppIcon
                icon={appIcons.actions.continue}
                className="text-primary mt-0.5"
                size="sm"
                aria-hidden
              />
              <span>
                <span className="text-foreground font-medium">
                  {edge.fromSpecies?.name ?? "Unknown"}
                </span>{" "}
                to{" "}
                <span className="text-foreground font-medium">
                  {edge.toSpecies?.name ?? "Unknown"}
                </span>
                : {getEvolutionCondition(edge)}
              </span>
            </div>
          ))}
        </div>
      ) : null}
    </div>
  );
};

export const PokemonDetailDossier = ({
  data,
  scope,
}: PokemonDetailDossierProps) => {
  const form = scope.form;
  const attributes = form?.attributes ?? null;
  const primaryTypeSlug = form?.typePair.primaryType?.slug;
  const portraitType =
    primaryTypeSlug && isPokemonTypeSlug(primaryTypeSlug)
      ? primaryTypeSlug
      : null;
  const formOptions = getFormOptions(data, scope);
  const abilityTiles = getAbilityTiles(data, scope);
  const eggGroupNames = getEggGroupNames(attributes, data.eggGroups);
  const scopeUnavailableLabel = `Not available in ${scope.generation.generation.name}`;
  const hasAbilitiesForAnyScope = hasAnyAbilityData(data.forms);
  const hasEggGroupsForAnyScope = hasAnyEggGroupData(data.forms);
  const categoryLabel = getPokemonCategoryLabel({
    isBaby: data.species.is_baby,
    isLegendary: data.species.is_legendary,
    isMythical: data.species.is_mythical,
  });
  const statTotal = getPokemonStatTotal(attributes);

  return (
    <section className="ring-app-surface-border bg-card/76 rounded-xl p-4 shadow-(--app-surface-shadow) ring-1 backdrop-blur-xl sm:p-5 lg:p-6">
      <div className="grid gap-6 lg:grid-cols-3">
        <aside className="lg:border-app-surface-border/70 grid content-start gap-5 lg:col-span-1 lg:border-r lg:pr-6">
          <PokemonDetailVisualPanel
            activeFormSlug={form?.form.slug ?? null}
            formOptions={formOptions}
            imageAlt={getPokemonFormImageAlt(form?.form ?? null)}
            normalImageUrl={getPokemonFormImageUrl(form?.form ?? null)}
            portraitType={portraitType}
            shinyImageUrl={getPokemonFormShinyImageUrl(form?.form ?? null)}
          />

          <DossierSection title="Evolution line">
            <EvolutionLine
              currentSpeciesId={data.species.id}
              edges={data.evolutionFamily.edges}
              gameSlug={scope.game?.slug ?? null}
              species={data.evolutionFamily.species}
            />
          </DossierSection>
        </aside>

        <div className="grid content-start gap-6 lg:col-span-2">
          <DossierSection title="Core data">
            <div className="grid gap-4 sm:grid-cols-2 xl:grid-cols-4">
              <InfoItem label="Typing">
                <PokemonTypeList
                  primaryType={form?.typePair.primaryType ?? null}
                  secondaryType={form?.typePair.secondaryType ?? null}
                  badgeSize="sm"
                />
              </InfoItem>
              <InfoItem label="Height">
                {formatPokemonHeight(form?.form.height_decimeters ?? null)}
              </InfoItem>
              <InfoItem label="Weight">
                {formatPokemonWeight(form?.form.weight_hectograms ?? null)}
              </InfoItem>
              <InfoItem label="Stats total">{statTotal ?? "Unknown"}</InfoItem>
              <InfoItem label="Form">{form?.form.name ?? "Unknown"}</InfoItem>
              <InfoItem label="Introduced">
                {form?.introducedGeneration?.name ??
                  scope.generation.generation.name}
              </InfoItem>
              <InfoItem label="Egg groups">
                {eggGroupNames.length
                  ? eggGroupNames.join(", ")
                  : hasEggGroupsForAnyScope
                    ? scopeUnavailableLabel
                    : "Unknown"}
              </InfoItem>
              <InfoItem label="Category">
                {categoryLabel ?? "Standard"}
              </InfoItem>
            </div>
          </DossierSection>

          <DossierSection title="Abilities">
            {abilityTiles.length ? (
              <div className="flex flex-wrap gap-3">
                {abilityTiles.map(({ ability, description, label }) => (
                  <AbilityTile
                    key={`${label}-${ability.id}`}
                    ability={ability}
                    description={description}
                    label={label}
                  />
                ))}
              </div>
            ) : (
              <p className="text-muted-foreground text-sm">
                {hasAbilitiesForAnyScope
                  ? `Abilities are not available in ${scope.generation.generation.name}.`
                  : "No ability data is available."}
              </p>
            )}
          </DossierSection>

          <DossierSection title="Battle stats">
            <PokemonStats attributes={attributes} />
          </DossierSection>

          <div className="grid gap-6 xl:grid-cols-5">
            <DossierSection title="Game availability" className="xl:col-span-3">
              <AvailabilityList
                availability={scope.availability}
                gameName={scope.game?.name ?? null}
              />
            </DossierSection>

            <DossierSection title="Pokédex numbers" className="xl:col-span-2">
              <PokedexNumberList data={data} scope={scope} />
            </DossierSection>
          </div>
        </div>
      </div>
    </section>
  );
};
