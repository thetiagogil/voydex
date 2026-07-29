import type { GamePokedexFilters } from "@/modules/codex/features/games/pokedex/components/game-pokedex-browser-model";
import { CodexFilterPanel } from "@/modules/codex/shared/components/codex-filter-panel";
import type { GamePokedexData } from "@/modules/reference/types";
import { PokemonTypeMark } from "@/modules/reference/features/pokemon/components/pokemon-type-icon";
import { SearchControl } from "@/shared/components/search-control";
import { SelectControl } from "@/shared/components/select-control";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";

type GamePokedexFilterFormProps = {
  filters: GamePokedexFilters;
  hasAbilities: boolean;
  onQueryChange: (query: string) => void;
  onTypeChange: (type: string) => void;
  types: GamePokedexData["types"];
};

const getTypeOptionIcon = (typeSlug: string) => {
  if (!isPokemonTypeSlug(typeSlug)) {
    return null;
  }

  return (
    <PokemonTypeMark
      type={typeSlug}
      className="size-5"
      iconClassName="size-3"
    />
  );
};

export const GamePokedexFilterForm = ({
  filters,
  hasAbilities,
  onQueryChange,
  onTypeChange,
  types,
}: GamePokedexFilterFormProps) => {
  const typeOptions = [
    { label: "All types", value: "" },
    ...types.map((type) => ({
      icon: getTypeOptionIcon(type.slug),
      label: type.name,
      value: type.slug,
    })),
  ];

  return (
    <CodexFilterPanel
      variant="journal"
      className="gap-2 lg:grid-cols-[minmax(18rem,1fr)_minmax(0,10.5rem)] lg:gap-3"
      onSubmit={(event) => {
        event.preventDefault();
      }}
    >
      <SearchControl
        name="q"
        ariaLabel="Search Pokémon"
        value={filters.query}
        onValueChange={onQueryChange}
        placeholder={
          hasAbilities
            ? "Search by name, Pokédex number, or ability"
            : "Search by name or Pokédex number"
        }
        className="bg-card h-10 flex-1"
      />
      <SelectControl
        name="type"
        ariaLabel="Filter by type"
        value={filters.type}
        onValueChange={onTypeChange}
        options={typeOptions}
        placeholder="All types"
        size="lg"
        className="w-full"
      />
    </CodexFilterPanel>
  );
};
