import { PublicAppShell } from "@/features/app-shell/components/public-app-shell";

type LayoutProps = {
  children: React.ReactNode;
};

export default function Layout({ children }: LayoutProps) {
  /* Everyone uses the Codex with their data on this device: the app's frame. */
  return <PublicAppShell frame="app">{children}</PublicAppShell>;
}
