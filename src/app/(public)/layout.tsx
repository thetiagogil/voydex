import { getActiveModuleKeyFromCookies } from "@/lib/modules/active-module";
import { ActiveModuleThemeScope } from "@/shared/components/app/active-module-theme-scope";

export default async function PublicLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  const activeModuleKey = await getActiveModuleKeyFromCookies();

  return (
    <div
      data-active-module={activeModuleKey}
      className="relative min-h-screen overflow-hidden"
    >
      <ActiveModuleThemeScope activeModuleKey={activeModuleKey} />
      {children}
    </div>
  );
}
