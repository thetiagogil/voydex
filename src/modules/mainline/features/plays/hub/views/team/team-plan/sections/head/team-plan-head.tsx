import type { ReactNode } from "react";

import { ExplanatoryTip } from "@/shared/components/explanatory-tip";

type TeamPlanHeadProps = {
  children: ReactNode;
  title: string;
};

/* The page head: the Plan's name and one line of what this Play has of it. */
export const TeamPlanHead = ({ children, title }: TeamPlanHeadProps) => {
  return (
    <div className="min-w-0">
      <h2 className="text-28 leading-[1.05] tracking-[-0.02em] sm:text-[34px]">
        {title}
      </h2>
      <p className="text-ink-2 text-15 mt-1.5 font-semibold">{children}</p>
    </div>
  );
};

/* Why the Plan can't be changed here, behind v3's page-head info dot. */
export const TeamPlanSharedTip = ({
  linkedPlayCount,
}: {
  linkedPlayCount: number;
}) => {
  return (
    <ExplanatoryTip
      triggerLabel="Why is the Plan read only here?"
      content={
        <p>
          <b>Plans are shared.</b>{" "}
          {linkedPlayCount > 1
            ? `${linkedPlayCount} Plays follow this Plan, so it is read only here.`
            : "Several Plays can follow one Plan, so it is read only here."}{" "}
          This page shows how this Play compares.
        </p>
      }
    />
  );
};
