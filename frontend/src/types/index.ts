export interface Character {
  id: number;
  Name: string;
  belong: string | null;
  photoOfCharacter: string | null;
  url: string | null;
  attribute: string | null;
  pc: boolean;
}

export interface Planet {
  planet_ID: number;
  planet_Name: string;
  photo: string | null;
  goto: string | null;
}
