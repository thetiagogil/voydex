import { checkPokemonCaughtBatch } from "@/services/gameplay/play-pokemon-caught-check-batch";
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

    const result = await checkPokemonCaughtBatch(playId, pokemon);

    if (result.error) {
      return NextResponse.json(
        { error: result.error.message },
        { status: 500 },
      );
    }

    return NextResponse.json({ success: true, data: result.data });
  } catch (error: any) {
    return NextResponse.json({ error: error.message }, { status: 500 });
  }
}
