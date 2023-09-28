# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$GCM;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GCM"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 4

    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;

    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/AESEngine;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/modes/AEADBlockCipher;)V

    :try_start_d
    const-string v0, "GCM"

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$GCM;->engineSetMode(Ljava/lang/String;)V

    const-string v0, "NoPadding"

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/AES$GCM;->engineSetPadding(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d .. :try_end_17} :catch_19
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_d .. :try_end_17} :catch_19

    nop

    return-void

    :catch_19
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not set mode or padding for GCM mode"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
