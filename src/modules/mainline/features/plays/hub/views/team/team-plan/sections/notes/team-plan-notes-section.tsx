import { MainlinePlaySectionCard } from "@/modules/mainline/features/plays/hub/shell/mainline-play-section-card";

type TeamPlanNotesSectionProps = {
  notes: string;
};

export const TeamPlanNotesSection = ({ notes }: TeamPlanNotesSectionProps) => {
  return (
    <MainlinePlaySectionCard
      title="Planned notes"
      className="lg:h-full"
      showSeparator
    >
      <p className="text-muted-foreground text-sm leading-6">{notes}</p>
    </MainlinePlaySectionCard>
  );
};
