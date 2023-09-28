# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/its/asn1/EndEntityType;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;


# static fields
.field public static final app:I = 0x80

.field public static final enrol:I = 0x40


# instance fields
.field private final type:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;


# direct methods
.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    const/16 v0, 0x80

    if-eq p1, v0, :cond_15

    const/16 v0, 0x40

    if-ne p1, v0, :cond_c

    goto :goto_15

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "value out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    :goto_15
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/EndEntityType;->type:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/org/bouncycastle/asn1/DERBitString;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/its/asn1/EndEntityType;->type:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/its/asn1/EndEntityType;
    .registers 3

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/EndEntityType;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/its/asn1/EndEntityType;

    return-object v0

    :cond_8
    if-eqz p0, :cond_14

    new-instance v0, Lcom/android/internal/org/bouncycastle/its/asn1/EndEntityType;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/DERBitString;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/its/asn1/EndEntityType;-><init>(Lcom/android/internal/org/bouncycastle/asn1/DERBitString;)V

    return-object v0

    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/EndEntityType;->type:Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    return-object v0
.end method
