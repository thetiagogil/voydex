"use client";

import { useEffect, useRef, useState, type ReactNode } from "react";

import {
  pokemonDetailSections,
  type PokemonDetailSectionId,
} from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-sections";
import { PokemonPortrait } from "@/modules/reference/features/pokemon/components/pokemon-portrait";
import type { PokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { getBarLinkClassName, SteadyLabel } from "@/shared/components/bar-link";
import { DockedBar } from "@/shared/components/docked-bar";

type PokemonDetailSectionBarProps = {
  /* The entry's band: once it scrolls away, the bar docks. */
  children: ReactNode;
  imageUrl: string | null;
  name: string;
  type: PokemonTypeSlug | null;
};

/* The room a jumped-to section keeps under the docked bar. */
const scrollPadding = "88px";

/*
 * The entry's docked bar (`DockedBar`, as a Play's): once the band scrolls
 * away it docks with the Pokémon and an index of its sections, the one in
 * view marked. Each link jumps to its section; a section the page left out
 * has no anchor and no link.
 */
export const PokemonDetailSectionBar = ({
  children,
  imageUrl,
  name,
  type,
}: PokemonDetailSectionBarProps) => {
  const linksRef = useRef<HTMLDivElement>(null);
  const [sections, setSections] = useState<
    (typeof pokemonDetailSections)[number][]
  >([]);
  const [current, setCurrent] = useState<PokemonDetailSectionId | null>(null);

  /*
   * The sections this entry has, and which one you're reading: the last
   * whose top has passed under the bar (the first until then).
   */
  useEffect(() => {
    const present = pokemonDetailSections.filter((section) =>
      document.getElementById(section.id),
    );
    let frame = requestAnimationFrame(() => {
      setSections(present);
      update();
    });

    function update() {
      const line = parseFloat(scrollPadding) + 24;
      let reading: PokemonDetailSectionId | null = present[0]?.id ?? null;

      for (const section of present) {
        const top = document
          .getElementById(section.id)
          ?.getBoundingClientRect().top;

        if (top !== undefined && top <= line) {
          reading = section.id;
        }
      }

      /* At the page's end the last sections can't reach the line: mark the last. */
      const atEnd =
        window.scrollY + window.innerHeight >=
        document.documentElement.scrollHeight - 2;

      setCurrent(atEnd ? (present.at(-1)?.id ?? reading) : reading);
    }

    const onScroll = () => {
      cancelAnimationFrame(frame);
      frame = requestAnimationFrame(update);
    };

    window.addEventListener("scroll", onScroll, { passive: true });

    return () => {
      cancelAnimationFrame(frame);
      window.removeEventListener("scroll", onScroll);
    };
  }, []);

  /* Keep the marked link in view when the row scrolls sideways. */
  useEffect(() => {
    const row = linksRef.current;
    const link = row?.querySelector<HTMLElement>('[aria-current="true"]');

    if (!row || !link || row.scrollWidth <= row.clientWidth) {
      return;
    }

    const rowBox = row.getBoundingClientRect();
    const linkBox = link.getBoundingClientRect();

    if (linkBox.left < rowBox.left || linkBox.right > rowBox.right) {
      row.scrollLeft += linkBox.left - rowBox.left - 16;
    }
  }, [current]);

  return (
    <DockedBar
      picture={
        <PokemonPortrait
          alt=""
          imageUrl={imageUrl}
          type={type}
          sizes="40px"
          className="size-10 border-2 border-white"
          imageClassName="p-1"
        />
      }
      scrollPadding={scrollPadding}
      title={name}
      trailing={
        <nav aria-label={`${name}: sections`} className="min-w-0 flex-1">
          <div
            ref={linksRef}
            className="no-scrollbar flex min-w-0 items-center gap-1 overflow-x-auto sm:justify-end"
          >
            {sections.map((section) => (
              <a
                key={section.id}
                href={`#${section.id}`}
                aria-current={current === section.id ? "true" : undefined}
                className={getBarLinkClassName(current === section.id)}
              >
                <SteadyLabel>{section.label}</SteadyLabel>
              </a>
            ))}
          </div>
        </nav>
      }
    >
      {children}
    </DockedBar>
  );
};
