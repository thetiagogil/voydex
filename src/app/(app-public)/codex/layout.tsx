import { PublicAppShell } from "@/shared/components/app/public-app-shell";
type LayoutProps = {
  children: React.ReactNode;
};
const Layout = ({ children }: LayoutProps) => {
  return <PublicAppShell activeModuleKey="codex">{children}</PublicAppShell>;
};
export default Layout;
