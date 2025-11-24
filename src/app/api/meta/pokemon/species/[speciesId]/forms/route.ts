import { getPokemonForms } from "@/services/pokemon";
import { NextRequest, NextResponse } from "next/server";

export async function GET(
  request: NextRequest,
  { params }: { params: Promise<{ speciesId: string }> },
) {
  const { speciesId } = await params;

  const { data, error } = await getPokemonForms(parseInt(speciesId));

  if (error) {
    return NextResponse.json({ error: error.message }, { status: 500 });
  }

  return NextResponse.json(data);
}
