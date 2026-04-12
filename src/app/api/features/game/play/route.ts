import { createPlay } from "@/features/game/server/play";
import { NextRequest, NextResponse } from "next/server";

export async function POST(request: NextRequest) {
  const body = await request.json();
  const { gameId, name } = body;

  if (!gameId) {
    return NextResponse.json({ error: "gameId is required" }, { status: 400 });
  }

  const { data, error } = await createPlay(gameId, name);

  if (error) {
    return NextResponse.json({ error: error.message }, { status: 500 });
  }

  return NextResponse.json(data, { status: 201 });
}
