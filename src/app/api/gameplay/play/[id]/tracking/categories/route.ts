import { getPlayTrackingCategories } from "@/services/gameplay/play-tracking";
import { NextResponse } from "next/server";

export async function GET(
  _req: Request,
  { params }: { params: Promise<{ id: string }> },
) {
  const { id: playId } = await params;

  const { data, error } = await getPlayTrackingCategories(playId);
  if (error) {
    return NextResponse.json(
      { error: error.message ?? String(error) },
      { status: 500 },
    );
  }
  if (!data) return NextResponse.json([]);
  return NextResponse.json(data);
}
