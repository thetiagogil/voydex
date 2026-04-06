import { getPokemonForms } from "@/services/reference/pokemon";
import { NextRequest, NextResponse } from "next/server";

export async function GET(
  request: NextRequest,
  { params }: { params: Promise<{ speciesId: string }> },
) {
  const { speciesId } = await params;

  const { data, error } = await getPokemonForms(parseInt(speciesId));

  if (error) {
    return NextResponse.json(
      { error: error instanceof Error ? error.message : String(error) },
      { status: 500 },
    );
  }

  return NextResponse.json(data);
}
