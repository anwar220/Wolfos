# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/ARC4$Base;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/ARC4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/StreamCipher;I)V

    return-void
.end method
