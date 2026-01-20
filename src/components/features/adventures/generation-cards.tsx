import { Badge } from "@/components/ui/badge";
import { Card, CardContent } from "@/components/ui/card";
import { Progress } from "@/components/ui/progress";
import { cn } from "@/lib/utils/cn";
import type { GenerationWithUserStats } from "@/types/dashboard";
import Link from "next/link";

interface GenerationCardsProps {
  generations: GenerationWithUserStats[];
}

// MVP: Only Gen 1-4 are enabled
const ENABLED_GENERATIONS = [1, 2, 3, 4];

export const GenerationCards = ({ generations }: GenerationCardsProps) => {
  return (
    <div className="grid gap-4 md:grid-cols-2">
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
                "h-full transition-colors",
                isEnabled
                  ? "hover:bg-primary/5 hover:border-primary/50 cursor-pointer"
                  : "opacity-50",
              )}
            >
              <CardContent className="space-y-4">
                {/* Metadata */}
                <div>
                  <div className="flex items-center justify-between gap-2">
                    <h3 className="text-lg font-semibold">{gen.name}</h3>
                    <div className="flex gap-1.5">
                      <Badge variant="outline-secondary" className="text-xs">
                        {gen.newPokemonCount} new
                      </Badge>
                      <Badge variant="outline-secondary" className="text-xs">
                        {gen.gameCount} games
                      </Badge>
                    </div>
                  </div>
                  <p className="text-muted-foreground text-sm">
                    {gen.startYear}
                    {gen.endYear ? ` - ${gen.endYear}` : "+"}
                  </p>
                </div>

                {/* Play Data */}
                {isEnabled && hasPlays && (
                  <div className="space-y-3 text-sm">
                    <div className="flex justify-between">
                      <span className="text-muted-foreground">Plays</span>
                      <span className="font-medium">
                        {gen.userStats.totalPlays}
                      </span>
                    </div>

                    <div className="flex justify-between">
                      <span className="text-muted-foreground">Active</span>
                      <span className="text-primary font-medium">
                        {gen.userStats.activePlays}
                      </span>
                    </div>

                    <div className="space-y-2">
                      <div className="flex justify-between text-sm">
                        <span className="text-muted-foreground">
                          Completion rate
                        </span>
                        <span className="font-medium">
                          {completionPercent}%
                        </span>
                      </div>
                      <Progress value={completionPercent} className="h-2" />
                    </div>
                  </div>
                )}

                {isEnabled && !hasPlays && (
                  <div className="text-muted-foreground py-2 text-sm">
                    No adventures yet
                  </div>
                )}

                {!isEnabled && (
                  <div>
                    <p className="text-muted-foreground text-sm italic">
                      Coming soon...
                    </p>
                  </div>
                )}
              </CardContent>
            </Card>
          </Link>
        );
      })}
    </div>
  );
};
