"use client";

import { PageHeader } from "@/shared/components/page-header";
import { SegmentedControl } from "@/shared/components/segmented-control";

/*
 * The reading switch on the right of the page head. Story matchups needs
 * encounter data the app doesn't have yet, so it shows but can't be picked.
 */
const TeamAnalysisReadingSwitch = () => {
  return (
    <SegmentedControl
      ariaLabel="Reading"
      variant="segment"
      value="overall"
      options={[
        { label: "Overall", value: "overall" },
        {
          disabled: true,
          disabledReason: "Not available yet",
          label: "Story matchups",
          value: "story-matchups",
        },
      ]}
    />
  );
};

export const TeamAnalysisPageHead = ({
  description,
  showReadingSwitch = false,
}: {
  description: string;
  showReadingSwitch?: boolean;
}) => {
  return (
    <PageHeader
      headingLevel="h2"
      title="Team analysis"
      description={description}
      className="pt-0 sm:pt-0"
      action={showReadingSwitch ? <TeamAnalysisReadingSwitch /> : undefined}
    />
  );
};
