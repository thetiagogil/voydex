import { PokemonAvatar } from "@/modules/reference/features/pokemon/components/pokemon-avatar";
import { getTrainerInitials } from "@/modules/reference/features/trainers/data/trainer-initials";
import { cn } from "@/shared/utils/cn";

type OpponentAce = { imageUrl: string | null; name: string };

/*
 * Who you battle, at a glance: the trainer's portrait on a disc tinted by
 * their type (their initials where Voydex has no portrait), with their ace
 * as a small sticker on its corner. A Pokémon you meet alone (a legendary)
 * has no trainer, so its art fills the disc. Sized by the caller
 * (`className` for the disc, `markClassName` for the ace's sticker, about
 * half the disc). `decorative` where the words beside it name both;
 * otherwise the ace's sticker names it in its tip.
 */
export const OpponentAvatar = ({
  ace,
  className,
  decorative = false,
  isTrainer = true,
  markClassName = "size-7",
  name,
  portraitUrl,
  typeSlug,
}: {
  ace: OpponentAce | null;
  className?: string;
  decorative?: boolean;
  /* False for a Pokémon you meet alone: its own art takes the disc. */
  isTrainer?: boolean;
  markClassName?: string;
  name: string;
  portraitUrl: string | null;
  typeSlug: string | null;
}) =>
  isTrainer ? (
    <span className={cn("relative shrink-0", className)}>
      <PokemonAvatar
        art="portrait"
        className="size-full"
        decorative
        imageUrl={portraitUrl}
        letters={getTrainerInitials(name)}
        name={name}
        typeSlug={typeSlug}
      />
      {ace ? (
        <PokemonAvatar
          className={cn("bubble absolute -right-2 -bottom-1", markClassName)}
          decorative={decorative}
          imageUrl={ace.imageUrl}
          name={ace.name}
          typeSlug={typeSlug}
        />
      ) : null}
    </span>
  ) : (
    <PokemonAvatar
      className={cn("shrink-0", className)}
      decorative={decorative || ace === null}
      imageUrl={ace?.imageUrl ?? null}
      name={ace?.name ?? name}
      typeSlug={typeSlug}
    />
  );
