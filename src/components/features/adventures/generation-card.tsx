import { StatBadge } from "@/components/shared/stat-badge";
import { Card, CardContent } from "@/components/ui/card";
import type { GenerationWithUserStats } from "@/types/dashboard";
import {
  Cat,
  ChevronRight,
  CircleCheck,
  Compass,
  Gamepad2,
  Target,
} from "lucide-react";
import Link from "next/link";

interface GenerationCardsProps {
  generation: GenerationWithUserStats;
}

export const GenerationCard = ({ generation }: GenerationCardsProps) => {
  return (
    <Link key={generation.slug} href={`/adventures/gen/${generation.id}`}>
      <Card
        className={`group hover:border-primary/50 cursor-pointer p-5 transition-all duration-300 hover:translate-y-[-4px] hover:shadow-2xl ${generation.userStats.totalPlays === 0 ? "opacity-40 hover:opacity-100" : "shadow-xl"}`}
      >
        <CardContent className="relative">
          <div className="flex items-center gap-4">
            {/* Generation Badge Circle */}
            <div className="text-md bg-primary/10 border-primary/30 text-primary flex h-14 w-14 shrink-0 items-center justify-center rounded-xl border font-bold">
              {generation.name.replace("Generation ", "")}
            </div>

            <div className="w-full">
              {/* Generation Info (Left) */}
              <div className="flex flex-1 justify-between">
                <div className="flex flex-wrap items-center gap-2">
                  <h3 className="text-lg font-bold">{generation.name}</h3>
                  <StatBadge
                    icon={<Cat className="h-3 w-3" />}
                    value={generation.totalPokemonCount}
                    title="Total pokémon"
                  />
                  <StatBadge
                    icon={<Gamepad2 className="h-3 w-3" />}
                    value={generation.gameCount}
                    title="Total games"
                  />
                </div>
                {generation.userStats.totalPlays > 0 && (
                  <div className="flex items-center gap-2">
                    <StatBadge
                      icon={<Compass className="h-3 w-3" />}
                      value={generation.userStats.totalPlays}
                      variant="primary"
                      title="Total plays"
                    />
                    <StatBadge
                      icon={<Target className="h-3 w-3" />}
                      value={generation.userStats.activePlays}
                      variant="orange"
                      title="Active plays"
                    />
                    <StatBadge
                      icon={<CircleCheck className="h-3 w-3" />}
                      value={generation.userStats.completedPlays}
                      variant="green"
                      title="Completed plays"
                    />
                  </div>
                )}
              </div>

              {/* Play Stats (Right) */}
              <div className="flex flex-1 items-end justify-between">
                <p className="text-muted-foreground text-sm font-medium">
                  {generation.startYear}
                  {generation.endYear ? ` - ${generation.endYear}` : "+"}
                </p>
                <ChevronRight className="group-hover:text-primary h-4 w-4" />
              </div>
            </div>
          </div>
        </CardContent>
      </Card>
    </Link>
  );
};
