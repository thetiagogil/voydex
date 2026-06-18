import { PublicAppShell } from "@/shared/components/app/public-app-shell";

type LayoutProps = {
  children: React.ReactNode;
};

export default function Layout({ children }: LayoutProps) {
  return <PublicAppShell>{children}</PublicAppShell>;
}
