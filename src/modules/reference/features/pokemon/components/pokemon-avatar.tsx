import { PokemonTypeBadge } from "@/modules/reference/features/pokemon/components/pokemon-type-icon";
import {
  getPokemonTypeColour,
  getPokemonTypeCssVariables,
} from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { FallbackImage } from "@/shared/components/fallback-image";
import { cn } from "@/shared/utils/cn";
import { TipCard, TipHead } from "@/shared/components/tip-parts";
import {
  Tooltip,
  TooltipContent,
  TooltipTrigger,
} from "@/shared/components/ui/tooltip";

/*
 * The one small Pokémon: its art on a round pale tint of its type (neutral
 * when the type isn't known), sized by the caller. A team at a glance (a
 * Plan's strip, a Play card) is a row of these; an open slot beside them is
 * a dashed ring of the same size (`PokemonAvatarSlot`). Without art it shows
 * the name's first letter. `decorative` where the words beside it name it.
 * `art="portrait"` holds a trainer's head-and-shoulders portrait instead: it
 * fills the disc, cut at the bottom, where a Pokémon floats inside it.
 * Under the pointer it says who it is on a small card in its type's colour:
 * its picture larger, its name, `detail` under it and its type.
 */
export const PokemonAvatar = ({
  art = "pokemon",
  className,
  decorative = false,
  detail,
  imageUrl,
  letters,
  name,
  typeSlug,
}: {
  art?: "pokemon" | "portrait";
  className?: string;
  decorative?: boolean;
  /* The quiet line under its name in the tip: "Typhlosion · Lv. 48". */
  detail?: string | null;
  imageUrl: string | null;
  /* What its stand-in shows instead of the first letter (a trainer's initials). */
  letters?: string;
  name: string;
  typeSlug: string | null;
}) => {
  const type = typeSlug && isPokemonTypeSlug(typeSlug) ? typeSlug : null;
  const picture = (ground: "tint" | "white", pictureClassName?: string) => (
    <span
      style={getPokemonTypeCssVariables(type)}
      className={cn(
        "grid aspect-square place-items-center overflow-hidden rounded-full",
        ground === "tint" ? "type-tint" : "bg-surface",
        pictureClassName,
      )}
    >
      <FallbackImage
        src={imageUrl}
        letters={letters}
        name={name}
        alt={decorative || ground === "white" ? "" : name}
        loading="lazy"
        className={
          art === "portrait"
            ? "size-full object-cover object-top"
            : "size-[88%] object-contain"
        }
      />
    </span>
  );

  /* Nothing to say without a name, as where the words beside it give it. */
  if (decorative || !name) {
    return picture("tint", className);
  }

  return (
    <Tooltip>
      <TooltipTrigger render={picture("tint", className)} />
      <TooltipContent variant="card">
        <TipCard tint={getPokemonTypeColour(type)} width="fit">
          <TipHead
            leading={picture("white", "size-12 shrink-0")}
            name={name}
            sub={detail}
            trailing={
              type ? <PokemonTypeBadge type={type} size="sm" /> : undefined
            }
          />
        </TipCard>
      </TooltipContent>
    </Tooltip>
  );
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
