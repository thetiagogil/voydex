import {
  PokemonAvatar,
  PokemonAvatarSlot,
} from "@/modules/reference/features/pokemon/components/pokemon-avatar";
import { cn } from "@/shared/utils/cn";

export type TeamStripMember = {
  imageUrl: string | null;
  name: string;
  /* 1 to 6. */
  slot: number;
  typeSlug: string | null;
};

/*
 * A team's six slots at a glance (My Plans' cards, the unsaved Plan offer,
 * a Play that follows a Plan or keeps a rule):
 * each Pokémon as the one small Pokémon (`PokemonAvatar`), open slots
 * dashed.
 */
export const TeamStrip = ({
  className,
  members,
}: {
  className?: string;
  members: TeamStripMember[];
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
