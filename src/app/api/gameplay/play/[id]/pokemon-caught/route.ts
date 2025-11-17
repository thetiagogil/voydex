import { getPlayRegionalDex } from "@/services/gameplay/play-pokemon-caught";
import { NextResponse } from "next/server";

export async function GET(
  req: Request,
  { params }: { params: { id: string } },
) {
  const playId = params.id;
  const { data, error } = await getPlayRegionalDex(playId);
  if (error) {
    return NextResponse.json(
      { error: error.message || String(error) },
      { status: 500 },
    );
  }
  return NextResponse.json({ data });
}
