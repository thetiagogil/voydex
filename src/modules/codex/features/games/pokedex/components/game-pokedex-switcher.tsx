import Link from "next/link";

import { appRoutes } from "@/config/routes";
import { formatPokedexName } from "@/modules/reference/features/pokemon/display/pokemon-formatters";
import type { GamePokedexData } from "@/modules/reference/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { buttonVariants } from "@/shared/components/ui/button";
import { cn } from "@/shared/utils/cn";

type GamePokedexSwitcherProps = {
  data: GamePokedexData;
};

export const GamePokedexSwitcher = ({ data }: GamePokedexSwitcherProps) => {
  if (data.pokedexes.length <= 1) {
    return null;
  }

  return (
    <section className="border-app-surface-border/70 flex flex-col gap-3 border-y py-3 sm:flex-row sm:items-center sm:justify-between">
      <div className="min-w-0">
        <h2
          id="game-pokedex-scope-heading"
          className="text-foreground text-xs leading-5 font-semibold tracking-[0.08em] uppercase"
        >
          Pokédex scope
        </h2>
        <p className="text-muted-foreground text-xs leading-5">
          Choose the field guide for {data.game.name}.
        </p>
      </div>

      <nav
        aria-labelledby="game-pokedex-scope-heading"
        className="flex min-w-0 flex-wrap gap-2"
      >
        {data.pokedexes.map((pokedex) => {
          const isActive = pokedex.id === data.pokedex.id;
          const label = formatPokedexName(pokedex.name);
          const className = cn(
            buttonVariants({
              size: "sm",
              variant: isActive ? "default" : "outline",
            }),
            "max-w-full",
          );
          const content = (
            <>
              <AppIcon
                icon={appIcons.product.pokedex}
                inline="start"
                aria-hidden
              />
              <span className="truncate">{label}</span>
            </>
          );

          return isActive ? (
            <span key={pokedex.id} aria-current="page" className={className}>
              {content}
            </span>
          ) : (
            <Link
              key={pokedex.id}
              href={appRoutes.codexGamePokedex(data.game.slug, pokedex.slug)}
              className={className}
            >
              {content}
            </Link>
          );
        })}
      </nav>
    </section>
  );
};
