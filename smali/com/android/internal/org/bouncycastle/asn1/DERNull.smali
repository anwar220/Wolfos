# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/asn1/DERNull;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Null;


# static fields
.field public static final INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

.field private static final zeroBytes:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/DERNull;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->zeroBytes:[B

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Null;-><init>()V

    return-void
.end method


# virtual methods
.method encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->zeroBytes:[B

    const/4 v1, 0x5

    invoke-virtual {p1, p2, v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(ZI[B)V

    return-void
.end method

.method encodedLength()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method isConstructed()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
