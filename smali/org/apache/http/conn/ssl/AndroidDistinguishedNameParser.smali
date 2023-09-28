# classes4.dex

.class final Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private beg:I

.field private chars:[C

.field private cur:I

.field private final dn:Ljava/lang/String;

.field private end:I

.field private final length:I

.field private pos:I


# direct methods
.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RFC2253"

    invoke-virtual {p1, v0}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    return-void
.end method

.method private escapedAV()Ljava/lang/String;
    .registers 6

    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    :cond_6
    :goto_6
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    if-lt v0, v1, :cond_19

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    iget v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_19
    iget-object v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    aget-char v2, v1, v0

    sparse-switch v2, :sswitch_data_94

    iget v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    aput-char v2, v1, v3

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    goto :goto_6

    :sswitch_2d
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    invoke-direct {p0}, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->getEscaped()C

    move-result v2

    aput-char v2, v1, v0

    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    goto :goto_6

    :sswitch_40
    new-instance v0, Ljava/lang/String;

    iget v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    iget v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :sswitch_4b
    iget v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    iput v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->cur:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    const/16 v0, 0x20

    aput-char v0, v1, v2

    :goto_5b
    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    if-ge v1, v2, :cond_74

    iget-object v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    aget-char v4, v3, v1

    if-ne v4, v0, :cond_74

    iget v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    aput-char v0, v3, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    goto :goto_5b

    :cond_74
    if-eq v1, v2, :cond_86

    iget-object v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    aget-char v0, v0, v1

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_86

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_86

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_6

    :cond_86
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    iget v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->cur:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    nop

    :sswitch_data_94
    .sparse-switch
        0x20 -> :sswitch_4b
        0x2b -> :sswitch_40
        0x2c -> :sswitch_40
        0x3b -> :sswitch_40
        0x5c -> :sswitch_2d
    .end sparse-switch
.end method

.method private getByte(I)I
    .registers 12

    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    const-string v2, "Malformed DN: "

    if-ge v0, v1, :cond_78

    iget-object v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    aget-char v1, v0, p1

    const/16 v3, 0x46

    const/16 v4, 0x66

    const/16 v5, 0x41

    const/16 v6, 0x39

    const/16 v7, 0x61

    const/16 v8, 0x30

    if-lt v1, v8, :cond_1e

    if-gt v1, v6, :cond_1e

    sub-int/2addr v1, v8

    goto :goto_2b

    :cond_1e
    if-lt v1, v7, :cond_25

    if-gt v1, v4, :cond_25

    add-int/lit8 v1, v1, -0x57

    goto :goto_2b

    :cond_25
    if-lt v1, v5, :cond_5f

    if-gt v1, v3, :cond_5f

    add-int/lit8 v1, v1, -0x37

    :goto_2b
    add-int/lit8 v9, p1, 0x1

    aget-char v0, v0, v9

    if-lt v0, v8, :cond_35

    if-gt v0, v6, :cond_35

    sub-int/2addr v0, v8

    goto :goto_42

    :cond_35
    if-lt v0, v7, :cond_3c

    if-gt v0, v4, :cond_3c

    add-int/lit8 v0, v0, -0x57

    goto :goto_42

    :cond_3c
    if-lt v0, v5, :cond_46

    if-gt v0, v3, :cond_46

    add-int/lit8 v0, v0, -0x37

    :goto_42
    shl-int/lit8 v2, v1, 0x4

    add-int/2addr v2, v0

    return v2

    :cond_46
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_78
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getEscaped()C
    .registers 4

    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    if-eq v0, v1, :cond_17

    iget-object v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    aget-char v0, v1, v0

    sparse-switch v0, :sswitch_data_32

    invoke-direct {p0}, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->getUTF8()C

    move-result v0

    return v0

    :sswitch_16
    return v0

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_32
    .sparse-switch
        0x20 -> :sswitch_16
        0x22 -> :sswitch_16
        0x23 -> :sswitch_16
        0x25 -> :sswitch_16
        0x2a -> :sswitch_16
        0x2b -> :sswitch_16
        0x2c -> :sswitch_16
        0x3b -> :sswitch_16
        0x3c -> :sswitch_16
        0x3d -> :sswitch_16
        0x3e -> :sswitch_16
        0x5c -> :sswitch_16
        0x5f -> :sswitch_16
    .end sparse-switch
.end method

.method private getUTF8()C
    .registers 9

    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    invoke-direct {p0, v0}, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->getByte(I)I

    move-result v0

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    const/16 v1, 0x80

    if-ge v0, v1, :cond_12

    int-to-char v1, v0

    return v1

    :cond_12
    const/16 v2, 0xc0

    const/16 v3, 0x3f

    if-lt v0, v2, :cond_64

    const/16 v2, 0xf7

    if-gt v0, v2, :cond_64

    const/16 v2, 0xdf

    if-gt v0, v2, :cond_24

    const/4 v2, 0x1

    and-int/lit8 v0, v0, 0x1f

    goto :goto_2f

    :cond_24
    const/16 v2, 0xef

    if-gt v0, v2, :cond_2c

    const/4 v2, 0x2

    and-int/lit8 v0, v0, 0xf

    goto :goto_2f

    :cond_2c
    const/4 v2, 0x3

    and-int/lit8 v0, v0, 0x7

    :goto_2f
    const/4 v4, 0x0

    :goto_30
    if-ge v4, v2, :cond_62

    iget v5, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v6, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    if-eq v5, v6, :cond_61

    iget-object v6, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    aget-char v6, v6, v5

    const/16 v7, 0x5c

    if-eq v6, v7, :cond_45

    goto :goto_61

    :cond_45
    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    invoke-direct {p0, v5}, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->getByte(I)I

    move-result v5

    iget v6, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    and-int/lit16 v6, v5, 0xc0

    if-eq v6, v1, :cond_58

    return v3

    :cond_58
    shl-int/lit8 v6, v0, 0x6

    and-int/lit8 v7, v5, 0x3f

    add-int v0, v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    :cond_61
    :goto_61
    return v3

    :cond_62
    int-to-char v1, v0

    return v1

    :cond_64
    return v3
.end method

.method private hexAV()Ljava/lang/String;
    .registers 6

    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    add-int/lit8 v1, v0, 0x4

    iget v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    const-string v3, "Unexpected end of DN: "

    if-ge v1, v2, :cond_9c

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    :goto_10
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    if-eq v0, v1, :cond_54

    iget-object v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    aget-char v2, v1, v0

    const/16 v4, 0x2b

    if-eq v2, v4, :cond_54

    const/16 v4, 0x2c

    if-eq v2, v4, :cond_54

    const/16 v4, 0x3b

    if-ne v2, v4, :cond_27

    goto :goto_54

    :cond_27
    const/16 v4, 0x20

    if-ne v2, v4, :cond_42

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    :goto_31
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_57

    iget-object v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    aget-char v1, v1, v0

    if-ne v1, v4, :cond_57

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    goto :goto_31

    :cond_42
    const/16 v4, 0x41

    if-lt v2, v4, :cond_4f

    const/16 v4, 0x46

    if-gt v2, v4, :cond_4f

    add-int/lit8 v2, v2, 0x20

    int-to-char v2, v2

    aput-char v2, v1, v0

    :cond_4f
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    goto :goto_10

    :cond_54
    :goto_54
    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    nop

    :cond_57
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    sub-int/2addr v0, v1

    const/4 v2, 0x5

    if-lt v0, v2, :cond_83

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_83

    div-int/lit8 v2, v0, 0x2

    new-array v2, v2, [B

    const/4 v3, 0x0

    add-int/lit8 v1, v1, 0x1

    :goto_6a
    array-length v4, v2

    if-ge v3, v4, :cond_79

    invoke-direct {p0, v1}, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->getByte(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    goto :goto_6a

    :cond_79
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    invoke-direct {v1, v3, v4, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    :cond_83
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private nextAT()Ljava/lang/String;
    .registers 7

    :goto_0
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    const/16 v2, 0x20

    if-ge v0, v1, :cond_13

    iget-object v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    aget-char v3, v3, v0

    if-ne v3, v2, :cond_13

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    goto :goto_0

    :cond_13
    if-ne v0, v1, :cond_17

    const/4 v0, 0x0

    return-object v0

    :cond_17
    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    :goto_1d
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    const/16 v3, 0x3d

    if-ge v0, v1, :cond_32

    iget-object v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    aget-char v4, v4, v0

    if-eq v4, v3, :cond_32

    if-eq v4, v2, :cond_32

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    goto :goto_1d

    :cond_32
    const-string v4, "Unexpected end of DN: "

    if-ge v0, v1, :cond_d5

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    iget-object v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    aget-char v0, v1, v0

    if-ne v0, v2, :cond_73

    :goto_3e
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_51

    iget-object v5, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    aget-char v5, v5, v0

    if-eq v5, v3, :cond_51

    if-ne v5, v2, :cond_51

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    goto :goto_3e

    :cond_51
    iget-object v5, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    aget-char v5, v5, v0

    if-ne v5, v3, :cond_5a

    if-eq v0, v1, :cond_5a

    goto :goto_73

    :cond_5a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_73
    :goto_73
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    :goto_79
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_8a

    iget-object v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    aget-char v1, v1, v0

    if-ne v1, v2, :cond_8a

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    goto :goto_79

    :cond_8a
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    sub-int v2, v0, v1

    const/4 v3, 0x4

    if-le v2, v3, :cond_ca

    iget-object v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    add-int/lit8 v4, v1, 0x3

    aget-char v4, v2, v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_ca

    aget-char v4, v2, v1

    const/16 v5, 0x4f

    if-eq v4, v5, :cond_a7

    const/16 v5, 0x6f

    if-ne v4, v5, :cond_ca

    :cond_a7
    add-int/lit8 v4, v1, 0x1

    aget-char v4, v2, v4

    const/16 v5, 0x49

    if-eq v4, v5, :cond_b7

    add-int/lit8 v4, v1, 0x1

    aget-char v4, v2, v4

    const/16 v5, 0x69

    if-ne v4, v5, :cond_ca

    :cond_b7
    add-int/lit8 v4, v1, 0x2

    aget-char v4, v2, v4

    const/16 v5, 0x44

    if-eq v4, v5, :cond_c7

    add-int/lit8 v4, v1, 0x2

    aget-char v2, v2, v4

    const/16 v4, 0x64

    if-ne v2, v4, :cond_ca

    :cond_c7
    add-int/2addr v1, v3

    iput v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    :cond_ca
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    sub-int/2addr v0, v3

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    :cond_d5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private quotedAV()Ljava/lang/String;
    .registers 5

    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    :goto_a
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    if-eq v0, v1, :cond_5b

    iget-object v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    aget-char v2, v1, v0

    const/16 v3, 0x22

    if-ne v2, v3, :cond_3d

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    nop

    :goto_1d
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_30

    iget-object v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    aget-char v1, v1, v0

    const/16 v2, 0x20

    if-ne v1, v2, :cond_30

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    goto :goto_1d

    :cond_30
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    iget v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_3d
    const/16 v0, 0x5c

    if-ne v2, v0, :cond_4a

    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    invoke-direct {p0}, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->getEscaped()C

    move-result v2

    aput-char v2, v1, v0

    goto :goto_4e

    :cond_4a
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    aput-char v2, v1, v0

    :goto_4e
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    goto :goto_a

    :cond_5b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public findMostSpecific(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->cur:I

    iget-object v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    invoke-direct {p0}, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->nextAT()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_19

    return-object v1

    :cond_19
    :goto_19
    const-string v2, ""

    iget v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    if-ne v3, v4, :cond_22

    return-object v1

    :cond_22
    iget-object v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    aget-char v3, v4, v3

    sparse-switch v3, :sswitch_data_98

    invoke-direct {p0}, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->escapedAV()Ljava/lang/String;

    move-result-object v2

    goto :goto_39

    :sswitch_2e
    goto :goto_39

    :sswitch_2f
    invoke-direct {p0}, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->hexAV()Ljava/lang/String;

    move-result-object v2

    goto :goto_39

    :sswitch_34
    invoke-direct {p0}, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->quotedAV()Ljava/lang/String;

    move-result-object v2

    nop

    :goto_39
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_40

    return-object v2

    :cond_40
    iget v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    if-lt v3, v4, :cond_47

    return-object v1

    :cond_47
    iget-object v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    aget-char v4, v4, v3

    const/16 v5, 0x2c

    const-string v6, "Malformed DN: "

    if-eq v4, v5, :cond_74

    const/16 v5, 0x3b

    if-ne v4, v5, :cond_56

    goto :goto_74

    :cond_56
    const/16 v5, 0x2b

    if-ne v4, v5, :cond_5b

    goto :goto_74

    :cond_5b
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_74
    :goto_74
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    invoke-direct {p0}, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->nextAT()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7f

    goto :goto_19

    :cond_7f
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_98
    .sparse-switch
        0x22 -> :sswitch_34
        0x23 -> :sswitch_2f
        0x2b -> :sswitch_2e
        0x2c -> :sswitch_2e
        0x3b -> :sswitch_2e
    .end sparse-switch
.end method

.method public getAllMostSpecificFirst(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->cur:I

    iget-object v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->nextAT()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1c

    return-object v0

    :cond_1c
    :goto_1c
    iget v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    if-ge v2, v3, :cond_a8

    const-string v3, ""

    iget-object v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    aget-char v2, v4, v2

    sparse-switch v2, :sswitch_data_aa

    invoke-direct {p0}, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->escapedAV()Ljava/lang/String;

    move-result-object v3

    goto :goto_3b

    :sswitch_30
    goto :goto_3b

    :sswitch_31
    invoke-direct {p0}, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->hexAV()Ljava/lang/String;

    move-result-object v3

    goto :goto_3b

    :sswitch_36
    invoke-direct {p0}, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->quotedAV()Ljava/lang/String;

    move-result-object v3

    nop

    :goto_3b
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4d

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v2

    :cond_4d
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_50
    iget v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    if-lt v2, v4, :cond_57

    goto :goto_a8

    :cond_57
    iget-object v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    aget-char v4, v4, v2

    const/16 v5, 0x2c

    const-string v6, "Malformed DN: "

    if-eq v4, v5, :cond_84

    const/16 v5, 0x3b

    if-ne v4, v5, :cond_66

    goto :goto_84

    :cond_66
    const/16 v5, 0x2b

    if-ne v4, v5, :cond_6b

    goto :goto_84

    :cond_6b
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_84
    :goto_84
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    invoke-direct {p0}, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->nextAT()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8f

    goto :goto_1c

    :cond_8f
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a8
    :goto_a8
    return-object v0

    nop

    :sswitch_data_aa
    .sparse-switch
        0x22 -> :sswitch_36
        0x23 -> :sswitch_31
        0x2b -> :sswitch_30
        0x2c -> :sswitch_30
        0x3b -> :sswitch_30
    .end sparse-switch
.end method
