import { createPlay } from "@/features/play/server/play";
import { NextRequest, NextResponse } from "next/server";

export async function POST(request: NextRequest) {
  const body = await request.json();
  const { gameId, name } = body;

  if (!gameId) {
    return NextResponse.json({ error: "gameId is required" }, { status: 400 });
  }

  const { data, error } = await createPlay(gameId, name);

  if (error) {
    if (
      error.message.includes("duplicate key value violates unique constraint")
    ) {
      return NextResponse.json(
        { error: "A play with this name already exists" },
        { status: 409 },
      );
    } else {
      return NextResponse.json(
        { error: "message" in error ? error.message : String(error) },
        { status: 500 },
      );
    }
  }

  return NextResponse.json(data, { status: 201 });
}
