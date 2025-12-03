import { TypeBadge } from "@/components/shared/type-badge";
import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { Card, CardContent } from "@/components/ui/card";
import { Trash2 } from "lucide-react";

interface PlayPokemonTeamSheetCardProps {
  openDetails: boolean;
  pokemon: PlayPokemon;
  onEdit: () => void;
  onDelete: () => void;
}

const PokemonSprite = ({ pokemon }: { pokemon: PlayPokemon }) => {
  const spriteSize = "h-10 w-10";
  return (
    <div
      className={`flex ${spriteSize} flex-shrink-0 items-center justify-center`}
    >
      {pokemon.form?.sprite_url ? (
        <img
          src={pokemon.form.sprite_url}
          alt={pokemon.species.name}
          className="h-full w-full object-contain"
        />
      ) : (
        <div className="bg-muted flex h-full w-full items-center justify-center rounded">
          <span className="text-muted-foreground text-xs">?</span>
        </div>
      )}
    </div>
  );
};

const PokemonInfo = ({ pokemon }: { pokemon: PlayPokemon }) => {
  return (
    <div className="min-w-[100px]">
      <p className="truncate text-sm font-semibold">
        {pokemon.nickname || pokemon.species.name}
      </p>
      {pokemon.nickname && (
        <p className="text-muted-foreground truncate text-xs">
          {pokemon.species.name}
        </p>
      )}
    </div>
  );
};

const PokemonLevel = ({ pokemon }: { pokemon: PlayPokemon }) => {
  return (
    <Badge variant="outline-secondary" className="text-xs">
      Lv. {pokemon.level}
    </Badge>
  );
};

const PokemonTypes = ({
  pokemon,
  showDetails,
}: {
  pokemon: PlayPokemon;
  showDetails: boolean;
}) => {
  return (
    <div className={`flex ${showDetails && "min-w-[120px]"} gap-1`}>
      {pokemon.types.map((type) =>
        showDetails ? (
          <TypeBadge key={type.id} type={type.name as Type} />
        ) : (
          <TypeBadge
            key={type.id}
            type={type.name as Type}
            size="sm"
            variant="solid"
          />
        ),
      )}
    </div>
  );
};

const PokemonNatureAbility = ({ pokemon }: { pokemon: PlayPokemon }) => {
  return (
    <div className="flex min-w-[100px] flex-col gap-1 text-xs">
      <div className="truncate">
        <span className="text-muted-foreground">Nature: </span>
        <span>{pokemon.nature ? pokemon.nature.name : "Unknown"}</span>
      </div>
      <div className="truncate">
        <span className="text-muted-foreground">Ability: </span>
        <span>{pokemon.ability ? pokemon.ability.name : "Unknown"}</span>
      </div>
    </div>
  );
};

const PokemonMoves = ({ pokemon }: { pokemon: PlayPokemon }) => {
  return (
    <div className="grid flex-1 grid-cols-2 gap-1 text-xs">
      {Array.from({ length: 4 }).map((_, i) => {
        const move = pokemon.moves[i];
        return (
          <div className="truncate" key={i}>
            <span className="text-muted-foreground">Move {i + 1}: </span>
            <span>{move?.name || "-"}</span>
          </div>
        );
      })}
    </div>
  );
};

const PokemonActions = ({ onDelete }: { onDelete: () => void }) => {
  return (
    <Button
      variant="ghost"
      size="icon-sm"
      onClick={(e) => {
        e.stopPropagation();
        onDelete();
      }}
      className="ms-auto"
    >
      <Trash2 />
    </Button>
  );
};

export const PlayPokemonTeamSheetCard = ({
  openDetails,
  pokemon,
  onEdit,
  onDelete,
}: PlayPokemonTeamSheetCardProps) => {
  return (
    <Card onClick={onEdit}>
      <CardContent className="flex items-center gap-4">
        {!openDetails ? (
          // Compact view
          <>
            <PokemonSprite pokemon={pokemon} />
            <PokemonInfo pokemon={pokemon} />
            <PokemonTypes pokemon={pokemon} showDetails={false} />
            <PokemonActions onDelete={onDelete} />
          </>
        ) : (
          // Expanded view
          <>
            <PokemonSprite pokemon={pokemon} />
            <PokemonInfo pokemon={pokemon} />
            <PokemonLevel pokemon={pokemon} />
            <PokemonTypes pokemon={pokemon} showDetails={true} />
            <PokemonNatureAbility pokemon={pokemon} />
            <PokemonMoves pokemon={pokemon} />
            <PokemonActions onDelete={onDelete} />
          </>
        )}
      </CardContent>
    </Card>
  );
};
