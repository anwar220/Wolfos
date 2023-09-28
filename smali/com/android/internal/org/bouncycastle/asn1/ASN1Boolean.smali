# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;


# static fields
.field public static final FALSE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

.field private static final FALSE_VALUE:B = 0x0t

.field public static final TRUE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

.field private static final TRUE_VALUE:B = -0x1t


# instance fields
.field private final value:B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;-><init>(B)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->FALSE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;-><init>(B)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->TRUE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    return-void
.end method

.method private constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    iput-byte p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->value:B

    return-void
.end method

.method static fromOctetString([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;
    .registers 3

    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    packed-switch v0, :pswitch_data_1e

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    invoke-direct {v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;-><init>(B)V

    return-object v1

    :pswitch_10  #0x0
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->FALSE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    return-object v1

    :pswitch_13  #0xffffffff
    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->TRUE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    return-object v1

    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BOOLEAN value should have 1 byte in it"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_1e
    .packed-switch -0x1
        :pswitch_13  #ffffffff
        :pswitch_10  #00000000
    .end packed-switch
.end method

.method public static getInstance(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;
    .registers 2

    if-eqz p0, :cond_5

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->TRUE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    goto :goto_7

    :cond_5
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->FALSE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    :goto_7
    return-object v0
.end method

.method public static getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;
    .registers 4

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    if-nez p1, :cond_18

    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    if-eqz v1, :cond_b

    goto :goto_18

    :cond_b
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->fromOctetString([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    move-result-object v1

    return-object v1

    :cond_18
    :goto_18
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;
    .registers 6

    if-eqz p0, :cond_54

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    if-eqz v0, :cond_7

    goto :goto_54

    :cond_7
    instance-of v0, p0, [B

    if-eqz v0, :cond_33

    move-object v0, p0

    check-cast v0, [B

    :try_start_e
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_14} :catch_15

    return-object v1

    :catch_15
    move-exception v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to construct boolean from byte[]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_33
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

    :cond_54
    :goto_54
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    return-object v0
.end method

.method public static getInstance(Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;
    .registers 2

    if-eqz p0, :cond_5

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->TRUE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    goto :goto_7

    :cond_5
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->FALSE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    :goto_7
    return-object v0
.end method

.method public static getInstance([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;
    .registers 2

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->TRUE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    goto :goto_a

    :cond_8
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->FALSE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    :goto_a
    return-object v0
.end method


# virtual methods
.method asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 6

    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v2

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v3

    if-ne v2, v3, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1
.end method

.method encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-byte v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->value:B

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(ZIB)V

    return-void
.end method

.method encodedLength()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public hashCode()I
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v0

    return v0
.end method

.method isConstructed()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isTrue()Z
    .registers 2

    iget-byte v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->value:B

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->TRUE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    goto :goto_b

    :cond_9
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->FALSE:Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    :goto_b
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "TRUE"

    goto :goto_b

    :cond_9
    const-string v0, "FALSE"

    :goto_b
    return-object v0
.end method
