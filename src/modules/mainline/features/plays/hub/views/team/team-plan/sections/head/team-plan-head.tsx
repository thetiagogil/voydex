import { ExplanatoryTip } from "@/shared/components/explanatory-tip";

/* Why the Plan can't be changed here, behind v3's raised page-head info dot. */
export const TeamPlanSharedTip = ({
  linkedPlayCount,
}: {
  linkedPlayCount: number;
}) => {
  return (
    <ExplanatoryTip
      triggerLabel="Why is the Plan read only here?"
      triggerVariant="raised"
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
