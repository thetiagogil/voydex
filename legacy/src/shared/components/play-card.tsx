import { cn } from "@/lib/utils/cn";
import { Icon } from "@/shared/components/icon";
import { QuickInfo } from "@/shared/components/quick-info";
import { StatusInfo } from "@/shared/components/status-info";
import { Card, CardContent } from "@/shared/components/ui/card";
import { toStatusVariant } from "@/shared/constants/play-statuses";
import { getPlaysRoute } from "@/shared/constants/routes";
import { formatTime, getPokemonSpriteUrl } from "@/shared/utils";
import Image from "next/image";
import Link from "next/link";
import { CARD_HOVER_EFFECT } from "../constants/styles";
import { BaseInfo } from "../types";

type PlayCardPlay = {
  id: string;
  name: string;
  status: BaseInfo & { isTerminal: boolean; sortOrder: number };
  createdAt: string;
  updatedAt: string;
  pokemonTeam?: {
    id: string;
    nickname: string | null;
    level: number;
    speciesId: number;
    species: BaseInfo | null;
    pokemonDbSpriteSlug?: string | null;
    spriteUrl?: string | null;
    isShiny?: boolean;
  }[];
};

type PlayCardProps = {
  play: PlayCardPlay;
};

export const PlayCard = ({ play }: PlayCardProps) => {
  const hasPokemonTeam = play.pokemonTeam !== undefined;
  const pokemonTeam = play.pokemonTeam?.slice(0, 6) ?? [];

  return (
    <Link href={getPlaysRoute(play.id)}>
      <Card
        className={cn(
          "group hover:border-primary/50 flex h-full cursor-pointer flex-col",
          CARD_HOVER_EFFECT,
        )}
      >
        <CardContent className="flex flex-col">
          <div className="flex gap-4">
            <div className="flex w-full min-w-0 flex-1 gap-4">
              <div className="text-md bg-primary/10 border-primary/30 text-primary flex h-14 w-14 shrink-0 items-center justify-center rounded-xl border font-bold">
                <Icon type="play" className="h-6 w-6" />
              </div>

              <div className="flex min-w-0 flex-1 flex-col gap-3 md:flex-row md:items-center md:justify-between">
                <div className="min-w-0">
                  <div className="flex min-w-0 items-center gap-2">
                    <h3
                      className="w-40 truncate text-lg font-semibold sm:w-full"
                      title={play.name}
                    >
                      {play.name}
                    </h3>
                    <StatusInfo status={toStatusVariant(play.status.slug)} />
                  </div>

                  <div className="text-muted-foreground">
                    <QuickInfo
                      icon={<Icon type="time" size={12} />}
                      value={formatTime(play.updatedAt)}
                      title="Last updated"
                    />
                  </div>
                </div>

                <div className="flex items-center gap-2 self-start md:self-auto">
                  {hasPokemonTeam ? (
                    <>
                      {pokemonTeam.map((pokemon) => {
                        const displayName =
                          pokemon.nickname || pokemon.species?.name || "Unknown";
                        const spriteUrl =
                          pokemon.spriteUrl ||
                          (pokemon.pokemonDbSpriteSlug
                            ? getPokemonSpriteUrl(
                                Boolean(pokemon.isShiny),
                                pokemon.pokemonDbSpriteSlug,
                              )
                            : "");

                        return (
                          <div
                            key={pokemon.id}
                            className="bg-muted border-border relative flex h-12 w-12 items-center justify-center rounded-lg border"
                            title={`${displayName}${pokemon.isShiny ? " (Shiny)" : ""}`}
                          >
                            {spriteUrl ? (
                              <Image
                                src={spriteUrl}
                                alt={displayName}
                                height={32}
                                width={32}
                                className="h-8 w-auto object-contain"
                              />
                            ) : (
                              <span className="text-muted-foreground text-xs font-semibold">
                                ?
                              </span>
                            )}

                            {pokemon.isShiny ? (
                              <Icon
                                type="shiny"
                                size={10}
                                className="text-primary absolute top-1 right-1"
                              />
                            ) : null}
                          </div>
                        );
                      })}

                      {Array.from({
                        length: Math.max(0, 6 - pokemonTeam.length),
                      }).map((_, i) => (
                        <div
                          key={`empty-${i}`}
                          className="bg-muted/20 border-border flex h-12 w-12 items-center justify-center rounded-lg border border-dashed"
                        />
                      ))}
                    </>
                  ) : null}

                  <Icon type="rightArrow" className="group-hover:text-primary" />
                </div>
              </div>
            </div>
          </div>
        </CardContent>
      </Card>
    </Link>
  );
};
