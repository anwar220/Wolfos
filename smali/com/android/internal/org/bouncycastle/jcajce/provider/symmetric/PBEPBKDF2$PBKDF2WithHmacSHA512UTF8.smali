# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$PBKDF2WithHmacSHA512UTF8;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2WithHmacSHA512;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBKDF2WithHmacSHA512UTF8"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    const-string v0, "PBKDF2WithHmacSHA512"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2WithHmacSHA512;-><init>(Ljava/lang/String;I)V

    return-void
.end method
