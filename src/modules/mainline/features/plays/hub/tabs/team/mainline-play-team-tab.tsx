"use client";

import { useState } from "react";

import { useTeamDetailSheetLayout } from "@/modules/mainline/features/plays/hub/tabs/team/client/use-team-detail-sheet-layout";
import { TeamEventsPanel } from "@/modules/mainline/features/plays/hub/tabs/team/sections/recent-team-events/team-events-panel";
import { getDefaultTeamMember } from "@/modules/mainline/features/plays/hub/tabs/team/sections/roster/team-roster-model";
import { TeamRosterCard } from "@/modules/mainline/features/plays/hub/tabs/team/sections/roster/team-roster-card";
import { TeamMemberDetailSheet } from "@/modules/mainline/features/plays/hub/tabs/team/sections/selected-pokemon/team-member-detail-sheet";
import { TeamMemberDetail } from "@/modules/mainline/features/plays/hub/tabs/team/sections/selected-pokemon/team-member-detail";
import { TeamAnalysisPanel } from "@/modules/mainline/features/plays/hub/tabs/team/sections/team-analysis/team-analysis-panel";
import { TeamPlanPanel } from "@/modules/mainline/features/plays/hub/tabs/team/sections/team-plan/team-plan-panel";
import type {
  MainlinePlayTeamMember,
  MainlinePlayTeamPlanSummary,
  MainlinePlayTimelineEvent,
} from "@/modules/mainline/features/plays/hub/types";

type MainlinePlayTeamTabProps = {
  events: MainlinePlayTimelineEvent[];
  gameSlug: string | null;
  roster: MainlinePlayTeamMember[];
  teamPlan: MainlinePlayTeamPlanSummary | null;
};

export const MainlinePlayTeamTab = ({
  events,
  gameSlug,
  roster,
  teamPlan,
}: MainlinePlayTeamTabProps) => {
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
          <TeamRosterCard
            roster={roster}
            selectedMemberId={rosterSelectedMemberId}
            onSelect={selectMember}
          />
          {teamPlan ? <TeamPlanPanel plan={teamPlan} /> : null}
        </div>

        <div className="grid min-w-0 gap-4">
          <div className="hidden min-w-0 lg:block">
            <TeamMemberDetail gameSlug={gameSlug} member={selectedMember} />
          </div>

          <TeamAnalysisPanel roster={roster} />
          <TeamEventsPanel events={events} />
        </div>
      </div>

      <TeamMemberDetailSheet
        gameSlug={gameSlug}
        member={selectedMember}
        open={mobileDetailOpen}
        onOpenChange={setMobileDetailVisibility}
      />
    </>
  );
};
