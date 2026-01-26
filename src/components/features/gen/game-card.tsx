import { StatBadge } from "@/components/shared/stat-badge";
import { Card, CardContent } from "@/components/ui/card";
import { Separator } from "@/components/ui/separator";
import {
  Calendar,
  ChevronRight,
  CircleCheck,
  Compass,
  MapPin,
  Target,
} from "lucide-react";
import Image from "next/image";
import Link from "next/link";

interface GameCardProps {
  game: GameWithPlayStats;
  genId: string;
}

export const GameCard = ({ game, genId }: GameCardProps) => {
  return (
    <Link href={`/adventures/gen/${genId}/game/${game.slug}`}>
      <Card className="group hover:border-primary/50 flex h-full cursor-pointer flex-col transition-all duration-300 hover:translate-y-[-4px] hover:shadow-2xl">
        <CardContent className="flex flex-col">
          <div className="flex gap-4">
            <div className="bg-muted border-border rounded-xl border p-1">
              <Image
                src={game.cover_url!}
                alt={game.name}
                height={72}
                width={72}
                className="rounded-lg"
              />
            </div>

            <div className="flex w-full flex-col gap-1">
              <div className="flex items-start justify-between">
                <h3 className="text-xl font-bold">{game.name}</h3>
                <ChevronRight className="group-hover:text-primary h-4 w-4" />
              </div>
              <div className="text-muted-foreground flex flex-wrap items-center gap-2 text-sm">
                <StatBadge
                  icon={<MapPin className="h-3 w-3" />}
                  value={game.region.name}
                  title="Region"
                />
                <StatBadge
                  icon={<Calendar className="h-3 w-3" />}
                  value={game.releaseYear}
                  title="Release Year"
                />
              </div>
            </div>
          </div>

          <Separator className="mt-8 mb-4" />

          {game.stats.totalPlays > 0 ? (
            <div className="flex flex-wrap gap-2">
              <StatBadge
                icon={<Compass className="h-3 w-3" />}
                value={game.stats.totalPlays}
                variant="primary"
                title="Total plays"
              />
              <StatBadge
                icon={<Target className="h-3 w-3" />}
                value={game.stats.activePlays}
                variant="orange"
                title="Active plays"
              />
              <StatBadge
                icon={<CircleCheck className="h-3 w-3" />}
                value={game.stats.completedPlays}
                variant="green"
                title="Completed plays"
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
