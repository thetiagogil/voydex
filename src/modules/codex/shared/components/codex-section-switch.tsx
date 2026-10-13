"use client";

import { usePathname } from "next/navigation";

import { appRoutes } from "@/config/routes";
import { SegmentedControl } from "@/shared/components/segmented-control";

const codexSections = [
  { href: appRoutes.codexPokemon, label: "Pokémon", value: "pokemon" },
  { href: appRoutes.codexGames, label: "Games", value: "games" },
] as const;

type CodexSection = (typeof codexSections)[number]["value"];

/*
 * The Codex's two sections, the first step of every Codex crumb (v3
 * `codexSwitch`), as links on the one segment switch. The section's own list
 * is the page; a page inside the section marks its section as current.
 */
export const CodexSectionSwitch = () => {
  const pathname = usePathname();
  const exactSection = codexSections.find(
    (section) => section.href === pathname,
  );

  return (
    <SegmentedControl<CodexSection>
      ariaLabel="Codex sections"
      className="mx-0.5"
      size="sm"
      variant="segment"
      value={exactSection?.value ?? null}
      options={codexSections.map((section) => ({
        current: pathname.startsWith(`${section.href}/`),
        href: section.href,
        label: section.label,
        value: section.value,
      }))}
    />
  );
};
