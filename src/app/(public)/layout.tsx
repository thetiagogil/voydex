import { AppBackground } from "@/components/app/app-background";

export default function PublicLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <div className="relative isolate min-h-screen overflow-hidden">
      <AppBackground variant="home" />
      <div className="relative z-10 min-h-screen">{children}</div>
    </div>
  );
}
