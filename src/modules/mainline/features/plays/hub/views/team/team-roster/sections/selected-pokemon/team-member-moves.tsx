import {
  type TeamMoveSlot,
  getTeamMoveSlots,
} from "@/modules/mainline/features/plays/hub/views/team/team-roster/sections/selected-pokemon/team-member-model";
import type { MainlinePlayTeamMove } from "@/modules/mainline/features/plays/hub/types";
import { PokemonTypeBadge } from "@/modules/reference/features/pokemon/components/pokemon-type-icon";
import {
  getPokemonTypeCssVariables,
  pokemonTypeSoftBackgroundClassName,
  pokemonTypeSoftBorderClassName,
} from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { Badge } from "@/shared/components/ui/badge";
import {
  Tooltip,
  TooltipContent,
  TooltipTrigger,
} from "@/shared/components/ui/tooltip";
import { cn } from "@/shared/utils/cn";

const TeamMoveTooltipValue = ({
  accessibleLabel,
  children,
  tooltip,
}: {
  accessibleLabel: string;
  children: React.ReactNode;
  tooltip: string;
}) => {
  return (
    <Tooltip>
      <TooltipTrigger
        render={
          <span
            tabIndex={0}
            aria-label={accessibleLabel}
            className="focus-visible:ring-ring/50 inline-flex rounded-full outline-none focus-visible:ring-2"
          />
        }
      >
        {children}
      </TooltipTrigger>
      <TooltipContent>{tooltip}</TooltipContent>
    </Tooltip>
  );
};

const TeamMoveType = ({ move }: { move: TeamMoveSlot }) => {
  if (!move.type || !isPokemonTypeSlug(move.type.slug)) {
    return (
      <TeamMoveTooltipValue
        accessibleLabel="Type not recorded"
        tooltip="Type not recorded"
      >
        <Badge variant="outline" className="size-6 justify-center p-0">
          ?
        </Badge>
      </TeamMoveTooltipValue>
    );
  }

  return (
    <TeamMoveTooltipValue
      accessibleLabel={`${move.type.name} type`}
      tooltip={`${move.type.name} type`}
    >
      <PokemonTypeBadge
        type={move.type.slug}
        label={move.type.name}
        display="icon"
        size="sm"
      />
    </TeamMoveTooltipValue>
  );
};

const TeamMoveRow = ({ move }: { move: TeamMoveSlot }) => {
  if (!move.name) {
    return (
      <li
        aria-label={`Move slot ${move.position} is empty`}
        className="border-app-surface-border/60 bg-background/15 flex min-h-8 items-center justify-center rounded-md border border-dashed px-2.5 py-1"
      >
        <span className="text-muted-foreground text-sm">Empty slot</span>
      </li>
    );
  }

  const moveTypeSlug =
    move.type && isPokemonTypeSlug(move.type.slug) ? move.type.slug : null;

  return (
    <li
      style={getPokemonTypeCssVariables(moveTypeSlug)}
      className={cn(
        "grid min-h-8 grid-cols-[1.5rem_minmax(0,1fr)_1.5rem] items-center gap-2 rounded-md border px-2.5 py-1",
        moveTypeSlug
          ? [pokemonTypeSoftBackgroundClassName, pokemonTypeSoftBorderClassName]
          : "border-app-surface-border/60 bg-background/20",
      )}
    >
      <div className="justify-self-start">
        <TeamMoveType move={move} />
      </div>
      <span className="text-foreground min-w-0 truncate text-center text-sm font-medium">
        {move.name}
      </span>
      <span className="size-6" aria-hidden />
    </li>
  );
};

export const TeamMemberMoves = ({
  moves,
}: {
  moves: MainlinePlayTeamMove[];
}) => {
  const moveSlots = getTeamMoveSlots(moves);

  return (
    <section
      aria-labelledby="team-member-moves-heading"
      className="grid content-start gap-2"
    >
      <h3
        id="team-member-moves-heading"
        className="text-primary font-serif text-base font-semibold"
      >
        Moves
      </h3>
      <ol className="grid auto-rows-fr gap-1.5 sm:grid-cols-2 lg:grid-cols-4">
        {moveSlots.map((move) => (
          <TeamMoveRow key={move.position} move={move} />
        ))}
      </ol>
    </section>
  );
};
