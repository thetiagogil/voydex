import { MainlinePlaySectionCard } from "@/modules/mainline/features/plays/hub/shell/mainline-play-section-card";

/*
 * v3 "Outside the Plan": what this Play recorded that isn't one of the
 * Plan's targets. The Plan data names them only, so they show as quiet chips.
 */
export const TeamPlanOffPlanSection = ({ names }: { names: string[] }) => {
  return (
    <MainlinePlaySectionCard
      title="Outside the Plan"
      description="Recorded in this Play, but not one of the Plan's targets"
    >
      <ul className="flex flex-wrap gap-2">
        {names.map((name, index) => (
          <li
            key={`${name}-${index}`}
            className="bg-surface-2 text-14 rounded-full px-3.5 py-1.5 font-bold"
          >
            {name}
          </li>
        ))}
      </ul>
    </MainlinePlaySectionCard>
  );
};
