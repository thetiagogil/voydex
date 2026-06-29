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
    <div className="mt-4 grid gap-4 lg:grid-cols-12 lg:gap-6">
      <section className="min-w-0 lg:col-span-4">{left}</section>

      {right ? (
        <section className="border-app-surface-border min-w-0 lg:col-span-8 lg:border-l lg:pl-6">
          {right}
        </section>
      ) : null}
    </div>
  );
};
