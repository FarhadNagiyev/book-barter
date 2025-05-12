/*
  Warnings:

  - Added the required column `currentHolderUserId` to the `Book` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ownerUserId` to the `Book` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Book" ADD COLUMN     "currentHolderUserId" TEXT NOT NULL,
ADD COLUMN     "ownerUserId" TEXT NOT NULL;

-- AddForeignKey
ALTER TABLE "Book" ADD CONSTRAINT "Book_ownerUserId_fkey" FOREIGN KEY ("ownerUserId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Book" ADD CONSTRAINT "Book_currentHolderUserId_fkey" FOREIGN KEY ("currentHolderUserId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
