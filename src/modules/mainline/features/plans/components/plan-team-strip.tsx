import {
  PokemonAvatar,
  PokemonAvatarSlot,
} from "@/modules/reference/features/pokemon/components/pokemon-avatar";
import { cn } from "@/shared/utils/cn";

export type PlanTeamStripMember = {
  imageUrl: string | null;
  name: string;
  /* 1 to 6. */
  slot: number;
  typeSlug: string | null;
};

/*
 * A Plan's six slots at a glance (My Plans' cards, the unsaved Plan offer):
 * each Pokémon as the one small Pokémon (`PokemonAvatar`), open slots
 * dashed.
 */
export const PlanTeamStrip = ({
  className,
  members,
}: {
  className?: string;
  members: PlanTeamStripMember[];
}) => {
  const slots = Array.from({ length: 6 }, (_, index) =>
    members.find((member) => member.slot === index + 1),
  );

  return (
    <ul aria-label="Team" className={cn("grid grid-cols-6 gap-1.5", className)}>
      {slots.map((member, index) => (
        <li key={index}>
          {member ? (
            <PokemonAvatar
              imageUrl={member.imageUrl}
              name={member.name}
              typeSlug={member.typeSlug}
            />
          ) : (
            <PokemonAvatarSlot label={`Open slot ${index + 1}`} />
          )}
        </li>
      ))}
    </ul>
  );
};
