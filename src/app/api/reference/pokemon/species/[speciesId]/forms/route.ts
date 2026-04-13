import { getPokemonForms } from "@/shared/server/reference/pokemon-forms";
import { NextRequest, NextResponse } from "next/server";

export async function GET(
  _req: NextRequest,
  { params }: { params: Promise<{ speciesId: string }> },
) {
  try {
    const { speciesId } = await params;
    const { data, error } = await getPokemonForms(parseInt(speciesId));

    if (error)
      return NextResponse.json(
        { error: error instanceof Error ? error.message : String(error) },
        { status: 500 },
      );

    return NextResponse.json(data);
  } catch (error: unknown) {
    return NextResponse.json(
      { error: error instanceof Error ? error.message : String(error) },
      { status: 500 },
    );
  }
}
