import { unmarkPokedexEntriesBulk } from "@/features/play/server/play-pokedex";
import { NextRequest, NextResponse } from "next/server";

export async function DELETE(
  request: NextRequest,
  { params }: { params: Promise<{ id: string }> },
) {
  try {
    const { id: playId } = await params;
    const { pokedexEntryIds } = await request.json();

    if (!playId || !Array.isArray(pokedexEntryIds))
      return NextResponse.json(
        { error: "Missing required fields" },
        { status: 400 },
      );

    const result = await unmarkPokedexEntriesBulk(playId, pokedexEntryIds);

    if ("error" in result && result.error)
      return NextResponse.json(
        {
          error:
            "message" in result.error
              ? result.error.message
              : String(result.error),
        },
        { status: 500 },
      );

    return NextResponse.json({ success: true });
  } catch (error: unknown) {
    return NextResponse.json(
      { error: error instanceof Error ? error.message : String(error) },
      { status: 500 },
    );
  }
}
