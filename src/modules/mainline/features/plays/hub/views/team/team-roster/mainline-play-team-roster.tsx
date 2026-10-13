"use client";

import { useState } from "react";

import type {
  MainlinePlayTeamMember,
  MainlinePlayTeamRosterData,
} from "@/modules/mainline/features/plays/hub/types";
import { useMainlinePlayDetailSheetLayout } from "@/modules/mainline/features/plays/hub/shell/use-mainline-play-detail-sheet-layout";

import { TeamRosterHead } from "./sections/roster/team-roster-head";
import {
  formatTeamRosterSummary,
  getDefaultTeamMember,
  getTeamRosterSummary,
} from "./sections/roster/team-roster-model";
import { TeamRosterSection } from "./sections/roster/team-roster-section";
import { TeamMemberDetail } from "./sections/selected-pokemon/team-member-detail";
import { TeamMemberDetailSheet } from "./sections/selected-pokemon/team-member-detail-sheet";

type MainlinePlayTeamRosterProps = {
  data: MainlinePlayTeamRosterData;
  /* The Pokémon a link asked to open on, such as an Overview sticker. */
  initialPokemonId?: string | null;
};

/*
 * The Roster, as v3 draws it: the page head, the Active team and the Reserve
 * as stickers, and the selected Pokémon's profile beside them (a bottom sheet
 * on phones and tablets).
 */
export const MainlinePlayTeamRoster = ({
  data,
  initialPokemonId = null,
}: MainlinePlayTeamRosterProps) => {
  const { mechanics, roster } = data;
  const versionGroupSlug = data.play.version_group_slug;
  const defaultMember = getDefaultTeamMember(roster, initialPokemonId);
  const [selectedMemberId, setSelectedMemberId] = useState<string | null>(
    defaultMember?.play_pokemon_id ?? null,
  );
  /* A Pokémon named by the link opens straight away in the phone sheet. */
  const [mobileDetailOpen, setMobileDetailOpen] = useState(
    Boolean(
      initialPokemonId && defaultMember?.play_pokemon_id === initialPokemonId,
    ),
  );
  const usesDetailSheet = useMainlinePlayDetailSheetLayout();
  const selectedMember =
    roster.find((member) => member.play_pokemon_id === selectedMemberId) ??
    defaultMember;

  const selectMember = (member: MainlinePlayTeamMember) => {
    setSelectedMemberId(member.play_pokemon_id);

    if (usesDetailSheet) {
      setMobileDetailOpen(true);
    }
  };

  return (
    <div className="grid min-w-0 gap-8">
      <TeamRosterHead
        summary={formatTeamRosterSummary(getTeamRosterSummary(roster))}
      />

      <div className="grid items-start gap-7 lg:grid-cols-[minmax(0,1.15fr)_minmax(0,1fr)]">
        <TeamRosterSection
          roster={roster}
          selectedMemberId={selectedMember?.play_pokemon_id ?? null}
          onSelect={selectMember}
        />
        <div className="sticky top-[calc(var(--play-dock-offset,0px)+0.75rem)] hidden min-w-0 lg:block">
          <TeamMemberDetail
            versionGroupSlug={versionGroupSlug}
            mechanics={mechanics}
            member={selectedMember}
          />
        </div>
      </div>

      {/* Only in the sheet layout: widen the window and the panel takes over. */}
      <TeamMemberDetailSheet
        versionGroupSlug={versionGroupSlug}
        mechanics={mechanics}
        member={selectedMember}
        open={mobileDetailOpen && usesDetailSheet}
        onOpenChange={setMobileDetailOpen}
      />
    </div>
  );
};
