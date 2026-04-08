import { getPlayCollectibles } from "@/services/gameplay/play-collectibles";
import { NextResponse } from "next/server";

export async function GET(
  _req: Request,
  { params }: { params: Promise<{ id: string }> },
) {
  const { id: playId } = await params;

  const { data, error } = await getPlayCollectibles(playId);
  if (error) {
    return NextResponse.json(
      { error: error.message ?? String(error) },
      { status: 500 },
    );
  }
  return NextResponse.json(data);
}
