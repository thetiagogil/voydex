import { CircularProgress } from "@/components/shared/circular-progress";
import { QuickStat } from "@/components/shared/quick-stat";
import { Badge } from "@/components/ui/badge";
import { Card, CardContent } from "@/components/ui/card";
import { cn } from "@/lib/utils/cn";
import type { GenerationWithUserStats } from "@/types/dashboard";
import { Cat, Compass, Gamepad2, Target } from "lucide-react";
import Link from "next/link";

interface GenerationRowsProps {
  generations: GenerationWithUserStats[];
}

export const GenerationRows = ({ generations }: GenerationRowsProps) => {
  console.log(generations);
  return (
    <div className="flex flex-col gap-4">
      {generations.map((gen) => {
        const hasPlays = gen.userStats.totalPlays > 0;
        const completionPercent =
          gen.userStats.totalPlays > 0
            ? Math.round(
                (gen.userStats.completedPlays / gen.userStats.totalPlays) * 100,
              )
            : 0;

        return (
          <Link key={gen.slug} href={`/adventures/gen/${gen.id}`}>
            <Card
              className={cn("group border-1", "cursor-pointer hover:shadow-xl")}
            >
              <CardContent className="relative py-4">
                <div className="flex items-center gap-4">
                  {/* Generation Badge Circle */}
                  <div
                    className={cn(
                      "text-md flex h-14 w-14 shrink-0 items-center justify-center rounded-full border-1 font-bold",
                      "bg-primary/10 border-primary/30 text-primary",
                    )}
                  >
                    {gen.name.replace("Generation ", "")}
                  </div>

                  {/* Generation Info (Left) */}
                  <div className="flex-1">
                    <div className="flex flex-wrap items-center gap-2">
                      <h3 className="text-lg font-bold">{gen.name}</h3>
                      <Badge variant="outline-secondary" className="gap-1">
                        <Cat className="h-4 w-4" />
                        {gen.totalPokemonCount}
                      </Badge>
                      <Badge variant="outline-secondary" className="gap-1">
                        <Gamepad2 className="h-4 w-4" />
                        {gen.gameCount}
                      </Badge>
                    </div>
                    <p className="text-muted-foreground text-sm font-medium">
                      {gen.startYear}
                      {gen.endYear ? ` - ${gen.endYear}` : "+"}
                    </p>
                  </div>

                  {/* Play Stats (Right) */}

                  <div className="flex items-center gap-6">
                    {hasPlays ? (
                      <>
                        <QuickStat
                          icon={<Compass className="h-4 w-4" />}
                          value={gen.userStats.totalPlays}
                          variant="primary"
                        />

                        <QuickStat
                          icon={<Target className="h-4 w-4" />}
                          value={gen.userStats.activePlays}
                          variant="yellow"
                        />

                        <CircularProgress
                          value={completionPercent}
                          size={64}
                          strokeWidth={5}
                          showLabel
                          labelClassName="text-sm font-bold"
                          renderLabel={(p) => `${p}%`}
                        />
                      </>
                    ) : (
                      <div className="text-muted-foreground bg-muted/50 rounded-lg px-4 py-2 text-sm italic">
                        Start your first adventure
                      </div>
                    )}
                  </div>
                </div>
              </CardContent>
            </Card>
          </Link>
        );
      })}
    </div>
  );
};
