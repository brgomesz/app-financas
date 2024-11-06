-- CreateEnum
CREATE TYPE "TipoTransacao" AS ENUM ('DEPOSITO', 'GASTO', 'INVESTIMENTO');

-- CreateEnum
CREATE TYPE "CategoriaTransacao" AS ENUM ('CASA', 'TRANSPORTE', 'COMIDA', 'ENTRETENIMENTO', 'UTILIDADES', 'SALARIO', 'SAUDE', 'EDUCACAO', 'OUTRO');

-- CreateEnum
CREATE TYPE "MetodoPagamento" AS ENUM ('CARTAO_CREDITO', 'CARTAO_DEBITO', 'TRANSFERENCIA_BANCARIA', 'DINHEIRO', 'PIX', 'OUTRO');

-- CreateTable
CREATE TABLE "Transacao" (
    "id" TEXT NOT NULL,
    "nome" TEXT NOT NULL,
    "tipo" "TipoTransacao" NOT NULL,
    "amount" DECIMAL(10,2) NOT NULL,
    "categoria" "CategoriaTransacao" NOT NULL,
    "metodo" "MetodoPagamento" NOT NULL,
    "criadoEm" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "date" TIMESTAMP(3) NOT NULL,
    "modificadoEm" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Transacao_pkey" PRIMARY KEY ("id")
);
