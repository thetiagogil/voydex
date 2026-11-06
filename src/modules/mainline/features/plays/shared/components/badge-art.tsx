import type { MilestoneBadge } from "@/modules/mainline/features/plays/shared/data/play-stamps";
import { PokemonTypeIcon } from "@/modules/reference/features/pokemon/components/pokemon-type-icon";
import { FallbackImage } from "@/shared/components/fallback-image";

type BadgeArtProps = {
  badge: MilestoneBadge;
  /* Sizes the type icon a badge without a picture shows. */
  iconClassName: string;
};

/*
 * What a badge medallion or stamp holds, inside its round (which sets `--t`
 * and, for a badge with a picture, its type's soft wash): the badge's own
 * picture, or its type's icon on the full type colour when it has no picture
 * (an Alola Z-Crystal) or the picture fails to load.
 */
export const BadgeArt = ({ badge, iconClassName }: BadgeArtProps) => (
  <FallbackImage
    src={badge.imageUrl}
    name={`${badge.type} badge`}
    loading="lazy"
    className="size-full rounded-full object-contain p-[17%]"
    fallbackClassName="p-0 text-inherit"
    standIn={
      /* Covers the wash, so a failed picture looks like no picture. */
      <span className="grid size-full place-items-center rounded-full bg-(--t)">
        <PokemonTypeIcon type={badge.type} className={iconClassName} />
      </span>
    }
  />
);
