import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
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
 * each Pokémon on its type's pale tint (planned, so not a sticker), open
 * slots dashed.
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
      {slots.map((member, index) =>
        member ? (
          <li
            key={index}
            style={getPokemonTypeCssVariables(
              member.typeSlug && isPokemonTypeSlug(member.typeSlug)
                ? member.typeSlug
                : null,
            )}
            className="type-tint grid aspect-square place-items-center rounded-md"
          >
            {member.imageUrl ? (
              // eslint-disable-next-line @next/next/no-img-element
              <img
                src={member.imageUrl}
                alt={member.name}
                title={member.name}
                className="size-full object-contain"
              />
            ) : (
              <span className="sr-only">{member.name}</span>
            )}
          </li>
        ) : (
          <li key={index} className="empty-slot aspect-square rounded-md">
            <span className="sr-only">Open slot {index + 1}</span>
          </li>
        ),
      )}
    </ul>
  );
};
