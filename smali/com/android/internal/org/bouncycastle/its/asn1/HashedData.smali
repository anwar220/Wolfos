# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/its/asn1/HashedData;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private hashData:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method private constructor <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/its/asn1/HashedData;->hashData:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/HashedData;->hashData:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    return-void
.end method


# virtual methods
.method public getHashData()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/HashedData;->hashData:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public setHashData(Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/its/asn1/HashedData;->hashData:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    return-void
.end method

.method public toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/its/asn1/HashedData;->hashData:Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method
