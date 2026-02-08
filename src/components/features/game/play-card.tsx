import { Icon } from "@/components/shared/icon";
import { QuickInfo } from "@/components/shared/quick-info";
import { StatusInfo } from "@/components/shared/status-info";
import { Card, CardContent } from "@/components/ui/card";
import { formatTime } from "@/lib/utils/common";
import Image from "next/image";
import Link from "next/link";

interface PlayCardProps {
  play: GamePlaySummary;
  genId: string | number;
  gameSlug: string;
}

export const PlayCard = ({ play, genId, gameSlug }: PlayCardProps) => {
  return (
    <Link href={`/adventures/gen/${genId}/game/${gameSlug}/play/${play.id}`}>
      <Card className="group hover:border-primary/50 flex h-full cursor-pointer flex-col transition-all duration-300 hover:translate-y-[-4px] hover:shadow-2xl">
        <CardContent className="flex flex-col">
          <div className="flex flex-col gap-4 sm:flex-row sm:items-center lg:flex-col lg:items-start xl:flex-row xl:items-center">
            <div className="flex w-full flex-1 gap-4">
              <div className="text-md bg-primary/10 border-primary/30 text-primary flex h-14 w-14 shrink-0 items-center justify-center rounded-xl border font-bold">
                <Icon type="play" className="h-6 w-6" />
              </div>

              <div className="flex flex-1 justify-between gap-2">
                <div>
                  <div className="flex gap-2">
                    <h3 className="text-lg font-semibold">{play.name}</h3>
                    <StatusInfo status={play.status} />
                  </div>
                  <div className="text-muted-foreground">
                    <QuickInfo
                      icon={<Icon type="time" size={12} />}
                      value={formatTime(play.updated_at)}
                      title="Last updated"
                    />
                  </div>
                </div>
                <Icon
                  type="rightArrow"
                  className="group-hover:text-primary sm:hidden lg:inline-block xl:hidden"
                />
              </div>
            </div>

            <div className="flex items-center gap-2">
              {play.pokemon_team.map((pokemon) => {
                return (
                  <div
                    key={pokemon.id}
                    className="bg-muted border-border flex h-12 w-12 items-center justify-center rounded-lg border"
                  >
                    <Image
                      src={pokemon.sprite_url!}
                      alt={pokemon.species?.name || "Pokemon Sprite"}
                      height={32}
                      width={32}
                      title={pokemon.species?.name || "Unknown Species"}
                    />
                  </div>
                );
              })}
              {Array.from({ length: 6 - play.pokemon_team.length }).map(
                (_, i) => (
                  <div
                    key={`empty-${i}`}
                    className="bg-muted/20 border-border flex h-12 w-12 items-center justify-center rounded-lg border border-dashed"
                  />
                ),
              )}
            </div>

            <Icon
              type="rightArrow"
              className="group-hover:text-primary hidden sm:inline-block lg:hidden xl:inline-block"
            />
          </div>
        </CardContent>
      </Card>
    </Link>
  );
};
