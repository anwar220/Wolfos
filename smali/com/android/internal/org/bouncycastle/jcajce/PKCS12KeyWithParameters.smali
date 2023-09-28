# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/jcajce/PKCS12KeyWithParameters;
.super Lcom/android/internal/org/bouncycastle/jcajce/PKCS12Key;

# interfaces
.implements Ljavax/crypto/interfaces/PBEKey;


# instance fields
.field private final iterationCount:I

.field private final salt:[B


# direct methods
.method public constructor <init>([CZ[BI)V
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12Key;-><init>([CZ)V

    invoke-static {p3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12KeyWithParameters;->salt:[B

    iput p4, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12KeyWithParameters;->iterationCount:I

    return-void
.end method

.method public constructor <init>([C[BI)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12Key;-><init>([C)V

    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12KeyWithParameters;->salt:[B

    iput p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12KeyWithParameters;->iterationCount:I

    return-void
.end method


# virtual methods
.method public getIterationCount()I
    .registers 2

    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12KeyWithParameters;->iterationCount:I

    return v0
.end method

.method public getSalt()[B
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12KeyWithParameters;->salt:[B

    return-object v0
.end method
