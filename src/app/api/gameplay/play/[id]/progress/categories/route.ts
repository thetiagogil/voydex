import { getPlayProgressCategories } from "@/services/gameplay/play-progress";
import { NextResponse } from "next/server";

export async function GET(
  _req: Request,
  { params }: { params: Promise<{ id: string }> },
) {
  const { id: playId } = await params;

  const { data, error } = await getPlayProgressCategories(playId);
  if (error) {
    return NextResponse.json(
      { error: error.message ?? String(error) },
      { status: 500 },
    );
  }
  if (!data) return NextResponse.json([]);
  return NextResponse.json(data);
}
