"use client";

import type { RuleWarning } from "@/modules/mainline/features/plays/hub/views/team/team-roster/data/rule-checks";
import {
  PlayTeamsDialog,
  usePlayTeamsDialog,
} from "@/modules/mainline/shared/components/play-teams-dialog";
import { readPlayTeamsAction } from "@/modules/mainline/shared/server/play-teams-action";
import { TextLink } from "@/shared/components/text-link";

/*
 * Why a Pokémon breaks a rule. No Pokémon reuse ends with a link, "another
 * Play" or "3 other Plays", that opens those Plays with their teams, so a
 * long list of names never piles up in the line.
 */
export const RuleWarningText = ({ warning }: { warning: RuleWarning }) => {
  const reuse = warning.reuse;
  const plays = usePlayTeamsDialog(() =>
    readPlayTeamsAction(reuse?.playIds ?? []),
  );

  if (!reuse) {
    return warning.text;
  }

  const count = reuse.playIds.length;
  const used = reuse.family ? `${reuse.name}'s evolution family` : reuse.name;

  return (
    <>
      {warning.text}{" "}
      <TextLink
        onClick={plays.show}
        aria-haspopup="dialog"
        className="relative z-10 text-current underline"
      >
        {count === 1 ? "another Play" : `${count} other Plays`}
      </TextLink>
      .
      <PlayTeamsDialog
        dialog={plays.dialog}
        title={`Plays that used ${used}`}
        description="Your earlier Plays, each with its team now. Open one to go to it."
        empty="Those Plays can't be found anymore."
      />
    </>
  );
};
