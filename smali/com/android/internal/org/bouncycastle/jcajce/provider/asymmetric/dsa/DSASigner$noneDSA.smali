# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner$noneDSA;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "noneDSA"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/NullDigest;-><init>()V

    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/signers/DSASigner;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/crypto/signers/DSASigner;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dsa/DSASigner;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;Lcom/android/internal/org/bouncycastle/crypto/DSAExt;)V

    return-void
.end method
