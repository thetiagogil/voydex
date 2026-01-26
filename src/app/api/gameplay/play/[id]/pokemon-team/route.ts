import { getPlayTeam } from "@/services/gameplay/play-team";
import { NextRequest, NextResponse } from "next/server";

export async function GET(
  _req: NextRequest,
  { params }: { params: Promise<{ id: string }> },
) {
  const { id: playId } = await params;

  if (!playId)
    return NextResponse.json({ error: "Missing play id" }, { status: 400 });

  const result = await getPlayTeam(playId);
  const { data, error } = result as any;
  if (error) return NextResponse.json({ error }, { status: 500 });
  return NextResponse.json(data, { status: 200 });
}
