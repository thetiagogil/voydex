import type { ReactNode } from "react";

import type { GameDetailData } from "@/modules/codex/shared/types";
import {
  AppIcon,
  appIcons,
  type AppIconComponent,
} from "@/shared/components/app-icon";
import { Badge } from "@/shared/components/ui/badge";
import {
  Tooltip,
  TooltipContent,
  TooltipTrigger,
} from "@/shared/components/ui/tooltip";

type GameDetailHeroFactsProps = {
  data: GameDetailData;
};

const GameDetailPlatformsValue = ({ data }: GameDetailHeroFactsProps) => {
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
                className="h-5 shrink-0 border-(--pokemon-game-color)/30 bg-(--pokemon-game-color)/12 px-1.5 text-[0.6875rem] leading-none text-(--pokemon-game-color) outline-none focus-visible:ring-(--pokemon-game-color)/70"
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
  icon,
  label,
  value,
}: {
  icon: AppIconComponent;
  label: string;
  value: ReactNode;
}) => {
  return (
    <div className="flex min-w-0 items-center gap-3">
      <div className="flex size-9 shrink-0 items-center justify-center rounded-lg bg-(--pokemon-game-color)/10 text-(--pokemon-game-color) ring-1 ring-(--pokemon-game-color)/24">
        <AppIcon icon={icon} size="md" />
      </div>
      <div className="min-w-0">
        <dt className="text-muted-foreground text-xs leading-5">{label}</dt>
        <dd className="text-foreground truncate text-sm leading-6 font-medium">
          {value}
        </dd>
      </div>
    </div>
  );
};

export const GameDetailHeroFacts = ({ data }: GameDetailHeroFactsProps) => {
  return (
    <dl className="border-app-surface-border grid gap-4 border-t pt-5 sm:grid-cols-3">
      <GameDetailFact
        icon={appIcons.product.game}
        label="Platforms"
        value={<GameDetailPlatformsValue data={data} />}
      />
      <GameDetailFact
        icon={appIcons.product.pokedex}
        label="Available Pokémon"
        value={data.availablePokemonCount.toLocaleString()}
      />
      <GameDetailFact
        icon={appIcons.product.game}
        label="Game type"
        value={data.gameType?.name ?? "Unknown"}
      />
    </dl>
  );
};
