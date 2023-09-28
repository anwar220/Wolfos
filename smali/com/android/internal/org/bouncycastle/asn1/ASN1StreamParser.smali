# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;
.super Ljava/lang/Object;


# instance fields
.field private final _in:Ljava/io/InputStream;

.field private final _limit:I

.field private final tmpBuffers:[[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/StreamUtil;->findLimit(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    iput p2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    const/16 v0, 0xb

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->tmpBuffers:[[B

    return-void
.end method

.method public constructor <init>([B)V
    .registers 4

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method private set00Check(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    if-eqz v1, :cond_b

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;->setEofOn00(Z)V

    :cond_b
    return-void
.end method


# virtual methods
.method readImplicit(ZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    if-eqz v1, :cond_15

    if-eqz p1, :cond_d

    invoke-virtual {p0, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->readIndef(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0

    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "indefinite-length primitive encoding encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    if-eqz p1, :cond_2d

    sparse-switch p2, :sswitch_data_54

    goto :goto_4b

    :sswitch_1b
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DLSetParser;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/DLSetParser;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v0

    :sswitch_21
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DLSequenceParser;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/DLSequenceParser;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v0

    :sswitch_27
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringParser;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringParser;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v0

    :cond_2d
    sparse-switch p2, :sswitch_data_62

    goto :goto_4b

    :sswitch_31
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;

    const-string/jumbo v1, "sequences must use constructed encoding (see X.690 8.9.1/8.10.1)"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_3a
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;

    const-string/jumbo v1, "sets must use constructed encoding (see X.690 8.11.1/8.12.1)"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_43
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DEROctetStringParser;

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetStringParser;-><init>(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;)V

    return-object v1

    :goto_4b
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;

    const-string v1, "implicit tagging not implemented"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_54
    .sparse-switch
        0x4 -> :sswitch_27
        0x10 -> :sswitch_21
        0x11 -> :sswitch_1b
    .end sparse-switch

    :sswitch_data_62
    .sparse-switch
        0x4 -> :sswitch_43
        0x10 -> :sswitch_3a
        0x11 -> :sswitch_31
    .end sparse-switch
.end method

.method readIndef(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_3a

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown BER object encountered: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_21
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/BERSetParser;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/BERSetParser;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v0

    :sswitch_27
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/BERSequenceParser;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/BERSequenceParser;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v0

    :sswitch_2d
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERExternalParser;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/DERExternalParser;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v0

    :sswitch_33
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringParser;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringParser;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v0

    nop

    :sswitch_data_3a
    .sparse-switch
        0x4 -> :sswitch_33
        0x8 -> :sswitch_2d
        0x10 -> :sswitch_27
        0x11 -> :sswitch_21
    .end sparse-switch
.end method

.method public readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    const/4 v1, 0x0

    return-object v1

    :cond_b
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->set00Check(Z)V

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    invoke-static {v2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readTagNumber(Ljava/io/InputStream;I)I

    move-result v2

    and-int/lit8 v3, v0, 0x20

    const/4 v4, 0x1

    if-eqz v3, :cond_1c

    move v3, v4

    goto :goto_1d

    :cond_1c
    move v3, v1

    :goto_1d
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    iget v6, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    const/4 v7, 0x4

    if-eq v2, v7, :cond_30

    const/16 v7, 0x10

    if-eq v2, v7, :cond_30

    const/16 v7, 0x11

    if-eq v2, v7, :cond_30

    const/16 v7, 0x8

    if-ne v2, v7, :cond_31

    :cond_30
    move v1, v4

    :cond_31
    invoke-static {v5, v6, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readLength(Ljava/io/InputStream;IZ)I

    move-result v1

    if-gez v1, :cond_6a

    if-eqz v3, :cond_62

    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    iget v7, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    invoke-direct {v5, v6, v7}, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    iget v7, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    invoke-direct {v6, v5, v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_53

    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/BERApplicationSpecificParser;

    invoke-direct {v4, v2, v6}, Lcom/android/internal/org/bouncycastle/asn1/BERApplicationSpecificParser;-><init>(ILcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v4

    :cond_53
    and-int/lit16 v7, v0, 0x80

    if-eqz v7, :cond_5d

    new-instance v7, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;

    invoke-direct {v7, v4, v2, v6}, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v7

    :cond_5d
    invoke-virtual {v6, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->readIndef(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    return-object v4

    :cond_62
    new-instance v4, Ljava/io/IOException;

    const-string v5, "indefinite-length primitive encoding encountered"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_6a
    new-instance v4, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    iget v6, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    invoke-direct {v4, v5, v1, v6}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;-><init>(Ljava/io/InputStream;II)V

    and-int/lit8 v5, v0, 0x40

    if-eqz v5, :cond_81

    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/DLApplicationSpecific;

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v3, v2, v6}, Lcom/android/internal/org/bouncycastle/asn1/DLApplicationSpecific;-><init>(ZI[B)V

    return-object v5

    :cond_81
    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_90

    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;

    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v6, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v3, v2, v6}, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObjectParser;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v5

    :cond_90
    if-eqz v3, :cond_e1

    sparse-switch v2, :sswitch_data_fc

    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unknown tag "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " encountered"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :sswitch_b5
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/DLSetParser;

    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v6, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/DLSetParser;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v5

    :sswitch_c0
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/DLSequenceParser;

    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v6, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/DLSequenceParser;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v5

    :sswitch_cb
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/DERExternalParser;

    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v6, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/DERExternalParser;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v5

    :sswitch_d6
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringParser;

    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v6, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Lcom/android/internal/org/bouncycastle/asn1/BEROctetStringParser;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v5

    :cond_e1
    packed-switch v2, :pswitch_data_10e

    :try_start_e4
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->tmpBuffers:[[B
    :try_end_e6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e4 .. :try_end_e6} :catch_f2

    goto :goto_ed

    :pswitch_e7  #0x4
    new-instance v5, Lcom/android/internal/org/bouncycastle/asn1/DEROctetStringParser;

    invoke-direct {v5, v4}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetStringParser;-><init>(Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;)V

    return-object v5

    :goto_ed
    :try_start_ed
    invoke-static {v2, v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->createPrimitiveDERObject(ILcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;[[B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5
    :try_end_f1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ed .. :try_end_f1} :catch_f2

    return-object v5

    :catch_f2
    move-exception v5

    new-instance v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;

    const-string v7, "corrupted stream detected"

    invoke-direct {v6, v7, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    nop

    :sswitch_data_fc
    .sparse-switch
        0x4 -> :sswitch_d6
        0x8 -> :sswitch_cb
        0x10 -> :sswitch_c0
        0x11 -> :sswitch_b5
    .end sparse-switch

    :pswitch_data_10e
    .packed-switch 0x4
        :pswitch_e7  #00000004
    .end packed-switch
.end method

.method readTaggedObject(ZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_16

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;

    new-instance v3, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v2, v0, p2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v2

    :cond_16
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->readVector()Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    instance-of v2, v2, Lcom/android/internal/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    const/4 v3, 0x1

    if-eqz v2, :cond_3b

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v2

    if-ne v2, v3, :cond_31

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;

    invoke-virtual {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-direct {v2, v3, p2, v0}, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_3a

    :cond_31
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/BERFactory;->createSequence(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/internal/org/bouncycastle/asn1/BERSequence;

    move-result-object v3

    invoke-direct {v2, v0, p2, v3}, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    :goto_3a
    return-object v2

    :cond_3b
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v2

    if-ne v2, v3, :cond_4b

    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;

    invoke-virtual {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-direct {v2, v3, p2, v0}, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_54

    :cond_4b
    new-instance v2, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/DLFactory;->createSequence(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    invoke-direct {v2, v0, p2, v3}, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    :goto_54
    return-object v2
.end method

.method readVector()Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-nez v0, :cond_d

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    return-object v1

    :cond_d
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    :goto_12
    instance-of v2, v0, Lcom/android/internal/org/bouncycastle/asn1/InMemoryRepresentable;

    if-eqz v2, :cond_21

    move-object v2, v0

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/InMemoryRepresentable;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/asn1/InMemoryRepresentable;->getLoadedObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_28

    :cond_21
    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    :goto_28
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    move-object v0, v2

    if-nez v2, :cond_30

    return-object v1

    :cond_30
    goto :goto_12
.end method
