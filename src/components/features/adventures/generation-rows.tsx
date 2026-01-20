import { CircularProgress } from "@/components/shared/circular-progress";
import { Badge } from "@/components/ui/badge";
import { Card, CardContent } from "@/components/ui/card";
import { cn } from "@/lib/utils/cn";
import type { GenerationWithUserStats } from "@/types/dashboard";
import Link from "next/link";

interface GenerationRowsProps {
  generations: GenerationWithUserStats[];
}

// MVP: Only Gen 1-4 are enabled
const ENABLED_GENERATIONS = [1, 2, 3, 4];

export const GenerationRows = ({ generations }: GenerationRowsProps) => {
  return (
    <div className="flex flex-col gap-3">
      {generations.map((gen) => {
        const isEnabled = ENABLED_GENERATIONS.includes(gen.id);
        const hasPlays = gen.userStats.totalPlays > 0;
        const completionPercent =
          gen.userStats.totalPlays > 0
            ? Math.round(
                (gen.userStats.completedPlays / gen.userStats.totalPlays) * 100,
              )
            : 0;

        return (
          <Link
            key={gen.slug}
            href={isEnabled ? `/adventures/gen/${gen.id}` : "#"}
            className={cn(!isEnabled && "pointer-events-none")}
          >
            <Card
              className={cn(
                "transition-colors",
                isEnabled
                  ? "hover:bg-primary/5 hover:border-primary/50 cursor-pointer"
                  : "opacity-50",
              )}
            >
              <CardContent className="py-3">
                <div className="flex items-center gap-4">
                  {/* Generation Info (Left) */}
                  <div className="flex-1 space-y-0.5">
                    <div className="flex items-center gap-2">
                      <h3 className="font-semibold">{gen.name}</h3>
                      <Badge variant="outline-secondary" className="text-xs">
                        {gen.newPokemonCount} new
                      </Badge>
                      <Badge variant="outline-secondary" className="text-xs">
                        {gen.gameCount} games
                      </Badge>
                    </div>
                    <p className="text-muted-foreground text-xs">
                      {gen.startYear}
                      {gen.endYear ? ` - ${gen.endYear}` : "+"}
                    </p>
                  </div>

                  {/* Play Stats (Right) */}
                  {isEnabled ? (
                    <div className="flex items-center gap-6">
                      {hasPlays ? (
                        <>
                          <div className="min-w-[60px] text-center">
                            <p className="text-lg font-bold">
                              {gen.userStats.totalPlays}
                            </p>
                            <p className="text-muted-foreground text-xs">
                              Plays
                            </p>
                          </div>
                          <div className="min-w-[60px] text-center">
                            <p className="text-primary text-lg font-bold">
                              {gen.userStats.activePlays}
                            </p>
                            <p className="text-muted-foreground text-xs">
                              Active
                            </p>
                          </div>
                          <CircularProgress
                            value={completionPercent}
                            size={56}
                            strokeWidth={4}
                            showLabel
                            labelClassName="text-xs"
                            renderLabel={(p) => `${p}%`}
                          />
                        </>
                      ) : (
                        <div className="text-muted-foreground text-sm">
                          No adventures yet
                        </div>
                      )}
                    </div>
                  ) : (
                    <div className="text-muted-foreground text-xs italic">
                      Coming soon...
                    </div>
                  )}
                </div>
              </CardContent>
            </Card>
          </Link>
        );
      })}
    </div>
  );
};
