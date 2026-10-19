import type { TypeMatchupMember } from "@/modules/mainline/shared/data/type-matchup-rows";
import { FallbackImage } from "@/shared/components/fallback-image";
import { cn } from "@/shared/utils/cn";

/*
 * One Pokémon of the team in the matchups: its art, plain, as v3 draws it in
 * the matrix. The matchups have no loud parts, so these aren't stickers, and
 * without art the first letter sits on a quiet disc.
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
}) => (
  <FallbackImage
    src={member.imageUrl}
    name={member.name}
    alt={label}
    width={52}
    height={52}
    loading="lazy"
    className={cn("block shrink-0 object-contain", className)}
    fallbackClassName="bg-surface-2 rounded-full"
  />
);
