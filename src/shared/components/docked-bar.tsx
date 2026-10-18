"use client";

import { useEffect, useRef, useState, type ReactNode } from "react";

import { cn } from "@/shared/utils/cn";

type DockedBarProps = {
  /* The page's band: once it scrolls away, the bar docks. */
  children: ReactNode;
  /*
   * A CSS property set on the root while the bar is docked, holding the
   * room it covers, so sticky panels stay clear of it.
   */
  offsetProperty?: string;
  /* A small picture before the title, from `sm` up (a cover, a portrait). */
  picture?: ReactNode;
  /* The room a jumped-to or focused element keeps under the bar. */
  scrollPadding: string;
  /* The page's name, from `sm` up. */
  title: string;
  /* What the bar is for: a Play's tabs, an entry's section links. */
  trailing: ReactNode;
};

/* The room the docked bar covers, for `offsetProperty`. */
const DOCKED_BAR_HEIGHT = "76px";

/*
 * A page's band, condensed: once the band scrolls away, a slim bar slides
 * down and docks to the top edge, full width on the band's colour, with the
 * picture, the page's name and its own controls in the page column. A
 * Play's head and a Pokémon's entry use it.
 */
export const DockedBar = ({
  children,
  offsetProperty,
  picture,
  scrollPadding,
  title,
  trailing,
}: DockedBarProps) => {
  const bandRef = useRef<HTMLDivElement>(null);
  const [isDocked, setIsDocked] = useState(false);

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

  /* A jumped-to section, or a focused element, stays clear of the bar. */
  useEffect(() => {
    const root = document.documentElement.style;

    root.setProperty("scroll-padding-top", scrollPadding);

    return () => {
      root.removeProperty("scroll-padding-top");
    };
  }, [scrollPadding]);

  /* While docked, the top bar's pill steps aside for this bar. */
  useEffect(() => {
    if (!isDocked) {
      return;
    }

    const root = document.documentElement;

    root.dataset.barDocked = "";

    return () => {
      delete root.dataset.barDocked;
    };
  }, [isDocked]);

  useEffect(() => {
    if (!offsetProperty || !isDocked) {
      return;
    }

    const root = document.documentElement.style;

    root.setProperty(offsetProperty, DOCKED_BAR_HEIGHT);

    return () => {
      root.removeProperty(offsetProperty);
    };
  }, [isDocked, offsetProperty]);

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
        <div className="bg-band-sand shadow-float">
          <div className="page-column flex min-h-16 min-w-0 items-center gap-3 py-2">
            {picture ? (
              <span className="flex shrink-0 max-sm:hidden">{picture}</span>
            ) : null}
            <p className="font-display text-17 hidden min-w-0 shrink truncate font-semibold sm:block sm:max-w-64">
              {title}
            </p>
            <div className="ml-auto flex max-w-full min-w-0 items-center sm:flex-1 sm:justify-end">
              {trailing}
            </div>
          </div>
        </div>
      </div>
      <div ref={bandRef}>{children}</div>
    </>
  );
};
