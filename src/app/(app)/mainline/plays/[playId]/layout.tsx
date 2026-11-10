import { PlayShellRoute } from "@/modules/mainline/features/plays/hub/components/play-hub-routes";

type MainlinePlayLayoutProps = Readonly<{
  children: React.ReactNode;
  params: Promise<{
    playId: string;
  }>;
}>;

/* The Play hub's shell, read on the device. */
export default async function MainlinePlayLayout({
  children,
  params,
}: MainlinePlayLayoutProps) {
  const { playId } = await params;

  return <PlayShellRoute playId={playId}>{children}</PlayShellRoute>;
}
