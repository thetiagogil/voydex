import { getDashboardOverview } from "@/features/dashboard/server/dashboard";
import { NextResponse } from "next/server";

export async function GET() {
  try {
    const { data, error } = await getDashboardOverview();

    if (error) {
      return NextResponse.json({ error: error.message }, { status: 500 });
    }

    return NextResponse.json({ data }, { status: 200 });
  } catch (error: unknown) {
    return NextResponse.json(
      { error: error instanceof Error ? error.message : String(error) },
      { status: 500 },
    );
  }
}
