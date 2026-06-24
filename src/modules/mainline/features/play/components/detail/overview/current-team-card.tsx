import Link from "next/link";
import { ChevronRight, UsersRound } from "lucide-react";

import { appRoutes } from "@/config/routes";
import type { MainlinePlayDetailData } from "@/modules/mainline/features/play/types";
import {
  getActiveTeam,
  getPokemonDisplayName,
  getPokemonPrimaryTypeSlug,
  getReserveTeam,
} from "@/modules/mainline/features/play/components/detail/mainline-play-formatters";
import {
  EmptyPanel,
  PokemonTypeBadges,
} from "@/modules/mainline/features/play/components/detail/mainline-play-widgets";
import { PokemonPortrait } from "@/shared/components/pokemon/pokemon-portrait";
import { Button } from "@/shared/components/ui/button";
import {
  Card,
  CardAction,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/shared/components/ui/card";

type CurrentTeamCardProps = {
  data: MainlinePlayDetailData;
};

export const CurrentTeamCard = ({ data }: CurrentTeamCardProps) => {
  const activeTeam = getActiveTeam(data.team).slice(0, 6);
  const reserveTeam = getReserveTeam(data.team);

  if (!activeTeam.length) {
    return (
      <EmptyPanel
        title="No active team yet"
        description="Pokémon will appear here when this play has active roster entries."
      />
    );
  }

  return (
    <Card>
      <CardHeader>
        <CardTitle className="flex items-center gap-2">
          <UsersRound className="text-primary size-5" />
          Current Team
        </CardTitle>
        <CardAction>
          <Button
            render={
              <Link
                href={appRoutes.mainlinePlayTeam(String(data.overview.play_id))}
              />
            }
            nativeButton={false}
            variant="ghost"
            size="sm"
          >
            View full team
            <ChevronRight data-icon="inline-end" />
          </Button>
        </CardAction>
        <CardDescription>
          {reserveTeam.length} reserve available
        </CardDescription>
      </CardHeader>
      <CardContent>
        <div className="grid grid-cols-2 gap-3 sm:grid-cols-3">
          {activeTeam.map((pokemon) => (
            <div
              key={pokemon.play_pokemon_id}
              className="flex flex-col items-center gap-2 rounded-xl border p-3 text-center"
            >
              <PokemonPortrait
                alt={getPokemonDisplayName(pokemon)}
                imageUrl={pokemon.display.imageUrl}
                type={getPokemonPrimaryTypeSlug(pokemon)}
                className="size-24"
              />
              <div className="min-w-0">
                <p className="truncate font-medium">
                  {getPokemonDisplayName(pokemon)}
                </p>
                <p className="text-muted-foreground text-sm">
                  Lv. {pokemon.level ?? "-"}
                </p>
              </div>
              <PokemonTypeBadges pokemon={pokemon} />
            </div>
          ))}
        </div>
      </CardContent>
    </Card>
  );
};
