import { QuickInfo } from "@/components/shared/quick-info";
import { StatusInfo } from "@/components/shared/status-info";
import { Card, CardContent } from "@/components/ui/card";
import type { GenerationWithUserStats } from "@/types/dashboard";
import { Cat, ChevronRight, Gamepad2 } from "lucide-react";
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
          <div className="flex gap-4">
            <div className="text-md bg-primary/10 border-primary/30 text-primary flex h-13 w-13 shrink-0 items-center justify-center rounded-xl border font-bold">
              {generation.name.replace("Generation ", "")}
            </div>

            <div className="flex w-full flex-1">
              <div className="flex flex-1 flex-col gap-1">
                <div className="flex flex-wrap items-center gap-2">
                  <h3 className="hidden text-lg font-bold sm:inline-block">
                    {generation.name}
                  </h3>
                  <QuickInfo
                    icon={<Cat className="h-3 w-3" />}
                    value={generation.totalPokemonCount}
                    title="Total pokémon"
                  />
                  <QuickInfo
                    icon={<Gamepad2 className="h-3 w-3" />}
                    value={generation.gameCount}
                    title="Total games"
                  />
                </div>

                <p className="text-muted-foreground text-sm font-medium">
                  {generation.startYear}
                  {generation.endYear ? ` - ${generation.endYear}` : "+"}
                </p>
              </div>

              <div className="flex items-start">
                {generation.userStats.totalPlays > 0 && (
                  <div className="flex items-center gap-2">
                    <StatusInfo
                      status="total"
                      value={generation.userStats.totalPlays}
                      isBadge
                    />
                    <span className="hidden gap-2 sm:inline-flex">
                      <StatusInfo
                        status="active"
                        value={generation.userStats.activePlays}
                        isBadge
                      />
                      <StatusInfo
                        status="completed"
                        value={generation.userStats.completedPlays}
                        isBadge
                      />
                    </span>

                    <ChevronRight className="group-hover:text-primary h-4 w-4" />
                  </div>
                )}
              </div>
            </div>
          </div>
        </CardContent>
      </Card>
    </Link>
  );
};
