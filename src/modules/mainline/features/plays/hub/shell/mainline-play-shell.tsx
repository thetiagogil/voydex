import { MainlinePlayNavigation } from "@/modules/mainline/features/plays/hub/shell/mainline-play-navigation";
import { MainlinePlayTopSection } from "@/modules/mainline/features/plays/hub/shell/top-section/mainline-play-top-section";
import type { MainlinePlayShellData } from "@/modules/mainline/features/plays/hub/types";

type MainlinePlayShellProps = {
  children: React.ReactNode;
  data: MainlinePlayShellData;
  playId: string;
};

export const MainlinePlayShell = ({
  children,
  data,
  playId,
}: MainlinePlayShellProps) => {
  return (
    <div className="flex w-full min-w-0 flex-col gap-5 sm:gap-6">
      <MainlinePlayTopSection data={data} />

      <div className="flex min-w-0 flex-col gap-3">
        <MainlinePlayNavigation playId={playId} />
        {children}
      </div>
    </div>
  );
};
