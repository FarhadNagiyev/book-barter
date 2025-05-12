import { PrismaClient } from '@prisma/client';

async function main() {
    const prisma = new PrismaClient();
    await prisma.user.deleteMany();
    await prisma.book.deleteMany();
    await prisma.user.createMany({
        data: [
            {
                nickName: "nagiyevferhad"
            }, {
                nickName: "farhadnagiyev"
            }
        ]
    })
    console.log("db seeded success")
}

main();