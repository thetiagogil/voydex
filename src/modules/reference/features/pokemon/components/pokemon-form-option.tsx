import { PokemonAvatar } from "@/modules/reference/features/pokemon/components/pokemon-avatar";
import type { SelectControlOption } from "@/shared/components/select-control";

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
