import type { ReactNode } from "react";

import type { GameDetailData } from "@/modules/reference/types";
import { Badge } from "@/shared/components/ui/badge";
import {
  Tooltip,
  TooltipContent,
  TooltipTrigger,
} from "@/shared/components/ui/tooltip";
import { cn } from "@/shared/utils/cn";

type GameDetailInfoFactsProps = {
  data: GameDetailData;
};

const GameDetailPlatformsValue = ({ data }: GameDetailInfoFactsProps) => {
  const [firstPlatform, ...extraPlatforms] = data.platforms;

  if (!firstPlatform) {
    return "Unknown";
  }

  return (
    <span className="flex min-w-0 items-center gap-1.5">
      <span className="truncate">{firstPlatform.name}</span>
      {extraPlatforms.length ? (
        <Tooltip>
          <TooltipTrigger
            render={
              <Badge
                tabIndex={0}
                variant="outline"
                aria-label={`Other platforms: ${extraPlatforms.map((platform) => platform.name).join(", ")}`}
                className="border-app-surface-border/80 bg-background/70 text-foreground/75 focus-visible:ring-primary/60 h-5 shrink-0 px-1.5 text-[0.6875rem] leading-none outline-none"
              />
            }
          >
            +{extraPlatforms.length}
          </TooltipTrigger>
          <TooltipContent className="max-w-56 flex-col items-start text-left">
            {extraPlatforms.map((platform) => (
              <span key={platform.id}>{platform.name}</span>
            ))}
          </TooltipContent>
        </Tooltip>
      ) : null}
    </span>
  );
};

const GameDetailFact = ({
  className,
  label,
  value,
}: {
  className?: string;
  label: string;
  value: ReactNode;
}) => {
  return (
    <div className={cn("border-app-surface-border/60 min-w-0", className)}>
      <dt className="text-muted-foreground text-xs leading-5">{label}</dt>
      <dd className="text-foreground text-sm leading-6 font-medium sm:text-base">
        {value}
      </dd>
    </div>
  );
};

export const GameDetailInfoFacts = ({ data }: GameDetailInfoFactsProps) => {
  return (
    <dl className="border-app-surface-border/60 grid grid-cols-2 gap-y-4 border-t pt-5 sm:grid-cols-3 sm:gap-y-0">
      <GameDetailFact
        label="Platforms"
        value={<GameDetailPlatformsValue data={data} />}
      />
      <GameDetailFact
        className="border-l pl-4"
        label="Available Pokémon"
        value={data.availablePokemonCount.toLocaleString()}
      />
      <GameDetailFact
        className="col-span-2 border-t pt-4 sm:col-span-1 sm:border-t-0 sm:border-l sm:pt-0 sm:pl-4"
        label="Game type"
        value={data.gameType?.name ?? "Unknown"}
      />
    </dl>
  );
};
