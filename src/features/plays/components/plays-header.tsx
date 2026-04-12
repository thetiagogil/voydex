type PlaysHeaderProps = {
  totalCount: number;
};

export const PlaysHeader = ({ totalCount }: PlaysHeaderProps) => {
  return (
    <div>
      <h1 className="mb-2 text-3xl font-bold">All Plays</h1>
      <p className="text-muted-foreground">
        {totalCount} total adventure{totalCount !== 1 ? "s" : ""}
      </p>
    </div>
  );
};
