"use client";

import { useState } from "react";
import Link from "next/link";

import { appRoutes } from "@/config/routes";
import type { RuleBreak } from "@/modules/mainline/features/plays/hub/views/team/team-roster/data/rule-checks";
import { AppIcon, appIcons } from "@/shared/components/app-icon";
import { ResponsiveDetailSheet } from "@/shared/components/responsive-detail-sheet";
import { Badge } from "@/shared/components/ui/badge";
import { Button } from "@/shared/components/ui/button";
import { SheetTitle } from "@/shared/components/ui/sheet";

const formatRuleCount = (count: number) =>
  `${count} ${count === 1 ? "rule" : "rules"} broken`;

/*
 * The head's amber chip when the team breaks the Play's own rules, counting
 * the rules broken. It opens a sheet that says, rule by rule, which Pokémon
 * break it. It only warns; nothing is blocked. No rule broken, no chip.
 */
export const MainlinePlayRuleBreaks = ({
  playId,
  ruleBreaks,
}: {
  playId: string | null;
  ruleBreaks: RuleBreak[];
}) => {
  const [isOpen, setIsOpen] = useState(false);

  if (!ruleBreaks.length) {
    return null;
  }

  const label = formatRuleCount(ruleBreaks.length);

  return (
    <>
      <Badge
        variant="warn"
        size="md"
        className="shadow-card cursor-pointer"
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
              Your team breaks the rules you set for this Play. Voydex only
              warns you; nothing is blocked.
            </p>
          </div>
        }
        footer={
          playId ? (
            <Button
              variant="secondary"
              nativeButton={false}
              className="w-full sm:w-auto"
              render={
                <Link
                  href={appRoutes.mainlinePlayTeam(playId)}
                  onClick={() => setIsOpen(false)}
                />
              }
            >
              Open Team
            </Button>
          ) : null
        }
      >
        <ul className="grid gap-3">
          {ruleBreaks.map((ruleBreak) => (
            <li
              key={ruleBreak.ruleId}
              className="bg-warn-soft text-warn-ink rounded-md px-4 py-3"
            >
              <p className="text-15 flex items-center gap-2 font-extrabold">
                <AppIcon icon={appIcons.status.warning} />
                {ruleBreak.ruleName}
              </p>
              <ul className="text-14 mt-1 grid gap-0.5 pl-6 font-semibold">
                {ruleBreak.lines.map((line) => (
                  <li key={line.key}>{line.text}</li>
                ))}
              </ul>
            </li>
          ))}
        </ul>
      </ResponsiveDetailSheet>
    </>
  );
};
