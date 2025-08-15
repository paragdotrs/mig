/*
  Warnings:

  - You are about to drop the column `hostelType` on the `Hostel` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "Hostel" DROP COLUMN "hostelType";

-- DropEnum
DROP TYPE "HostelType";
