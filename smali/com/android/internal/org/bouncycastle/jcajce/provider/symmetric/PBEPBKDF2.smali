# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$Mappings;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$PBEWithHmacSHA512AndAES_256;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$PBEWithHmacSHA384AndAES_256;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$PBEWithHmacSHA256AndAES_256;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$PBEWithHmacSHA224AndAES_256;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$PBEWithHmacSHA1AndAES_256;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$PBEWithHmacSHA512AndAES_128;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$PBEWithHmacSHA384AndAES_128;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$PBEWithHmacSHA256AndAES_128;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$PBEWithHmacSHA224AndAES_128;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$PBEWithHmacSHA1AndAES_128;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$PBKDF2WithHmacSHA512UTF8;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2WithHmacSHA512;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$PBKDF2WithHmacSHA384UTF8;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2WithHmacSHA384;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$PBKDF2WithHmacSHA256UTF8;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2WithHmacSHA256;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$PBKDF2WithHmacSHA224UTF8;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2WithHmacSHA224;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$PBKDF2WithHmacSHA18BIT;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$PBKDF2WithHmacSHA1UTF8;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2WithHmacSHA1;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2$BasePBKDF2;
    }
.end annotation


# static fields
.field private static final prfCodes:Ljava/util/Map;


# direct methods
.method static bridge synthetic -$$Nest$sfgetprfCodes()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2;->prfCodes:Ljava/util/Map;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/symmetric/PBEPBKDF2;->prfCodes:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
