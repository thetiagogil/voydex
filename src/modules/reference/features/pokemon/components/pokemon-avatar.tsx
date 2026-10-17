import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import {
  isPokemonTypeSlug,
  type PokemonTypeSlug,
} from "@/modules/reference/features/pokemon/domain/type-slugs";
import { cn } from "@/shared/utils/cn";

/*
 * The one small Pokémon: its art on a round pale tint of its type (neutral
 * when the type isn't known), sized by the caller. A team at a glance (a
 * Plan's strip, a Play card) is a row of these; an open slot beside them is
 * a dashed ring of the same size (`PokemonAvatarSlot`).
 */
export const PokemonAvatar = ({
  className,
  imageUrl,
  name,
  typeSlug,
}: {
  className?: string;
  imageUrl: string | null;
  name: string;
  typeSlug: string | null;
}) => (
  <span
    style={getPokemonTypeCssVariables(
      typeSlug && isPokemonTypeSlug(typeSlug)
        ? (typeSlug as PokemonTypeSlug)
        : null,
    )}
    title={name}
    className={cn(
      "type-tint grid aspect-square place-items-center overflow-hidden rounded-full",
      className,
    )}
  >
    {imageUrl ? (
      // eslint-disable-next-line @next/next/no-img-element
      <img
        src={imageUrl}
        alt={name}
        loading="lazy"
        className="size-[88%] object-contain"
      />
    ) : (
      <span className="text-ink-2 text-12 font-extrabold">
        <span aria-hidden>{name.charAt(0)}</span>
        <span className="sr-only">{name}</span>
      </span>
    )}
  </span>
);

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
