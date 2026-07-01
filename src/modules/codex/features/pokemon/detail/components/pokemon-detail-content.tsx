import type { ReactNode } from "react";

type PokemonDetailContentProps = {
  left: ReactNode;
  right?: ReactNode;
};

export const PokemonDetailContent = ({
  left,
  right,
}: PokemonDetailContentProps) => {
  return (
    <div className="grid gap-2 lg:grid-cols-12">
      <section className="min-w-0 lg:col-span-4">{left}</section>

      {right ? (
        <section className="min-w-0 lg:col-span-8">{right}</section>
      ) : null}
    </div>
  );
};
