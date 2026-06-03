type AdventuresHeaderProps = {
  totalCount: number;
};

export const AdventuresHeader = ({ totalCount }: AdventuresHeaderProps) => {
  return (
    <div>
      <h1 className="mb-2 text-3xl font-bold">Plays</h1>
      <p className="text-muted-foreground">
        {totalCount} total play{totalCount !== 1 ? "s" : ""}
      </p>
    </div>
  );
};
