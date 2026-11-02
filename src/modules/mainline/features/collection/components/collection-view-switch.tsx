import { appRoutes } from "@/config/routes";
import type { CollectionView } from "@/modules/mainline/features/collection/types";
import { SegmentedControl } from "@/shared/components/segmented-control";

type CollectionViewSwitchProps = {
  /* Hearted Pokémon. */
  favouriteCount: number;
  /* Played games. */
  gameCount: number;
  /* Species in the Collection. */
  pokemonCount: number;
  value: CollectionView;
};

/*
 * The Collection's Pokémon | Favourites | Games switch, under the page's
 * head. Each view is its own address (`?view=games`), as Library's tabs.
 */
export const CollectionViewSwitch = ({
  favouriteCount,
  gameCount,
  pokemonCount,
  value,
}: CollectionViewSwitchProps) => (
  <SegmentedControl
    ariaLabel="Collection views"
    className="mt-5"
    phoneScroll
    selectedTone="strong"
    value={value}
    options={[
      {
        count: pokemonCount,
        href: appRoutes.mainlineCollection,
        label: "Pokémon",
        value: "pokemon",
      },
      {
        count: favouriteCount,
        href: appRoutes.mainlineCollectionFavourites,
        label: "Favourites",
        value: "favourites",
      },
      {
        count: gameCount,
        href: appRoutes.mainlineCollectionGames,
        label: "Games",
        value: "games",
      },
    ]}
  />
);
