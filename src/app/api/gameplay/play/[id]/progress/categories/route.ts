import { getPlayProgressCategories } from "@/services/gameplay/play-progress-categories";
import { NextResponse } from "next/server";

export async function GET(
  req: Request,
  { params }: { params: Promise<{ id: string }> },
) {
  const playId = (await params).id;
  const { data, error } = await getPlayProgressCategories(playId);
  if (error) {
    return NextResponse.json(
      { error: error.message || String(error) },
      { status: 500 },
    );
  }
  if (!data) return NextResponse.json([]);
  return NextResponse.json(data);
}
