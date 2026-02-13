import { Icon } from "@/components/shared/icon";
import { QuickInfo } from "@/components/shared/quick-info";
import { StatusInfo } from "@/components/shared/status-info";
import { Card, CardContent } from "@/components/ui/card";
import { Separator } from "@/components/ui/separator";
import type { GameWithPlayStats } from "@/types/gen";
import Image from "next/image";
import Link from "next/link";

interface GameCardProps {
  game: GameWithPlayStats;
  genId: string;
}

export const GameCard = ({ game, genId }: GameCardProps) => {
  return (
    <Link href={`/dashboard/gen/${genId}/game/${game.slug}`}>
      <Card className="group hover:border-primary/50 flex h-full cursor-pointer flex-col transition-all duration-300 hover:translate-y-[-4px] hover:shadow-2xl">
        <CardContent className="flex flex-col">
          <div className="flex gap-4">
            <div className="bg-muted border-border rounded-xl border p-1">
              <Image
                src={game.coverUrl!}
                alt={game.name}
                height={72}
                width={72}
                className="rounded-lg"
              />
            </div>

            <div className="flex w-full flex-col gap-1">
              <div className="flex items-center justify-between">
                <h3 className="text-xl font-bold">{game.name}</h3>
                <Icon type="rightArrow" className="group-hover:text-primary" />
              </div>
              <div className="text-muted-foreground flex flex-wrap items-center gap-2 text-sm">
                <QuickInfo
                  icon={<Icon type="adventure" size={12} />}
                  value={game.region.name}
                  title="Region"
                />
                <QuickInfo
                  icon={<Icon type="calendar" size={12} />}
                  value={game.releaseYear}
                  title="Release Year"
                />
              </div>
            </div>
          </div>

          <Separator className="mt-8 mb-4" />

          {game.stats.totalPlays > 0 ? (
            <div className="flex flex-wrap gap-2">
              <StatusInfo
                status="total"
                value={game.stats.totalPlays}
                isBadge
              />
              <StatusInfo
                status="active"
                value={game.stats.activePlays}
                isBadge
              />
              <StatusInfo
                status="completed"
                value={game.stats.completedPlays}
                isBadge
              />
            </div>
          ) : (
            <p className="text-muted-foreground text-sm">
              No plays recorded yet.
            </p>
          )}
        </CardContent>
      </Card>
    </Link>
  );
};
