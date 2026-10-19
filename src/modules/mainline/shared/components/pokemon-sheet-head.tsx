import type { ReactNode } from "react";

import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import type { PokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { FallbackImage } from "@/shared/components/fallback-image";
import { cn } from "@/shared/utils/cn";

type PokemonSheetHeadProps = {
  /* Under the identity, on the tint: the Pokémon's own actions. */
  actions?: ReactNode;
  /* The title block beside the art; it renders the sheet's own title. */
  children: ReactNode;
  imageUrl: string | null;
  /*
   * `flush` fills a side sheet's or dialog's top edge to edge; `inset` is a
   * rounded card inside a bottom sheet's scroll, as v3's `.bs-card`.
   */
  layout: "flush" | "inset";
  /* The Pokémon pictured: its first letter stands in when there is no art. */
  name: string;
  /* A Pokémon you mean to have (a Plan's slot): its art sits on white, not as a sticker. */
  planned?: boolean;
  type: PokemonTypeSlug | null;
};

/*
 * v3 `.sh-head`: the head of every sheet about one Pokémon (its Collection
 * sheet, adding or editing it, a Plan's slot). Its art as a sticker beside
 * the title, all on the type's tint, so the sheet carries the Pokémon's
 * colour.
 */
export const PokemonSheetHead = ({
  actions,
  children,
  imageUrl,
  layout,
  name,
  planned = false,
  type,
}: PokemonSheetHeadProps) => {
  const inset = layout === "inset";

  return (
    <div
      style={getPokemonTypeCssVariables(type)}
      className={cn(
        "type-tint",
        inset ? "mt-1 rounded-lg p-4" : "px-4.5 py-4.5 sm:px-7 sm:pt-5.5",
      )}
    >
      <div className={cn("flex items-center", inset ? "gap-4" : "gap-4.5")}>
        <span
          aria-hidden
          className={cn(
            "grid shrink-0 place-items-center rounded-xl",
            planned ? "bg-white/70" : "sticker",
            inset ? "size-21" : "size-20 sm:size-27.5",
          )}
        >
          <FallbackImage
            src={imageUrl}
            name={name}
            className={cn(
              "max-w-none object-contain",
              inset ? "size-18" : "size-17.5 sm:size-24",
            )}
          />
        </span>
        {children}
      </div>
      {actions ? <div className="mt-4">{actions}</div> : null}
    </div>
  );
};
