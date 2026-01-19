import { getPlayRegionalDex } from "@/services/gameplay/play-dex";
import { NextResponse } from "next/server";

export async function GET(
  _req: Request,
  { params }: { params: Promise<{ id: string }> },
) {
  const { id: playId } = await params;

  const { data, error } = await getPlayRegionalDex(playId);
  if (error) {
    return NextResponse.json(
      { error: error.message ?? String(error) },
      { status: 500 },
    );
  }
  return NextResponse.json(data);
}
