import { AppNavbar } from "@/components/app/app-navbar";
import { MainNav } from "@/components/app/main-nav";
import { MobileNav } from "@/components/app/mobile-nav";
import { UserMenu } from "@/components/app/user-menu";

type AppShellProps = {
  children: React.ReactNode;
  userEmail: string;
};

export function AppShell({ children, userEmail }: AppShellProps) {
  return (
    <div className="relative isolate flex min-h-screen flex-col">
      <AppNavbar
        sticky
        surface
        center={
          <div className="hidden lg:flex">
            <MainNav />
          </div>
        }
        end={
          <>
            <div className="lg:hidden">
              <MobileNav />
            </div>
            <UserMenu email={userEmail} />
          </>
        }
      />
      <main className="relative z-10 mx-auto flex w-full max-w-7xl flex-1 flex-col gap-6 px-4 py-8 sm:px-6 lg:px-8">
        {children}
      </main>
    </div>
  );
}
