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
 * The form menu: a white pill ("Form Mega X"), as tall as the round buttons
 * beside it. A Play member's battle forms (on its art, or in its sheet's top
 * bar) and a Codex entry's forms (beside the entry's actions) pick through
 * it. Each form's art shows only in the list, never again on the pill.
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
    value={value ?? undefined}
    variant="paper"
  />
);
