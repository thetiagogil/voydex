import type { ReactNode } from "react";

import type { PublicPlayArt, PublicPokemon } from "@/config/public-art";

type IntroChapterProps = {
  children: ReactNode;
  partner: PublicPokemon;
  playArt: PublicPlayArt;
  text: string;
  title: string;
  when: string;
};

/*
 * One step of the Intro's story: the partner at that stage down the left, a
 * dashed path to the next step, the words, then a drawing of the screen.
 */
export const IntroChapter = ({
  children,
  partner,
  playArt,
  text,
  title,
  when,
}: IntroChapterProps) => (
  <article className="sm:not-last:before:border-line relative grid grid-cols-1 gap-2.5 pb-8 sm:grid-cols-[84px_minmax(0,1fr)] sm:gap-7 sm:pb-[46px] sm:not-last:before:absolute sm:not-last:before:top-[100px] sm:not-last:before:bottom-3.5 sm:not-last:before:left-10 sm:not-last:before:border-l-[3px] sm:not-last:before:border-dashed">
    {playArt.medallion({
      moment: { kind: "pokemon", pokemon: partner },
      size: "lg",
    })}
    <div className="flex min-w-0 flex-col gap-5 sm:pt-1.5">
      <div>
        <p className="text-14 text-ink-3 mb-2 font-extrabold">
          {when} · {partner.name}
        </p>
        <h2 className="text-[26px] leading-[1.1] tracking-[-0.015em] sm:text-[30px]">
          {title}
        </h2>
        <p className="text-16 text-ink-2 mt-3 max-w-[44em] leading-[1.65] font-semibold">
          {text}
        </p>
      </div>
      {children}
    </div>
  </article>
);
