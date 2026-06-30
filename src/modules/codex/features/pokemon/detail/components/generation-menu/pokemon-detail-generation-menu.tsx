import { PokemonDetailGenerationMenuDesktop } from "@/modules/codex/features/pokemon/detail/components/generation-menu/pokemon-detail-generation-menu-desktop";
import { PokemonDetailGenerationMenuMobile } from "@/modules/codex/features/pokemon/detail/components/generation-menu/pokemon-detail-generation-menu-mobile";
import type { PokemonDetailGenerationNavigationItem } from "@/modules/codex/features/pokemon/detail/types/pokemon-detail-navigation";

type PokemonDetailGenerationMenuProps = {
  generations: PokemonDetailGenerationNavigationItem[];
};

export const PokemonDetailGenerationMenu = ({
  generations,
}: PokemonDetailGenerationMenuProps) => {
  return (
    <>
      <PokemonDetailGenerationMenuDesktop generations={generations} />
      <PokemonDetailGenerationMenuMobile generations={generations} />
    </>
  );
};
