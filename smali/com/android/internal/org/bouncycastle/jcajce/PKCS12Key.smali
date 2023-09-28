# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/jcajce/PKCS12Key;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/org/bouncycastle/jcajce/PBKDFKey;


# instance fields
.field private final password:[C

.field private final useWrongZeroLengthConversion:Z


# direct methods
.method public constructor <init>([C)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12Key;-><init>([CZ)V

    return-void
.end method

.method public constructor <init>([CZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_8

    new-array p1, v0, [C

    :cond_8
    array-length v1, p1

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12Key;->password:[C

    iput-boolean p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12Key;->useWrongZeroLengthConversion:Z

    array-length v2, p1

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .registers 2

    const-string v0, "PKCS12"

    return-object v0
.end method

.method public getEncoded()[B
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12Key;->useWrongZeroLengthConversion:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12Key;->password:[C

    array-length v0, v0

    if-nez v0, :cond_d

    const/4 v0, 0x2

    new-array v0, v0, [B

    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12Key;->password:[C

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 2

    const-string v0, "PKCS12"

    return-object v0
.end method

.method public getPassword()[C
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKCS12Key;->password:[C

    return-object v0
.end method
