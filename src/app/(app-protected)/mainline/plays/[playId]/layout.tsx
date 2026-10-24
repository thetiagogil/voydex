import { notFound } from "next/navigation";

import {
  getMainlinePlayShellData,
  getPlayHeaderEditing,
} from "@/modules/mainline/features/plays/hub/server/play-hub-query";
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
  const [data, editing] = await Promise.all([
    getMainlinePlayShellData(playId),
    /* Only the tap-to-edit badges need it: without it the head reads as plain text. */
    getPlayHeaderEditing(playId).catch(() => null),
  ]);

  if (!data) {
    notFound();
  }

  return (
    <MainlinePlayShell
      data={data}
      editing={editing ?? undefined}
      playId={playId}
    >
      {children}
    </MainlinePlayShell>
  );
}
