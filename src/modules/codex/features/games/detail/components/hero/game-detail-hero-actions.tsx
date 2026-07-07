import Link from "next/link";

import { appRoutes } from "@/config/routes";
import { cn } from "@/lib/utils";
import type { GameDetailData } from "@/modules/codex/shared/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { buttonVariants } from "@/shared/components/ui/button";

type GameDetailHeroActionsProps = {
  data: GameDetailData;
};

const getBrowsePokemonHref = (data: GameDetailData) => {
  const firstPokedex = data.pokedexes[0]?.pokedex;

  if (!firstPokedex) {
    return appRoutes.codexPokemon;
  }

  return appRoutes.codexGamePokedex(data.game.slug, firstPokedex.slug);
};

export const GameDetailHeroActions = ({ data }: GameDetailHeroActionsProps) => {
  return (
    <div className="flex flex-wrap gap-3">
      <Link
        href={getBrowsePokemonHref(data)}
        className={cn(
          buttonVariants({ variant: "default", size: "lg" }),
          "text-background h-10 bg-(--pokemon-game-color) px-4 hover:bg-(--pokemon-game-color)/90 has-data-[icon=inline-start]:pl-3",
        )}
      >
        <AppIcon icon={appIcons.product.pokedex} inline="start" aria-hidden />
        Browse Pokémon
      </Link>
    </div>
  );
};
