import { AppBackground } from "@/components/app/app-background";
import { Logo } from "@/components/app/logo";

export default function Loading() {
  return (
    <main className="relative isolate flex min-h-screen items-center justify-center px-6">
      <AppBackground variant="app" />
      <div className="relative z-10 flex flex-col items-center gap-4 text-center">
        <Logo showText={false} markClassName="animate-pulse" />
        <p className="text-muted-foreground text-sm font-medium">
          Loading Voydex
        </p>
      </div>
    </main>
  );
}
