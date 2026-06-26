import Link from "next/link";
import type { ReactNode } from "react";

import { cn } from "@/lib/utils";
import {
  buildPokemonDetailVersionGroupScopes,
  getPokemonDetailScopeQuery,
  type PokemonDetailVersionGroupScope,
  type ResolvedPokemonDetailScope,
} from "@/modules/codex/data/pokemon-detail-scope";
import type {
  Game,
  PokemonDetailData,
  PokemonGenerationDetail,
} from "@/modules/codex/types";
import { getPokemonDetailScopeHref } from "@/modules/codex/utils/pokemon-detail-routes";
import { AppIcon, appIcons } from "@/shared/components/app-icon";

type PokemonDetailScopeNavProps = {
  data: PokemonDetailData;
  scope: ResolvedPokemonDetailScope;
};

type ScopeLinkProps = {
  children: ReactNode;
  href: string;
  isActive: boolean;
};

const getShortGenerationLabel = (generationName: string) => {
  return generationName.replace("Generation ", "");
};

const getVersionGroupGame = (
  versionGroup?: PokemonDetailVersionGroupScope | null,
) => {
  return versionGroup?.games[0] ?? null;
};

const getGenerationHref = (
  speciesSlug: string,
  generation: PokemonGenerationDetail,
) => {
  const versionGroups = buildPokemonDetailVersionGroupScopes(generation);

  return getPokemonDetailScopeHref(
    speciesSlug,
    getPokemonDetailScopeQuery(
      generation,
      versionGroups[0],
      getVersionGroupGame(versionGroups[0]),
    ),
  );
};

const getGameVersionGroup = (
  game: Game,
  versionGroups: PokemonDetailVersionGroupScope[],
) => {
  return (
    versionGroups.find((versionGroup) => {
      return versionGroup.versionGroup.id === game.version_group_id;
    }) ?? null
  );
};

const getGameHref = (
  speciesSlug: string,
  scope: ResolvedPokemonDetailScope,
  game: Game,
) => {
  const versionGroup = getGameVersionGroup(game, scope.versionGroups);

  return getPokemonDetailScopeHref(speciesSlug, {
    form: scope.form?.form.slug,
    game: game.slug,
    generation: scope.generation.generation.slug,
    versionGroup: versionGroup?.versionGroup.slug,
  });
};

const ScopeLink = ({ children, href, isActive }: ScopeLinkProps) => {
  return (
    <Link
      href={href}
      aria-current={isActive ? "page" : undefined}
      className={cn(
        "border-app-surface-border text-muted-foreground hover:bg-primary/10 hover:text-foreground focus-visible:ring-ring inline-flex h-9 items-center justify-center rounded-lg border bg-background/24 px-3 text-sm font-medium transition-colors focus-visible:ring-2 focus-visible:outline-none",
        isActive && "border-primary/50 bg-primary/16 text-primary",
      )}
    >
      {children}
    </Link>
  );
};

export const PokemonDetailScopeNav = ({
  data,
  scope,
}: PokemonDetailScopeNavProps) => {
  return (
    <section className="border-app-surface-border/70 grid gap-5 border-t pt-5">
      <div className="grid gap-2">
        <div className="flex items-end justify-between gap-4">
          <div>
            <h2 className="text-sm font-semibold">Reference scope</h2>
            <p className="text-muted-foreground mt-1 text-sm">
              Choose the generation and game this page should describe.
            </p>
          </div>

          {scope.versionGroup ? (
            <div className="text-muted-foreground hidden text-right text-sm sm:block">
              <div>Version group</div>
              <div className="text-foreground font-medium">
                {scope.versionGroup.versionGroup.name}
              </div>
            </div>
          ) : null}
        </div>
      </div>

      <div className="grid gap-4">
        <div className="grid gap-2">
          <div className="text-muted-foreground text-xs font-medium">
            Generation
          </div>
          <div className="flex flex-wrap gap-2">
            {data.generationDetails.map((generation) => (
              <ScopeLink
                key={generation.generation.id}
                href={getGenerationHref(data.species.slug, generation)}
                isActive={
                  generation.generation.id === scope.generation.generation.id
                }
              >
                {getShortGenerationLabel(generation.generation.name)}
              </ScopeLink>
            ))}
          </div>
        </div>

        {scope.generation.games.length ? (
          <div className="grid gap-2">
            <div className="text-muted-foreground text-xs font-medium">
              Game
            </div>
            <div className="grid gap-2 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4">
              {scope.generation.games.map((game) => (
                <Link
                  key={game.id}
                  href={getGameHref(data.species.slug, scope, game)}
                  aria-current={game.id === scope.game?.id ? "page" : undefined}
                  className={cn(
                    "border-app-surface-border text-muted-foreground hover:bg-primary/10 hover:text-foreground focus-visible:ring-ring flex min-h-10 items-center gap-2 rounded-lg border bg-background/24 px-3 py-2 text-sm font-medium transition-colors focus-visible:ring-2 focus-visible:outline-none",
                    game.id === scope.game?.id &&
                      "border-primary/50 bg-primary/16 text-primary",
                  )}
                >
                  <AppIcon
                    icon={appIcons.product.game}
                    size="sm"
                    aria-hidden
                  />
                  <span className="min-w-0 truncate">{game.name}</span>
                </Link>
              ))}
            </div>
          </div>
        ) : null}
      </div>
    </section>
  );
};
