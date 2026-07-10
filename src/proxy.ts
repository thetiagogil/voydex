import type { NextRequest } from "next/server";
import { updateAppSession } from "@/features/app-shell/server/proxy-session";

export const proxy = async (request: NextRequest) => {
  return updateAppSession(request);
};

export const config = {
  matcher: [
    "/((?!_next/static|_next/image|favicon.ico|.*\\.(?:svg|png|jpg|jpeg|gif|webp)$).*)",
  ],
};
