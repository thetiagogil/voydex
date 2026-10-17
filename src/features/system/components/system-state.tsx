import type { ReactNode } from "react";

type SystemStateProps = {
  /* Up to two actions: the main button, then a secondary one. */
  actions: ReactNode;
  /* One Pokémon standing on its patch of grass, when the route has its art. */
  artUrl?: string | null;
  description: ReactNode;
  eyebrow?: ReactNode;
  title: string;
};

/*
 * A page that has nothing to show (v3 `.nf`): centred, a Fredoka title, one
 * sentence, at most two actions. The grass is EmptyState's small patch, not
 * the meadow.
 */
export const SystemState = ({
  actions,
  artUrl,
  description,
  eyebrow,
  title,
}: SystemStateProps) => {
  return (
    <section className="mx-auto mt-10 mb-5 flex w-full max-w-140 flex-col items-center text-center sm:mt-16">
      {artUrl ? (
        <span
          aria-hidden
          className="relative mb-4 grid h-40 w-48 place-items-end justify-center sm:h-47.5 sm:w-55"
        >
          <span className="bg-hill absolute bottom-1 h-8.5 w-44 rounded-[50%] sm:w-50" />
          {/*
           * Lazy so React doesn't preload the art on every page: the
           * not-found boundary is rendered ahead of time with each layout.
           */}
          {/* eslint-disable-next-line @next/next/no-img-element */}
          <img
            src={artUrl}
            alt=""
            loading="lazy"
            className="relative size-36 object-contain sm:size-42.5"
          />
        </span>
      ) : null}
      {eyebrow ? (
        <p className="text-13 text-ink-2 font-bold">{eyebrow}</p>
      ) : null}
      <h1 className="text-28 mt-1.5 mb-2.5 leading-tight tracking-[-0.01em] sm:text-[40px]">
        {title}
      </h1>
      <p className="text-16 text-ink-2 mb-6.5 max-w-md leading-relaxed">
        {description}
      </p>
      <div className="flex w-full flex-col items-stretch justify-center gap-3 sm:w-auto sm:flex-row sm:flex-wrap">
        {actions}
      </div>
    </section>
  );
};
