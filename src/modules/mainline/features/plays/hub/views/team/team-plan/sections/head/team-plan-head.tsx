import { ExplanatoryTip } from "@/shared/components/explanatory-tip";
import { TipNamed } from "@/shared/components/tip-parts";

/* Why the Plan is edited in the Team Planner, beside v3's Edit button. */
export const TeamPlanSharedTip = ({
  linkedPlayCount,
}: {
  linkedPlayCount: number;
}) => {
  return (
    <ExplanatoryTip
      triggerLabel="Why edit in the Team Planner?"
      triggerVariant="raised"
      content={
        <TipNamed name="Plans are shared">
          A Plan is edited only in the Team Planner, so changes there reach
          every Play that follows it
          {linkedPlayCount > 1 ? ` (${linkedPlayCount} do now)` : ""}. Here you
          only see how this Play compares.
        </TipNamed>
      }
    />
  );
};
