# classes4.dex

.class public abstract Lcom/android/internal/org/bouncycastle/asn1/ASN1External;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;


# instance fields
.field protected dataValueDescriptor:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

.field protected directReference:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field protected encoding:I

.field protected externalContent:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

.field protected indirectReference:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .registers 6

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->getObjFromVector(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    instance-of v2, v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v2, :cond_17

    move-object v2, v1

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->directReference:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->getObjFromVector(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    :cond_17
    instance-of v2, v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v2, :cond_26

    move-object v2, v1

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->indirectReference:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->getObjFromVector(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    :cond_26
    instance-of v2, v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    if-nez v2, :cond_32

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->dataValueDescriptor:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->getObjFromVector(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    :cond_32
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    if-ne v2, v3, :cond_57

    instance-of v2, v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v2, :cond_4f

    move-object v2, v1

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->setEncoding(I)V

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->externalContent:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    return-void

    :cond_4f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No tagged object found in vector. Structure doesn\'t seem to be of type External"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_57
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "input vector too large"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;ILcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V
    .registers 7

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->setDirectReference(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-direct {p0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->setIndirectReference(Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;)V

    invoke-direct {p0, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->setDataValueDescriptor(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V

    invoke-direct {p0, p4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->setEncoding(I)V

    invoke-virtual {p5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->setExternalContent(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;)V
    .registers 11

    invoke-virtual {p4}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;->getTagNo()I

    move-result v4

    invoke-virtual {p4}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;ILcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V

    return-void
.end method

.method private getObjFromVector(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    if-le v0, p2, :cond_f

    invoke-virtual {p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "too few objects in input vector"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setDataValueDescriptor(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->dataValueDescriptor:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    return-void
.end method

.method private setDirectReference(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->directReference:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method private setEncoding(I)V
    .registers 5

    if-ltz p1, :cond_8

    const/4 v0, 0x2

    if-gt p1, v0, :cond_8

    iput p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->encoding:I

    return-void

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid encoding value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setExternalContent(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->externalContent:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    return-void
.end method

.method private setIndirectReference(Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->indirectReference:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-void
.end method


# virtual methods
.method asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 6

    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    if-ne p0, p1, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->directReference:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v2, :cond_1c

    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->directReference:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v3, :cond_1b

    invoke-virtual {v3, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-nez v2, :cond_1c

    :cond_1b
    return v1

    :cond_1c
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->indirectReference:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v2, :cond_2b

    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->indirectReference:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v3, :cond_2a

    invoke-virtual {v3, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-nez v2, :cond_2b

    :cond_2a
    return v1

    :cond_2b
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->dataValueDescriptor:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    if-eqz v2, :cond_3a

    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->dataValueDescriptor:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    if-eqz v3, :cond_39

    invoke-virtual {v3, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-nez v2, :cond_3a

    :cond_39
    return v1

    :cond_3a
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->externalContent:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->externalContent:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    return v1
.end method

.method encodedLength()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->getEncoded()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getDataValueDescriptor()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->dataValueDescriptor:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    return-object v0
.end method

.method public getDirectReference()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->directReference:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getEncoding()I
    .registers 2

    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->encoding:I

    return v0
.end method

.method public getExternalContent()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->externalContent:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    return-object v0
.end method

.method public getIndirectReference()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->indirectReference:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->directReference:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->hashCode()I

    move-result v0

    :cond_9
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->indirectReference:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_12
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->dataValueDescriptor:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_1b
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->externalContent:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method isConstructed()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 8

    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/DERExternal;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->directReference:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->indirectReference:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->dataValueDescriptor:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    iget v4, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->encoding:I

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->externalContent:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/asn1/DERExternal;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;ILcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V

    return-object v6
.end method

.method toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 8

    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/DLExternal;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->directReference:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->indirectReference:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->dataValueDescriptor:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    iget v4, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->encoding:I

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->externalContent:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/asn1/DLExternal;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;ILcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V

    return-object v6
.end method
