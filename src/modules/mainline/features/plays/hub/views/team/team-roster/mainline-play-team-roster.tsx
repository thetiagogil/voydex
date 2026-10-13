"use client";

import { useState } from "react";

import { appRoutes } from "@/config/routes";
import type {
  MainlinePlayTeamMember,
  MainlinePlayTeamRosterData,
} from "@/modules/mainline/features/plays/hub/types";

import { useMainlinePlayDetailSheetLayout } from "@/modules/mainline/features/plays/hub/shell/use-mainline-play-detail-sheet-layout";
import { LinkedPlanSummarySection } from "./sections/linked-plan-summary/linked-plan-summary-section";
import { TeamEventsSection } from "./sections/recent-team-events/team-events-section";
import { TeamRosterHead } from "./sections/roster/team-roster-head";
import {
  formatTeamRosterSummary,
  getDefaultTeamMember,
  getTeamRosterSummary,
} from "./sections/roster/team-roster-model";
import { TeamRosterSection } from "./sections/roster/team-roster-section";
import { TeamMemberDetail } from "./sections/selected-pokemon/team-member-detail";
import { TeamMemberDetailSheet } from "./sections/selected-pokemon/team-member-detail-sheet";
import { TeamAnalysisSection } from "./sections/team-analysis/team-analysis-section";

type MainlinePlayTeamRosterProps = {
  data: MainlinePlayTeamRosterData;
  playId: string;
};

/*
 * Team: the roster as stickers beside the selected Pokémon (a bottom sheet on
 * phones and tablets), then the Plan, a quick analysis and recent moments.
 */
export const MainlinePlayTeamRoster = ({
  data,
  playId,
}: MainlinePlayTeamRosterProps) => {
  const { mechanics, roster, teamPlan, teamTimelinePreview: events } = data;
  const gameSlug = data.play.game_slug;
  const summary = getTeamRosterSummary(roster);
  const defaultMember = getDefaultTeamMember(roster);
  const [selectedMemberId, setSelectedMemberId] = useState<string | null>(
    defaultMember?.play_pokemon_id ?? null,
  );
  const [mobileDetailOpen, setMobileDetailOpen] = useState(false);
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
      <TeamRosterHead summary={formatTeamRosterSummary(summary)} />

      <div className="grid items-start gap-7 lg:grid-cols-[minmax(0,1.15fr)_minmax(0,1fr)]">
        <TeamRosterSection
          roster={roster}
          selectedMemberId={selectedMember?.play_pokemon_id ?? null}
          showsReserve={summary.showsReserve}
          onSelect={selectMember}
        />
        <div className="sticky top-[calc(var(--play-dock-offset,0px)+0.75rem)] hidden min-w-0 lg:block">
          <TeamMemberDetail
            gameSlug={gameSlug}
            mechanics={mechanics}
            member={selectedMember}
          />
        </div>
      </div>

      <div className="grid gap-5 lg:grid-cols-2 lg:gap-7">
        {teamPlan ? (
          <LinkedPlanSummarySection
            href={appRoutes.mainlinePlayTeamPlan(playId)}
            plan={teamPlan}
          />
        ) : null}
        <TeamAnalysisSection
          className={teamPlan ? undefined : "lg:col-span-2"}
          playId={playId}
          roster={roster}
        />
        <TeamEventsSection
          className="lg:col-span-2"
          events={events}
          playId={playId}
          roster={roster}
        />
      </div>

      {/* Only in the sheet layout: widen the window and the panel takes over. */}
      <TeamMemberDetailSheet
        gameSlug={gameSlug}
        mechanics={mechanics}
        member={selectedMember}
        open={mobileDetailOpen && usesDetailSheet}
        onOpenChange={setMobileDetailOpen}
      />
    </div>
  );
};
