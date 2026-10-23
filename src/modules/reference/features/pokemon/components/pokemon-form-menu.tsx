import { PokemonAvatar } from "@/modules/reference/features/pokemon/components/pokemon-avatar";
import { PokemonTypeList } from "@/modules/reference/features/pokemon/components/pokemon-type-list";
import {
  SelectControl,
  type SelectControlOption,
} from "@/shared/components/select-control";
import { cn } from "@/shared/utils/cn";

/*
 * One form in a form menu (a Play member's battle forms, a Codex entry's
 * forms, Change form): its art on its type's tint, its name, a quieter line
 * such as "Mega Evolution", its types at the end, and the class heading it
 * sits under.
 */
export const toPokemonFormOption = ({
  description,
  disabled,
  group,
  imageUrl,
  label,
  name,
  typeSlug,
  types,
  value,
}: {
  description?: string;
  /* Shown but not pickable, such as Gigantamax without its Factor. */
  disabled?: boolean;
  group?: string;
  imageUrl: string | null;
  label: string;
  /* The full form name, for the art's stand-in. */
  name: string;
  typeSlug: string | null;
  /* Its types as small marks at the end of the row. */
  types?: { name: string; slug: string }[];
  value: string;
}): SelectControlOption => ({
  description,
  disabled,
  group,
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
  trailing: types?.length ? (
    <PokemonTypeList
      types={types}
      badgeDisplay="icon"
      badgeSize="sm"
      className="gap-1"
    />
  ) : undefined,
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
