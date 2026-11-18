import type { PublicMoment, PublicPlayArt } from "@/config/public-art";
import { BadgeStamp } from "@/modules/mainline/features/plays/shared/components/badge-stamp";
import type { MedallionContent } from "@/modules/mainline/features/plays/shared/components/medallion";
import { RecordRow } from "@/modules/mainline/features/plays/shared/components/record-row";
import { getBadgeImageUrl } from "@/modules/reference/features/badges/data/badge-images";
import { getPokemonFormImageUrl } from "@/modules/reference/features/pokemon/data/pokemon-images";
import { appIcons } from "@/shared/components/app-icon";

/*
 * Mainline's public entry for the Play pieces the front page draws: the
 * badge stamps and the history rows are the Play's own components, mapped
 * from the example Play onto what each one reads. The site routes pass it in
 * (global features can't import a module); the contract is `PublicPlayArt`
 * in `@/config/public-art`.
 */

const toMedallionContent = (moment: PublicMoment): MedallionContent => {
  switch (moment.kind) {
    case "badge":
      return {
        imageUrl: getBadgeImageUrl(moment.spriteSlug),
        kind: "badge",
        type: moment.type,
      };
    case "note":
      return { icon: appIcons.actions.edit, kind: "note" };
    case "pokemon": {
      const imageUrl = getPokemonFormImageUrl(moment.pokemon);

      return imageUrl
        ? {
            imageUrl,
            kind: "pokemon",
            name: moment.pokemon.name,
            type: moment.pokemon.type,
          }
        : { icon: appIcons.product.event, kind: "status" };
    }
  }
};

export const publicPlayArt = {
  badgeStamp: ({ spriteSlug, tilt, type }) => (
    <BadgeStamp
      label=""
      state={{
        badge: { imageUrl: getBadgeImageUrl(spriteSlug), type },
        kind: "badge",
      }}
      tilt={tilt}
    />
  ),
  recordRow: ({ description, headline, kicker, moment }) => (
    <RecordRow
      description={description}
      headline={headline}
      kicker={kicker}
      medallion={toMedallionContent(moment)}
      wrap
    />
  ),
} satisfies PublicPlayArt;
