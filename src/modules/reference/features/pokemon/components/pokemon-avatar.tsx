import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import {
  isPokemonTypeSlug,
  type PokemonTypeSlug,
} from "@/modules/reference/features/pokemon/domain/type-slugs";
import { FallbackImage } from "@/shared/components/fallback-image";
import { cn } from "@/shared/utils/cn";
import { IconTip } from "@/shared/components/icon-tip";

/*
 * The one small Pokémon: its art on a round pale tint of its type (neutral
 * when the type isn't known), sized by the caller. A team at a glance (a
 * Plan's strip, a Play card) is a row of these; an open slot beside them is
 * a dashed ring of the same size (`PokemonAvatarSlot`). Without art it shows
 * the name's first letter. `decorative` where the words beside it name it.
 */
export const PokemonAvatar = ({
  className,
  decorative = false,
  imageUrl,
  name,
  typeSlug,
}: {
  className?: string;
  decorative?: boolean;
  imageUrl: string | null;
  name: string;
  typeSlug: string | null;
}) => {
  const avatar = (
    <span
      style={getPokemonTypeCssVariables(
        typeSlug && isPokemonTypeSlug(typeSlug)
          ? (typeSlug as PokemonTypeSlug)
          : null,
      )}
      className={cn(
        "type-tint grid aspect-square place-items-center overflow-hidden rounded-full",
        className,
      )}
    >
      <FallbackImage
        src={imageUrl}
        name={name}
        alt={decorative ? "" : name}
        loading="lazy"
        className="size-[88%] object-contain"
      />
    </span>
  );

  return decorative ? avatar : <IconTip label={name} trigger={avatar} />;
};

/* An open slot beside avatars: a dashed ring of the same size. */
export const PokemonAvatarSlot = ({
  className,
  label,
}: {
  className?: string;
  label: string;
}) => (
  <span
    className={cn("empty-slot block aspect-square rounded-full", className)}
  >
    <span className="sr-only">{label}</span>
  </span>
);
