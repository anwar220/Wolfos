# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$OFB;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OFB"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 5

    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;

    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;

    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v2}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;-><init>()V

    const/16 v3, 0x80

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/modes/OFBBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;I)V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {p0, v0, v3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;I)V

    return-void
.end method
