import type { TeamEventVisual } from "@/modules/mainline/features/plays/hub/views/team/shared/team-event-display";
import { AppIcon } from "@/shared/components/app-icon";
import { appIcons } from "@/shared/domain/icons/app-icons";
import { cn } from "@/shared/utils/cn";

import { TeamHistoryPokemonIdentity } from "./team-history-pokemon-identity";

const TeamHistoryDestination = ({ label }: { label: "Active" | "Reserve" }) => {
  return (
    <span
      className="border-app-surface-border bg-muted/30 text-primary flex size-12 shrink-0 items-center justify-center rounded-lg border"
      aria-label={`${label} Team`}
      title={`${label} Team`}
    >
      <AppIcon
        icon={
          label === "Active" ? appIcons.product.team : appIcons.product.reserve
        }
        size="md"
        aria-hidden
      />
    </span>
  );
};

export const TeamHistoryEventVisuals = ({
  className,
  visuals,
}: {
  className?: string;
  visuals: TeamEventVisual[];
}) => {
  return (
    <div className={cn("flex min-w-0 items-center gap-3", className)}>
      {visuals.map((visual, index) => (
        <div
          key={
            visual.kind === "pokemon"
              ? visual.pokemon.key
              : `${visual.label}-${index}`
          }
          className="contents"
        >
          {index > 0 ? (
            <AppIcon
              icon={appIcons.actions.continue}
              size="xs"
              className="text-muted-foreground shrink-0"
              aria-hidden
            />
          ) : null}
          {visual.kind === "pokemon" ? (
            <TeamHistoryPokemonIdentity pokemon={visual.pokemon} />
          ) : (
            <TeamHistoryDestination label={visual.label} />
          )}
        </div>
      ))}
    </div>
  );
};
