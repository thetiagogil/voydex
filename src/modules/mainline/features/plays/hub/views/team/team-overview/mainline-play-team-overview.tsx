"use client";

import { useState } from "react";

import { appRoutes } from "@/config/routes";
import type {
  MainlinePlayTeamMember,
  MainlinePlayTeamOverviewData,
} from "@/modules/mainline/features/plays/hub/types";

import { useTeamDetailSheetLayout } from "../shared/use-team-detail-sheet-layout";
import { LinkedPlanSummarySection } from "./sections/linked-plan-summary/linked-plan-summary-section";
import { TeamEventsSection } from "./sections/recent-team-events/team-events-section";
import { getDefaultTeamMember } from "./sections/roster/team-roster-model";
import { TeamRosterSection } from "./sections/roster/team-roster-section";
import { TeamMemberDetail } from "./sections/selected-pokemon/team-member-detail";
import { TeamMemberDetailSheet } from "./sections/selected-pokemon/team-member-detail-sheet";
import { TeamAnalysisSection } from "./sections/team-analysis/team-analysis-section";

type MainlinePlayTeamOverviewProps = {
  data: MainlinePlayTeamOverviewData;
  playId: string;
};

export const MainlinePlayTeamOverview = ({
  data,
  playId,
}: MainlinePlayTeamOverviewProps) => {
  const { mechanics, roster, teamPlan, teamTimelinePreview: events } = data;
  const gameSlug = data.play.game_slug;
  const defaultMember = getDefaultTeamMember(roster);
  const [selectedMemberId, setSelectedMemberId] = useState<string | null>(
    defaultMember?.play_pokemon_id ?? null,
  );
  const [mobileDetailOpen, setMobileDetailOpen] = useState(false);
  const usesDetailSheet = useTeamDetailSheetLayout();
  const selectedMember =
    roster.find((member) => member.play_pokemon_id === selectedMemberId) ??
    defaultMember;
  const rosterSelectedMemberId =
    usesDetailSheet && !mobileDetailOpen
      ? null
      : (selectedMember?.play_pokemon_id ?? null);

  const selectMember = (member: MainlinePlayTeamMember) => {
    setSelectedMemberId(member.play_pokemon_id);

    if (usesDetailSheet) {
      setMobileDetailOpen(true);
    }
  };

  const setMobileDetailVisibility = (open: boolean) => {
    setMobileDetailOpen(open);

    if (!open) {
      setSelectedMemberId(null);
    }
  };

  return (
    <>
      <div className="grid items-start gap-4 lg:grid-cols-[minmax(19rem,4fr)_minmax(0,9fr)]">
        <div className="grid min-w-0 gap-4">
          <TeamRosterSection
            roster={roster}
            selectedMemberId={rosterSelectedMemberId}
            onSelect={selectMember}
          />
          {teamPlan ? (
            <LinkedPlanSummarySection
              href={appRoutes.mainlinePlayTeamPlan(playId)}
              plan={teamPlan}
            />
          ) : null}
        </div>

        <div className="grid min-w-0 gap-4">
          <div className="hidden min-w-0 lg:block">
            <TeamMemberDetail
              gameSlug={gameSlug}
              mechanics={mechanics}
              member={selectedMember}
            />
          </div>

          <TeamAnalysisSection playId={playId} roster={roster} />
          <TeamEventsSection events={events} playId={playId} />
        </div>
      </div>

      <TeamMemberDetailSheet
        gameSlug={gameSlug}
        mechanics={mechanics}
        member={selectedMember}
        open={mobileDetailOpen}
        onOpenChange={setMobileDetailVisibility}
      />
    </>
  );
};
