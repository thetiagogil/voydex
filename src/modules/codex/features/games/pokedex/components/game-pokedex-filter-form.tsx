import type { GamePokedexFilters } from "@/modules/codex/features/games/pokedex/components/game-pokedex-browser-model";
import { CodexFilterPanel } from "@/modules/codex/shared/components/codex-browse";
import type { GamePokedexData } from "@/modules/codex/shared/types";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { PokemonTypeMark } from "@/shared/components/pokemon/pokemon-type-icon";
import { SelectControl } from "@/shared/components/select-control";
import {
  InputGroup,
  InputGroupAddon,
  InputGroupInput,
} from "@/shared/components/ui/input-group";
import { isPokemonTypeSlug } from "@/shared/domain/pokemon/constants";

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
      className="lg:grid-cols-[minmax(18rem,1fr)_auto]"
      onSubmit={(event) => {
        event.preventDefault();
      }}
    >
      <InputGroup className="flex-1">
        <InputGroupAddon>
          <AppIcon icon={appIcons.actions.search} aria-hidden />
        </InputGroupAddon>
        <InputGroupInput
          name="q"
          value={filters.query}
          onChange={(event) => {
            onQueryChange(event.currentTarget.value);
          }}
          placeholder={
            hasAbilities
              ? "Search by name, PokÃ©dex number, or ability"
              : "Search by name or PokÃ©dex number"
          }
        />
      </InputGroup>
      <SelectControl
        name="type"
        ariaLabel="Filter by type"
        value={filters.type}
        onValueChange={onTypeChange}
        options={typeOptions}
        placeholder="All types"
        className="w-full lg:w-44"
      />
    </CodexFilterPanel>
  );
};
