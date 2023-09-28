# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;


# instance fields
.field private _constructed:Z

.field private _parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

.field private _tagNumber:I


# direct methods
.method constructor <init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->_constructed:Z

    iput p2, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->_tagNumber:I

    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->_parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    return-void
.end method


# virtual methods
.method public getLoadedObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->_parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->_constructed:Z

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->_tagNumber:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->readTaggedObject(ZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public getObjectParser(IZ)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_15

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->_constructed:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->_parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0

    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Explicit tags must be constructed (see X.690 8.14.2)"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->_parser:Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->_constructed:Z

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->readImplicit(ZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public getTagNo()I
    .registers 2

    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->_tagNumber:I

    return v0
.end method

.method public isConstructed()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->_constructed:Z

    return v0
.end method

.method public toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;->getLoadedObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ParsingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
