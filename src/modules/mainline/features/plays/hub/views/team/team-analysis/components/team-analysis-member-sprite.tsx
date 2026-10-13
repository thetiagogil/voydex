import Image from "next/image";

import type { MainlinePlayTeamMember } from "@/modules/mainline/features/plays/hub/types";
import { getPlayTeamMemberImageUrl } from "@/modules/mainline/features/plays/shared/utils/play-team-member-display";
import { cn } from "@/shared/utils/cn";

/*
 * One of your Pokémon in the matchups: its art, plain, as v3 draws it in the
 * matrix. The page has no loud parts, so these aren't stickers.
 */
export const TeamAnalysisMemberSprite = ({
  className,
  label = "",
  member,
}: {
  className?: string;
  /* The Pokémon's name when nothing beside the art says it. */
  label?: string;
  member: MainlinePlayTeamMember;
}) => {
  const imageUrl = getPlayTeamMemberImageUrl(member);

  if (!imageUrl) {
    return (
      <span
        className={cn(
          "border-dash block shrink-0 rounded-full border-[1.5px] border-dashed",
          className,
        )}
      >
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
      className={cn("block shrink-0 object-contain", className)}
    />
  );
};
