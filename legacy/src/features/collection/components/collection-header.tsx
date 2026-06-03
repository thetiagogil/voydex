type CollectionHeaderProps = {
  totalCount: number;
  uniqueSpecies: number;
  shinyCount: number;
};

export const CollectionHeader = ({
  totalCount,
  uniqueSpecies,
  shinyCount,
}: CollectionHeaderProps) => {
  return (
    <div>
      <h1 className="mb-2 text-3xl font-bold">Collection</h1>
      <div className="text-muted-foreground flex flex-wrap gap-2 text-sm">
        <span>{totalCount} Pokémon</span>
        <span>·</span>
        <span>{uniqueSpecies} unique species</span>
        <span>·</span>
        <span>{shinyCount} shiny</span>
      </div>
    </div>
  );
};
