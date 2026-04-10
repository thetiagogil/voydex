import { Icon } from "@/components/shared/icon";
import { QuickInfo } from "@/components/shared/quick-info";
import { StatusInfo } from "@/components/shared/status-info";
import { Card, CardContent } from "@/components/ui/card";
import { cn } from "@/lib/utils/cn";
import Link from "next/link";
import type { DashboardGeneration } from "../types";

type GenerationCardProps = {
  generation: DashboardGeneration;
};

export const GenerationCard = ({ generation }: GenerationCardProps) => {
  return (
    <Link key={generation.slug} href={`/dashboard/gen/${generation.id}`}>
      <Card
        className={cn(
          "group hover:border-primary/50 cursor-pointer p-5 hover:shadow-2xl",
          "transition-all duration-300 hover:translate-y-[-4px]",
          generation.userStats.totalPlays === 0
            ? "opacity-40 hover:opacity-100"
            : "shadow-xl",
        )}
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
                    icon={<Icon type="game" size={12} />}
                    value={generation.gameCount}
                    title="Total games"
                  />
                </div>
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

                    <Icon
                      type="rightArrow"
                      className="group-hover:text-primary"
                    />
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
