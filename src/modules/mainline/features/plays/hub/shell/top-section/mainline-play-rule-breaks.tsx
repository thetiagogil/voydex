"use client";

import { useState } from "react";
import Link from "next/link";

import { appRoutes } from "@/config/routes";
import type {
  RuleBreaker,
  RuleBreaks,
} from "@/modules/mainline/features/plays/hub/views/team/team-roster/data/rule-checks";
import { getPokemonTypeCssVariables } from "@/modules/reference/features/pokemon/components/pokemon-type-styles";
import { isPokemonTypeSlug } from "@/modules/reference/features/pokemon/domain/type-slugs";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { FallbackImage } from "@/shared/components/fallback-image";
import { ResponsiveDetailSheet } from "@/shared/components/responsive-detail-sheet";
import { Badge } from "@/shared/components/ui/badge";
import { Button } from "@/shared/components/ui/button";
import { Card } from "@/shared/components/ui/card";
import { SheetTitle } from "@/shared/components/ui/sheet";

const formatRuleCount = (count: number) =>
  `${count} ${count === 1 ? "rule" : "rules"} broken`;

/* "Monotype", "Monotype and Shiny only", "Monotype, Nickname everything and Shiny only". */
const listNames = (names: string[]) =>
  names.length > 1
    ? `${names.slice(0, -1).join(", ")} and ${names.at(-1)}`
    : (names[0] ?? "");

/*
 * One Pokémon that breaks the rules: its art on its type's tint, its name,
 * and each rule it breaks with why. It opens that Pokémon on the Team page.
 */
const RuleBreakerRow = ({
  breaker,
  onNavigate,
  playId,
}: {
  breaker: RuleBreaker;
  onNavigate: () => void;
  playId: string;
}) => (
  <li>
    <Link
      href={appRoutes.mainlinePlayTeamPokemon(playId, breaker.playPokemonId)}
      onClick={onNavigate}
      className="group/card-link block rounded-xl"
    >
      <Card
        variant="interactive"
        style={getPokemonTypeCssVariables(
          breaker.typeSlug && isPokemonTypeSlug(breaker.typeSlug)
            ? breaker.typeSlug
            : null,
        )}
        className="flex-row items-center gap-3.5 px-3.5 py-3"
      >
        <span className="type-tint grid size-16 shrink-0 place-items-center rounded-full">
          <FallbackImage
            src={breaker.imageUrl}
            name={breaker.name}
            className="size-14"
          />
        </span>
        <span className="grid min-w-0 flex-1 gap-1">
          <span className="font-display text-18 truncate leading-tight font-semibold">
            {breaker.name}
          </span>
          <ul className="text-warn-ink text-14 grid gap-0.5 font-semibold">
            {breaker.warnings.map((warning) => (
              <li key={warning.key} className="flex gap-1.5">
                <AppIcon
                  icon={appIcons.status.warning}
                  size="md"
                  className="mt-0.5 shrink-0"
                />
                <span>
                  <span className="font-extrabold">{warning.ruleName}:</span>{" "}
                  {warning.text}
                </span>
              </li>
            ))}
          </ul>
        </span>
        <AppIcon icon={appIcons.actions.next} className="text-ink-3 shrink-0" />
      </Card>
    </Link>
  </li>
);

/*
 * The head's chip when the team breaks the Play's own rules, counting the
 * rules broken: white like the status, its words in amber. It opens a sheet
 * of the Pokémon that break them, each a way to it on the Team page. No rule
 * broken, no chip.
 */
export const MainlinePlayRuleBreaks = ({
  playId,
  ruleBreaks,
}: {
  playId: string;
  ruleBreaks: RuleBreaks;
}) => {
  const [isOpen, setIsOpen] = useState(false);

  if (!ruleBreaks.ruleNames.length) {
    return null;
  }

  const label = formatRuleCount(ruleBreaks.ruleNames.length);
  const close = () => setIsOpen(false);

  return (
    <>
      <Badge
        variant="warn"
        size="md"
        className="bg-surface shadow-card cursor-pointer"
        render={
          <button
            type="button"
            aria-haspopup="dialog"
            onClick={() => setIsOpen(true)}
          />
        }
      >
        <AppIcon icon={appIcons.status.warning} />
        {label}
      </Badge>
      <ResponsiveDetailSheet
        open={isOpen}
        onOpenChange={setIsOpen}
        label={label}
        head={
          <div>
            <SheetTitle className="text-24">{label}</SheetTitle>
            <p className="text-ink-2 text-14 mt-1 font-semibold text-pretty">
              {listNames(ruleBreaks.ruleNames)}.{" "}
              {ruleBreaks.pokemon.length === 1
                ? "One Pokémon on your team breaks"
                : `${ruleBreaks.pokemon.length} Pokémon on your team break`}{" "}
              {ruleBreaks.ruleNames.length === 1 ? "it" : "them"}.
            </p>
          </div>
        }
        footer={
          <Button
            nativeButton={false}
            className="w-full sm:ml-auto sm:w-auto"
            render={
              <Link href={appRoutes.mainlinePlayTeam(playId)} onClick={close} />
            }
          >
            Open Team
          </Button>
        }
      >
        <ul className="grid gap-3">
          {ruleBreaks.pokemon.map((breaker) => (
            <RuleBreakerRow
              key={breaker.playPokemonId}
              breaker={breaker}
              onNavigate={close}
              playId={playId}
            />
          ))}
        </ul>
      </ResponsiveDetailSheet>
    </>
  );
};
