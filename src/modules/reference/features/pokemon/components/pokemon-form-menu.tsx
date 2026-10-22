import { PokemonAvatar } from "@/modules/reference/features/pokemon/components/pokemon-avatar";
import {
  SelectControl,
  type SelectControlOption,
} from "@/shared/components/select-control";
import { cn } from "@/shared/utils/cn";

/*
 * One form in a form menu (a Play member's battle forms, a Codex entry's
 * forms): its art on its type's tint, its name, and a quieter line such as
 * "In battle · Mega Evolution".
 */
export const toPokemonFormOption = ({
  description,
  imageUrl,
  label,
  name,
  typeSlug,
  value,
}: {
  description?: string;
  imageUrl: string | null;
  label: string;
  /* The full form name, for the art's stand-in. */
  name: string;
  typeSlug: string | null;
  value: string;
}): SelectControlOption => ({
  description,
  icon: (
    <PokemonAvatar
      decorative
      imageUrl={imageUrl}
      name={name}
      typeSlug={typeSlug}
      className="size-8"
    />
  ),
  label,
  value,
});

/*
 * The form menu: a white pill on a Pokémon's art ("Form: Mega X"), since a
 * form is what the art shows. A Play member's battle forms and a Codex
 * entry's forms both pick through it; the caller places it on the art.
 */
export const PokemonFormMenu = ({
  ariaLabel = "Form",
  className,
  onValueChange,
  options,
  value,
}: {
  ariaLabel?: string;
  className?: string;
  onValueChange: (value: string) => void;
  options: SelectControlOption[];
  value: string | null;
}) => (
  <SelectControl
    ariaLabel={ariaLabel}
    className={cn("max-w-full", className)}
    onValueChange={onValueChange}
    options={options}
    placeholder="Form"
    prefix="Form"
    size="sm"
    value={value ?? undefined}
    variant="paper"
  />
);
