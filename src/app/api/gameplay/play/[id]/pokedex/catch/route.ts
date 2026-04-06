import { markPokedexEntryCaught } from "@/services/gameplay/play-pokedex";
import { NextRequest, NextResponse } from "next/server";

export async function POST(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> },
) {
  try {
    const { id: playId } = await params;
    const { pokedexEntryId } = await request.json();

    if (!pokedexEntryId) {
      return NextResponse.json(
        { error: "pokedexEntryId is required" },
        { status: 400 },
      );
    }

    const result = await markPokedexEntryCaught(playId, pokedexEntryId);
    return NextResponse.json(result);
  } catch (error: unknown) {
    return NextResponse.json(
      {
        error:
          error instanceof Error
            ? error.message
            : "Failed to mark dex entry as caught",
      },
      { status: 500 },
    );
  }
}
