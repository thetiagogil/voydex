import Link from "next/link";

import { appRoutes } from "@/config/routes";
import { PokemonDetailScopeNav } from "@/modules/codex/components/pokemon-detail/pokemon-detail-scope-nav";
import { PokemonTypeList } from "@/modules/codex/components/pokemon-type-list";
import type { ResolvedPokemonDetailScope } from "@/modules/codex/data/pokemon-detail-scope";
import type { PokemonDetailData } from "@/modules/codex/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { PokemonPortrait } from "@/shared/components/pokemon/pokemon-portrait";
import { PokemonTypeMark } from "@/shared/components/pokemon/pokemon-type-icon";
import { Badge } from "@/shared/components/ui/badge";
import { isPokemonTypeSlug } from "@/shared/domain/pokemon/constants";
import { getPokemonCategoryLabel } from "@/shared/domain/pokemon/pokemon-categories";
import { formatPokemonNationalNumber } from "@/shared/domain/pokemon/pokemon-formatters";
import {
  getPokemonFormImageAlt,
  getPokemonFormImageUrl,
} from "@/shared/domain/pokemon/pokemon-images";

type PokemonDetailReferenceProps = {
  data: PokemonDetailData;
  scope: ResolvedPokemonDetailScope;
};

export const PokemonDetailReference = ({
  data,
  scope,
}: PokemonDetailReferenceProps) => {
  const form = scope.form;
  const primaryTypeSlug = form?.typePair.primaryType?.slug;
  const portraitType =
    primaryTypeSlug && isPokemonTypeSlug(primaryTypeSlug)
      ? primaryTypeSlug
      : null;
  const categoryLabel = getPokemonCategoryLabel({
    isBaby: data.species.is_baby,
    isLegendary: data.species.is_legendary,
    isMythical: data.species.is_mythical,
  });

  return (
    <section className="ring-app-surface-border bg-card/76 shadow-(--app-surface-shadow) rounded-xl p-4 ring-1 backdrop-blur-xl sm:p-5 lg:p-6">
      <div className="grid gap-6">
        <div>
          <Link
            href={appRoutes.codexPokemon}
            className="text-primary hover:text-primary/82 inline-flex items-center gap-2 text-sm font-medium transition-colors"
          >
            <AppIcon icon={appIcons.actions.back} size="sm" aria-hidden />
            Back to Pokédex
          </Link>
        </div>

        <div className="grid gap-6 lg:grid-cols-[minmax(16rem,25rem)_minmax(0,1fr)] lg:items-center">
          <PokemonPortrait
            alt={getPokemonFormImageAlt(form?.form ?? null)}
            imageUrl={getPokemonFormImageUrl(form?.form ?? null)}
            type={portraitType}
            className="aspect-[4/3] w-full rounded-xl"
            imageClassName="p-5"
            priority
          />

          <div className="grid gap-5">
            <div className="flex min-w-0 items-start gap-3">
              {portraitType ? (
                <PokemonTypeMark
                  type={portraitType}
                  className="mt-1 size-11 shrink-0"
                  iconClassName="size-5"
                />
              ) : null}

              <div className="min-w-0">
                <div className="text-muted-foreground text-sm font-medium">
                  {formatPokemonNationalNumber(data.species.national_number)}
                </div>
                <h1 className="mt-1 truncate text-4xl font-semibold tracking-normal">
                  {data.species.name}
                </h1>
                <p className="text-muted-foreground mt-2 max-w-2xl text-base">
                  Reference data for the selected generation and game.
                </p>
              </div>
            </div>

            <div className="flex flex-wrap items-center gap-2">
              {form ? (
                <PokemonTypeList
                  primaryType={form.typePair.primaryType}
                  secondaryType={form.typePair.secondaryType}
                />
              ) : null}
              {categoryLabel ? (
                <Badge variant="secondary">{categoryLabel}</Badge>
              ) : null}
            </div>

            <div className="border-app-surface-border/70 grid gap-4 border-t pt-4 sm:grid-cols-3">
              <div>
                <div className="text-muted-foreground text-xs">Generation</div>
                <div className="mt-1 font-semibold">
                  {scope.generation.generation.name}
                </div>
              </div>
              <div>
                <div className="text-muted-foreground text-xs">Game</div>
                <div className="mt-1 font-semibold">
                  {scope.game?.name ?? "All games"}
                </div>
              </div>
              <div>
                <div className="text-muted-foreground text-xs">Form</div>
                <div className="mt-1 font-semibold">
                  {form?.form.name ?? "Unknown"}
                </div>
              </div>
            </div>
          </div>
        </div>

        <PokemonDetailScopeNav data={data} scope={scope} />
      </div>
    </section>
  );
};
