import Image from "next/image";

import type { TypeMatchupMember } from "@/modules/mainline/shared/data/type-matchup-rows";
import { cn } from "@/shared/utils/cn";

/*
 * One Pokémon of the team in the matchups: its art, plain, as v3 draws it in
 * the matrix. The matchups have no loud parts, so these aren't stickers.
 */
export const MatchupMemberSprite = ({
  className,
  label = "",
  member,
}: {
  className?: string;
  /* The Pokémon's name when nothing beside the art says it. */
  label?: string;
  member: TypeMatchupMember;
}) => {
  const { imageUrl } = member;

  if (!imageUrl) {
    return (
      <span className={cn("empty-slot block shrink-0 rounded-full", className)}>
        {label ? <span className="sr-only">{label}</span> : null}
      </span>
    );
  }

  return (
    <Image
      src={imageUrl}
      alt={label}
      width={52}
      height={52}
      unoptimized
      className={cn("block shrink-0 object-contain", className)}
    />
  );
};
