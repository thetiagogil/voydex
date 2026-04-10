import { getDashboardActivity } from "@/features/dashboard/server/dashboard";
import { NextRequest, NextResponse } from "next/server";

export async function GET(request: NextRequest) {
  try {
    const limit = parseInt(
      request.nextUrl.searchParams.get("limit") ?? "10",
      10,
    );
    const { data, error } = await getDashboardActivity(limit);
    if (error)
      return NextResponse.json({ error: error.message }, { status: 500 });
    return NextResponse.json({ data });
  } catch (error: unknown) {
    return NextResponse.json(
      { error: error instanceof Error ? error.message : String(error) },
      { status: 500 },
    );
  }
}
