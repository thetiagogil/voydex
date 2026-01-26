import { checkPokemonCaughtBulk } from "@/services/gameplay/play-dex";
import { NextRequest, NextResponse } from "next/server";

export async function POST(
  request: NextRequest,
  context: { params: Promise<{ id: string }> },
) {
  try {
    const { id: playId } = await context.params;
    const body = await request.json();
    const { pokemon } = body;

    if (!pokemon || !Array.isArray(pokemon)) {
      return NextResponse.json(
        { error: "pokemon array is required" },
        { status: 400 },
      );
    }

    await checkPokemonCaughtBulk(playId, pokemon);

    return NextResponse.json({ success: true });
  } catch (error: unknown) {
    return NextResponse.json(
      { error: error instanceof Error ? error.message : String(error) },
      { status: 500 },
    );
  }
}
