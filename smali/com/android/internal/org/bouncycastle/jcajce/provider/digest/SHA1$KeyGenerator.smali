# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/SHA1$KeyGenerator;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/SHA1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyGenerator"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 4

    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/CipherKeyGenerator;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/CipherKeyGenerator;-><init>()V

    const-string v1, "HMACSHA1"

    const/16 v2, 0xa0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;-><init>(Ljava/lang/String;ILcom/android/internal/org/bouncycastle/crypto/CipherKeyGenerator;)V

    return-void
.end method