import { notFound } from "next/navigation";

import { getMainlinePlayShellData } from "@/modules/mainline/features/plays/hub/server/play-hub-query";
import { MainlinePlayShell } from "@/modules/mainline/features/plays/hub/shell/mainline-play-shell";

type MainlinePlayLayoutProps = Readonly<{
  children: React.ReactNode;
  params: Promise<{
    playId: string;
  }>;
}>;

export default async function MainlinePlayLayout({
  children,
  params,
}: MainlinePlayLayoutProps) {
  const { playId } = await params;
  const data = await getMainlinePlayShellData(playId);

  if (!data) {
    notFound();
  }

  return (
    <MainlinePlayShell data={data} playId={playId}>
      {children}
    </MainlinePlayShell>
  );
}
