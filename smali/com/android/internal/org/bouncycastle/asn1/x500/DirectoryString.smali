# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1Choice;
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1String;


# instance fields
.field private string:Lcom/android/internal/org/bouncycastle/asn1/ASN1String;


# direct methods
.method private constructor <init>(Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;->string:Lcom/android/internal/org/bouncycastle/asn1/ASN1String;

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/org/bouncycastle/asn1/DERPrintableString;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;->string:Lcom/android/internal/org/bouncycastle/asn1/ASN1String;

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/org/bouncycastle/asn1/DERT61String;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;->string:Lcom/android/internal/org/bouncycastle/asn1/ASN1String;

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/org/bouncycastle/asn1/DERUTF8String;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;->string:Lcom/android/internal/org/bouncycastle/asn1/ASN1String;

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/org/bouncycastle/asn1/DERUniversalString;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;->string:Lcom/android/internal/org/bouncycastle/asn1/ASN1String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERUTF8String;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;->string:Lcom/android/internal/org/bouncycastle/asn1/ASN1String;

    return-void
.end method

.method public static getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;
    .registers 4

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;

    move-result-object v0

    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "choice item must be explicitly tagged"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;
    .registers 4

    if-eqz p0, :cond_69

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;

    if-eqz v0, :cond_7

    goto :goto_69

    :cond_7
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERT61String;

    if-eqz v0, :cond_14

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;

    move-object v1, p0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/DERT61String;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;-><init>(Lcom/android/internal/org/bouncycastle/asn1/DERT61String;)V

    return-object v0

    :cond_14
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERPrintableString;

    if-eqz v0, :cond_21

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;

    move-object v1, p0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/DERPrintableString;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;-><init>(Lcom/android/internal/org/bouncycastle/asn1/DERPrintableString;)V

    return-object v0

    :cond_21
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERUniversalString;

    if-eqz v0, :cond_2e

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;

    move-object v1, p0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/DERUniversalString;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;-><init>(Lcom/android/internal/org/bouncycastle/asn1/DERUniversalString;)V

    return-object v0

    :cond_2e
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERUTF8String;

    if-eqz v0, :cond_3b

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;

    move-object v1, p0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/DERUTF8String;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;-><init>(Lcom/android/internal/org/bouncycastle/asn1/DERUTF8String;)V

    return-object v0

    :cond_3b
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;

    if-eqz v0, :cond_48

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;

    move-object v1, p0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;-><init>(Lcom/android/internal/org/bouncycastle/asn1/DERBMPString;)V

    return-object v0

    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_69
    :goto_69
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;

    return-object v0
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;->string:Lcom/android/internal/org/bouncycastle/asn1/ASN1String;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;->string:Lcom/android/internal/org/bouncycastle/asn1/ASN1String;

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/DirectoryString;->string:Lcom/android/internal/org/bouncycastle/asn1/ASN1String;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
