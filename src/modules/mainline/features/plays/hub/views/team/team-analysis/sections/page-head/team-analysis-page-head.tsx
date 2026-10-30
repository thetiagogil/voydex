"use client";

import { appRoutes } from "@/config/routes";
import { PageHeader } from "@/shared/components/page-header";
import { SegmentedControl } from "@/shared/components/segmented-control";

import type { TeamAnalysisReading } from "../../types";

/*
 * The reading switch on the right of the page head (v3's Overall / Story
 * matchups): two links, so each reading has its own address.
 */
const TeamAnalysisReadingSwitch = ({
  playId,
  reading,
}: {
  playId: string;
  reading: TeamAnalysisReading;
}) => {
  const href = appRoutes.mainlinePlayTeamAnalysis(playId);

  return (
    <SegmentedControl
      ariaLabel="Reading"
      variant="segment"
      value={reading}
      options={[
        { href, label: "Overall", value: "overall" },
        {
          href: appRoutes.mainlinePlayTeamAnalysis(playId, "story"),
          label: "Story matchups",
          value: "story",
        },
      ]}
    />
  );
};

export const TeamAnalysisPageHead = ({
  description,
  playId,
  reading = "overall",
  showReadingSwitch = false,
}: {
  description: string;
  playId: string;
  reading?: TeamAnalysisReading;
  showReadingSwitch?: boolean;
}) => {
  return (
    <PageHeader
      headingLevel="h2"
      title="Team analysis"
      description={description}
      className="pt-0 sm:pt-0"
      action={
        showReadingSwitch ? (
          <TeamAnalysisReadingSwitch playId={playId} reading={reading} />
        ) : undefined
      }
    />
  );
};
