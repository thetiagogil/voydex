"use client";

import { useEffect, useRef, useState, type ReactNode } from "react";

import {
  pokemonDetailSections,
  type PokemonDetailSectionId,
} from "@/modules/codex/features/pokemon/detail/components/pokemon-detail-sections";
import { PokemonPortrait } from "@/modules/reference/features/pokemon/components/pokemon-portrait";
import type { PokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { cn } from "@/shared/utils/cn";

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
 * Like a Play's docked bar: once the entry's band scrolls away, a slim bar
 * docks to the top edge with the Pokémon and an index of its sections, the
 * one in view marked. Each link jumps to its section; a section the page
 * left out has no anchor and no link.
 */
export const PokemonDetailSectionBar = ({
  children,
  imageUrl,
  name,
  type,
}: PokemonDetailSectionBarProps) => {
  const bandRef = useRef<HTMLDivElement>(null);
  const linksRef = useRef<HTMLDivElement>(null);
  const [isDocked, setIsDocked] = useState(false);
  const [sections, setSections] = useState<
    (typeof pokemonDetailSections)[number][]
  >([]);
  const [current, setCurrent] = useState<PokemonDetailSectionId | null>(null);

  useEffect(() => {
    const band = bandRef.current;

    if (!band || typeof IntersectionObserver === "undefined") {
      return;
    }

    const observer = new IntersectionObserver(
      ([entry]) => setIsDocked(!entry.isIntersecting),
      { rootMargin: "-24px 0px 0px 0px" },
    );

    observer.observe(band);

    return () => observer.disconnect();
  }, []);

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

      setCurrent(reading);
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

  /* A jumped-to section, or a focused element, stays clear of the bar. */
  useEffect(() => {
    const root = document.documentElement.style;

    root.setProperty("scroll-padding-top", scrollPadding);

    return () => {
      root.removeProperty("scroll-padding-top");
    };
  }, []);

  return (
    <>
      <div
        aria-hidden={!isDocked}
        inert={!isDocked}
        className={cn(
          "fixed inset-x-0 top-0 z-30 transition-[translate,opacity,visibility] duration-200 ease-out",
          isDocked
            ? "visible translate-y-0 opacity-100"
            : "invisible -translate-y-[calc(100%+16px)] opacity-0",
        )}
      >
        <div className="bg-band-sand shadow-[0_3px_0_var(--lip),var(--shadow-float-value)]">
          <div className="page-column flex h-16 min-w-0 items-center gap-3">
            <PokemonPortrait
              alt=""
              imageUrl={imageUrl}
              type={type}
              sizes="40px"
              className="size-10 shrink-0 border-2 border-white max-sm:hidden"
              imageClassName="p-1"
            />
            <p className="font-display text-17 hidden min-w-0 shrink-0 truncate font-semibold sm:block sm:max-w-48">
              {name}
            </p>
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
                    className={cn(
                      "text-14 text-ink-2 hover:text-ink focus-visible:outline-focus inline-flex h-9 shrink-0 items-center rounded-full px-3 font-bold whitespace-nowrap transition-colors outline-none hover:bg-(--bar-hover) focus-visible:outline-3 focus-visible:-outline-offset-3 focus-visible:outline-solid",
                      current === section.id &&
                        "bg-select-soft text-select-ink hover:bg-select-soft hover:text-select-ink font-extrabold",
                    )}
                  >
                    {section.label}
                  </a>
                ))}
              </div>
            </nav>
          </div>
        </div>
      </div>
      <div ref={bandRef}>{children}</div>
    </>
  );
};
