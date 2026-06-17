import { NextResponse } from "next/server";

import { checkSupabaseHealth } from "@/lib/supabase/health";

export const dynamic = "force-dynamic";

export async function GET() {
  const health = await checkSupabaseHealth();
  const status = health.status === "healthy" ? 200 : 503;

  return NextResponse.json(health, { status });
}
