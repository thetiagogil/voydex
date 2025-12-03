import { getGame } from "@/services/meta/game";
import { NextRequest, NextResponse } from "next/server";

export async function GET(
  _req: NextRequest,
  { params }: { params: Promise<{ id: string }> },
) {
  const { id: gameId } = await params;

  if (!gameId)
    return NextResponse.json({ error: "Missing game id" }, { status: 400 });

  const result = await getGame(gameId);
  const { data, error, breadcrumbs } = result as any;
  if (error) return NextResponse.json({ error }, { status: 500 });
  if (!data)
    return NextResponse.json({ error: "No game found" }, { status: 404 });
  return NextResponse.json({ data, breadcrumbs }, { status: 200 });
}
