import type { TeamEventVisual } from "@/modules/mainline/features/plays/hub/tabs/team/sections/recent-team-events/team-event-display";
import { PokemonPortrait } from "@/modules/reference/features/pokemon/components/pokemon-portrait";
import { AppIcon } from "@/shared/components/app-icon";
import { appIcons } from "@/shared/domain/icons/app-icons";

const TeamEventPokemonFallback = ({ name }: { name: string }) => {
  return (
    <span
      aria-label={`${name} image unavailable`}
      title={`${name} image unavailable`}
      className="border-app-surface-border bg-muted/30 text-muted-foreground flex size-10 shrink-0 items-center justify-center rounded-md border text-sm font-semibold"
    >
      ?
    </span>
  );
};

const TeamEventDestination = ({ label }: { label: "Active" | "Reserve" }) => {
  return (
    <span
      aria-label={`${label} roster`}
      title={`${label} roster`}
      className="border-app-surface-border bg-muted/30 text-muted-foreground flex size-10 shrink-0 items-center justify-center rounded-md border"
    >
      <AppIcon
        icon={
          label === "Active" ? appIcons.product.team : appIcons.product.reserve
        }
        size="sm"
        aria-hidden
      />
    </span>
  );
};

const TeamEventVisualItem = ({ visual }: { visual: TeamEventVisual }) => {
  if (visual.kind === "destination") {
    return <TeamEventDestination label={visual.label} />;
  }

  return visual.pokemon.imageUrl ? (
    <PokemonPortrait
      alt={`${visual.pokemon.name} portrait`}
      imageUrl={visual.pokemon.imageUrl}
      sizes="2.5rem"
      className="border-app-surface-border bg-muted/30 size-10 shrink-0 rounded-md"
      glowClassName="opacity-0"
      imageClassName="p-0.5"
    />
  ) : (
    <TeamEventPokemonFallback name={visual.pokemon.name} />
  );
};

export const TeamEventMedia = ({ visuals }: { visuals: TeamEventVisual[] }) => {
  return (
    <div className="flex min-w-0 items-center justify-end gap-1.5">
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
          <TeamEventVisualItem visual={visual} />
        </div>
      ))}
    </div>
  );
};
