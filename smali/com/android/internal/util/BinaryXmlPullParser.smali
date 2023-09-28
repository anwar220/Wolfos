# classes4.dex

.class public final Lcom/android/internal/util/BinaryXmlPullParser;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/util/TypedXmlPullParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/BinaryXmlPullParser$Attribute;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x8000

.field private static final HEX_DIGITS:[C


# instance fields
.field private mAttributeCount:I

.field private mAttributes:[Lcom/android/internal/util/BinaryXmlPullParser$Attribute;

.field private mCurrentDepth:I

.field private mCurrentName:Ljava/lang/String;

.field private mCurrentText:Ljava/lang/String;

.field private mCurrentToken:I

.field private mIn:Lcom/android/internal/util/FastDataInput;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/internal/util/BinaryXmlPullParser;->HEX_DIGITS:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mCurrentToken:I

    iput v0, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mCurrentDepth:I

    iput v0, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mAttributeCount:I

    return-void
.end method

.method static bytesToHexString([B)Ljava/lang/String;
    .registers 9

    array-length v0, p0

    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [C

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v0, :cond_22

    aget-byte v4, p0, v3

    add-int/lit8 v5, v2, 0x1

    sget-object v6, Lcom/android/internal/util/BinaryXmlPullParser;->HEX_DIGITS:[C

    ushr-int/lit8 v7, v4, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v6, v7

    aput-char v7, v1, v2

    add-int/lit8 v2, v5, 0x1

    and-int/lit8 v7, v4, 0xf

    aget-char v6, v6, v7

    aput-char v6, v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_22
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method private consumeAdditionalText()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    :goto_2
    invoke-direct {p0}, Lcom/android/internal/util/BinaryXmlPullParser;->peekNextExternalToken()I

    move-result v1

    packed-switch v1, :pswitch_data_2e

    :pswitch_9  #0x7
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mCurrentToken:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mCurrentName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    return-void

    :pswitch_12  #0x8, 0x9
    invoke-direct {p0}, Lcom/android/internal/util/BinaryXmlPullParser;->consumeToken()V

    goto :goto_2d

    :pswitch_16  #0x4, 0x5, 0x6
    invoke-direct {p0}, Lcom/android/internal/util/BinaryXmlPullParser;->consumeToken()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    :goto_2d
    goto :goto_2

    :pswitch_data_2e
    .packed-switch 0x4
        :pswitch_16  #00000004
        :pswitch_16  #00000005
        :pswitch_16  #00000006
        :pswitch_9  #00000007
        :pswitch_12  #00000008
        :pswitch_12  #00000009
    .end packed-switch
.end method

.method private consumeToken()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mIn:Lcom/android/internal/util/FastDataInput;

    invoke-virtual {v0}, Lcom/android/internal/util/FastDataInput;->readByte()B

    move-result v0

    and-int/lit8 v1, v0, 0xf

    and-int/lit16 v2, v0, 0xf0

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_10c

    :pswitch_e  #0xb, 0xc, 0xd, 0xe
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_31  #0xf
    invoke-direct {p0}, Lcom/android/internal/util/BinaryXmlPullParser;->obtainAttribute()Lcom/android/internal/util/BinaryXmlPullParser$Attribute;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mIn:Lcom/android/internal/util/FastDataInput;

    invoke-virtual {v4}, Lcom/android/internal/util/FastDataInput;->readInternedUTF()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->name:Ljava/lang/String;

    iput v2, v3, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->type:I

    sparse-switch v2, :sswitch_data_130

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected data type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :sswitch_5b
    iget-object v4, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mIn:Lcom/android/internal/util/FastDataInput;

    invoke-virtual {v4}, Lcom/android/internal/util/FastDataInput;->readDouble()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->valueDouble:D

    goto/16 :goto_10b

    :sswitch_65
    iget-object v4, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mIn:Lcom/android/internal/util/FastDataInput;

    invoke-virtual {v4}, Lcom/android/internal/util/FastDataInput;->readFloat()F

    move-result v4

    iput v4, v3, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->valueFloat:F

    goto/16 :goto_10b

    :sswitch_6f
    iget-object v4, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mIn:Lcom/android/internal/util/FastDataInput;

    invoke-virtual {v4}, Lcom/android/internal/util/FastDataInput;->readLong()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->valueLong:J

    goto/16 :goto_10b

    :sswitch_79
    iget-object v4, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mIn:Lcom/android/internal/util/FastDataInput;

    invoke-virtual {v4}, Lcom/android/internal/util/FastDataInput;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->valueInt:I

    goto/16 :goto_10b

    :sswitch_83
    iget-object v4, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mIn:Lcom/android/internal/util/FastDataInput;

    invoke-virtual {v4}, Lcom/android/internal/util/FastDataInput;->readUnsignedShort()I

    move-result v4

    new-array v5, v4, [B

    iget-object v6, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mIn:Lcom/android/internal/util/FastDataInput;

    invoke-virtual {v6, v5}, Lcom/android/internal/util/FastDataInput;->readFully([B)V

    iput-object v5, v3, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->valueBytes:[B

    goto/16 :goto_10b

    :sswitch_94
    iget-object v4, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mIn:Lcom/android/internal/util/FastDataInput;

    invoke-virtual {v4}, Lcom/android/internal/util/FastDataInput;->readInternedUTF()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->valueString:Ljava/lang/String;

    goto/16 :goto_10b

    :sswitch_9e
    iget-object v4, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mIn:Lcom/android/internal/util/FastDataInput;

    invoke-virtual {v4}, Lcom/android/internal/util/FastDataInput;->readUTF()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->valueString:Ljava/lang/String;

    goto :goto_10b

    :sswitch_a7
    goto :goto_10b

    :pswitch_a8  #0x6
    iget-object v3, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mIn:Lcom/android/internal/util/FastDataInput;

    invoke-virtual {v3}, Lcom/android/internal/util/FastDataInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mCurrentName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/util/BinaryXmlPullParser;->resolveEntity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mAttributeCount:I

    if-lez v3, :cond_10b

    invoke-direct {p0}, Lcom/android/internal/util/BinaryXmlPullParser;->resetAttributes()V

    goto :goto_10b

    :pswitch_be  #0x4, 0x5, 0x7, 0x8, 0x9, 0xa
    iput-object v3, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mCurrentName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mIn:Lcom/android/internal/util/FastDataInput;

    invoke-virtual {v3}, Lcom/android/internal/util/FastDataInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mAttributeCount:I

    if-lez v3, :cond_10b

    invoke-direct {p0}, Lcom/android/internal/util/BinaryXmlPullParser;->resetAttributes()V

    goto :goto_10b

    :pswitch_d0  #0x3
    iget-object v4, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mIn:Lcom/android/internal/util/FastDataInput;

    invoke-virtual {v4}, Lcom/android/internal/util/FastDataInput;->readInternedUTF()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mCurrentName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mAttributeCount:I

    if-lez v3, :cond_10b

    invoke-direct {p0}, Lcom/android/internal/util/BinaryXmlPullParser;->resetAttributes()V

    goto :goto_10b

    :pswitch_e2  #0x2
    iget-object v4, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mIn:Lcom/android/internal/util/FastDataInput;

    invoke-virtual {v4}, Lcom/android/internal/util/FastDataInput;->readInternedUTF()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mCurrentName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mAttributeCount:I

    if-lez v3, :cond_10b

    invoke-direct {p0}, Lcom/android/internal/util/BinaryXmlPullParser;->resetAttributes()V

    goto :goto_10b

    :pswitch_f4  #0x1
    iput-object v3, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mCurrentName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mAttributeCount:I

    if-lez v3, :cond_10b

    invoke-direct {p0}, Lcom/android/internal/util/BinaryXmlPullParser;->resetAttributes()V

    goto :goto_10b

    :pswitch_100  #0x0
    iput-object v3, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mCurrentName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mAttributeCount:I

    if-lez v3, :cond_10b

    invoke-direct {p0}, Lcom/android/internal/util/BinaryXmlPullParser;->resetAttributes()V

    :cond_10b
    :goto_10b
    return-void

    :pswitch_data_10c
    .packed-switch 0x0
        :pswitch_100  #00000000
        :pswitch_f4  #00000001
        :pswitch_e2  #00000002
        :pswitch_d0  #00000003
        :pswitch_be  #00000004
        :pswitch_be  #00000005
        :pswitch_a8  #00000006
        :pswitch_be  #00000007
        :pswitch_be  #00000008
        :pswitch_be  #00000009
        :pswitch_be  #0000000a
        :pswitch_e  #0000000b
        :pswitch_e  #0000000c
        :pswitch_e  #0000000d
        :pswitch_e  #0000000e
        :pswitch_31  #0000000f
    .end packed-switch

    :sswitch_data_130
    .sparse-switch
        0x10 -> :sswitch_a7
        0x20 -> :sswitch_9e
        0x30 -> :sswitch_94
        0x40 -> :sswitch_83
        0x50 -> :sswitch_83
        0x60 -> :sswitch_79
        0x70 -> :sswitch_79
        0x80 -> :sswitch_6f
        0x90 -> :sswitch_6f
        0xa0 -> :sswitch_65
        0xb0 -> :sswitch_5b
        0xc0 -> :sswitch_a7
        0xd0 -> :sswitch_a7
    .end sparse-switch
.end method

.method static hexStringToBytes(Ljava/lang/String;)[B
    .registers 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_2d

    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v0, :cond_2c

    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/util/BinaryXmlPullParser;->toByte(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/internal/util/BinaryXmlPullParser;->toByte(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_d

    :cond_2c
    return-object v1

    :cond_2d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid hex length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static illegalNamespace()Ljava/lang/IllegalArgumentException;
    .registers 2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Namespaces are not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private obtainAttribute()Lcom/android/internal/util/BinaryXmlPullParser$Attribute;
    .registers 7

    iget v0, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mAttributeCount:I

    iget-object v1, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mAttributes:[Lcom/android/internal/util/BinaryXmlPullParser$Attribute;

    array-length v2, v1

    if-ne v0, v2, :cond_23

    array-length v0, v1

    shr-int/lit8 v2, v0, 0x1

    add-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/util/BinaryXmlPullParser$Attribute;

    iput-object v1, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mAttributes:[Lcom/android/internal/util/BinaryXmlPullParser$Attribute;

    move v1, v0

    :goto_14
    if-ge v1, v2, :cond_23

    iget-object v3, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mAttributes:[Lcom/android/internal/util/BinaryXmlPullParser$Attribute;

    new-instance v4, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;-><init>(Lcom/android/internal/util/BinaryXmlPullParser$Attribute-IA;)V

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_23
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mAttributes:[Lcom/android/internal/util/BinaryXmlPullParser$Attribute;

    iget v1, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mAttributeCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mAttributeCount:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method private peekNextExternalToken()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    :goto_0
    invoke-direct {p0}, Lcom/android/internal/util/BinaryXmlPullParser;->peekNextToken()I

    move-result v0

    packed-switch v0, :pswitch_data_c

    return v0

    :pswitch_8  #0xf
    invoke-direct {p0}, Lcom/android/internal/util/BinaryXmlPullParser;->consumeToken()V

    goto :goto_0

    :pswitch_data_c
    .packed-switch 0xf
        :pswitch_8  #0000000f
    .end packed-switch
.end method

.method private peekNextToken()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mIn:Lcom/android/internal/util/FastDataInput;

    invoke-virtual {v0}, Lcom/android/internal/util/FastDataInput;->peekByte()B

    move-result v0

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method private resetAttributes()V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mAttributeCount:I

    if-ge v0, v1, :cond_f

    iget-object v1, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mAttributes:[Lcom/android/internal/util/BinaryXmlPullParser$Attribute;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->reset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mAttributeCount:I

    return-void
.end method

.method static resolveEntity(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_8c

    :cond_9
    goto :goto_3e

    :sswitch_a
    const-string/jumbo v0, "quot"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x4

    goto :goto_3f

    :sswitch_15
    const-string v0, "apos"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    goto :goto_3f

    :sswitch_1f
    const-string v0, "amp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x2

    goto :goto_3f

    :sswitch_29
    const-string/jumbo v0, "lt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_3f

    :sswitch_34
    const-string v0, "gt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    goto :goto_3f

    :goto_3e
    const/4 v0, -0x1

    :goto_3f
    packed-switch v0, :pswitch_data_a2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_72

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x23

    if-ne v0, v3, :cond_72

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-char v0, v0

    new-instance v3, Ljava/lang/String;

    new-array v2, v2, [C

    aput-char v0, v2, v1

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    return-object v3

    :pswitch_63  #0x4
    const-string v0, "\""

    return-object v0

    :pswitch_66  #0x3
    const-string v0, "\'"

    return-object v0

    :pswitch_69  #0x2
    const-string v0, "&"

    return-object v0

    :pswitch_6c  #0x1
    const-string v0, ">"

    return-object v0

    :pswitch_6f  #0x0
    const-string v0, "<"

    return-object v0

    :cond_72
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown entity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_8c
    .sparse-switch
        0xced -> :sswitch_34
        0xd88 -> :sswitch_29
        0x179c4 -> :sswitch_1f
        0x2dca53 -> :sswitch_15
        0x352309 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_6f  #00000000
        :pswitch_6c  #00000001
        :pswitch_69  #00000002
        :pswitch_66  #00000003
        :pswitch_63  #00000004
    .end packed-switch
.end method

.method private static toByte(C)I
    .registers 4

    const/16 v0, 0x30

    if-lt p0, v0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    add-int/lit8 v0, p0, -0x30

    return v0

    :cond_b
    const/16 v0, 0x41

    if-lt p0, v0, :cond_18

    const/16 v0, 0x46

    if-gt p0, v0, :cond_18

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    :cond_18
    const/16 v0, 0x61

    if-lt p0, v0, :cond_25

    const/16 v0, 0x66

    if-gt p0, v0, :cond_25

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAttributeBoolean(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mAttributes:[Lcom/android/internal/util/BinaryXmlPullParser$Attribute;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->getValueBoolean()Z

    move-result v0

    return v0
.end method

.method public getAttributeBytesBase64(I)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mAttributes:[Lcom/android/internal/util/BinaryXmlPullParser$Attribute;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->getValueBytesBase64()[B

    move-result-object v0

    return-object v0
.end method

.method public getAttributeBytesHex(I)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mAttributes:[Lcom/android/internal/util/BinaryXmlPullParser$Attribute;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->getValueBytesHex()[B

    move-result-object v0

    return-object v0
.end method

.method public getAttributeCount()I
    .registers 2

    iget v0, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mAttributeCount:I

    return v0
.end method

.method public getAttributeDouble(I)D
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mAttributes:[Lcom/android/internal/util/BinaryXmlPullParser$Attribute;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->getValueDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public getAttributeFloat(I)F
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mAttributes:[Lcom/android/internal/util/BinaryXmlPullParser$Attribute;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->getValueFloat()F

    move-result v0

    return v0
.end method

.method public getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_e

    :cond_9
    invoke-static {}, Lcom/android/internal/util/BinaryXmlPullParser;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_e
    :goto_e
    const/4 v0, 0x0

    :goto_f
    iget v1, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mAttributeCount:I

    if-ge v0, v1, :cond_23

    iget-object v1, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mAttributes:[Lcom/android/internal/util/BinaryXmlPullParser$Attribute;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->name:Ljava/lang/String;

    invoke-static {v1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    return v0

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_23
    const/4 v0, -0x1

    return v0
.end method

.method public getAttributeInt(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mAttributes:[Lcom/android/internal/util/BinaryXmlPullParser$Attribute;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->getValueInt()I

    move-result v0

    return v0
.end method

.method public getAttributeIntHex(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mAttributes:[Lcom/android/internal/util/BinaryXmlPullParser$Attribute;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->getValueIntHex()I

    move-result v0

    return v0
.end method

.method public getAttributeLong(I)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mAttributes:[Lcom/android/internal/util/BinaryXmlPullParser$Attribute;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->getValueLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAttributeLongHex(I)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mAttributes:[Lcom/android/internal/util/BinaryXmlPullParser$Attribute;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->getValueLongHex()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mAttributes:[Lcom/android/internal/util/BinaryXmlPullParser$Attribute;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    return-object v0
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .registers 3

    const-string v0, "CDATA"

    return-object v0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mAttributes:[Lcom/android/internal/util/BinaryXmlPullParser$Attribute;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->getValueString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/BinaryXmlPullParser;->getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    iget-object v1, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mAttributes:[Lcom/android/internal/util/BinaryXmlPullParser$Attribute;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;->getValueString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_10
    const/4 v1, 0x0

    return-object v1
.end method

.method public getColumnNumber()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public getDepth()I
    .registers 2

    iget v0, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mCurrentDepth:I

    return v0
.end method

.method public getEventType()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mCurrentToken:I

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .registers 2

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLineNumber()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mCurrentName:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mCurrentToken:I

    packed-switch v0, :pswitch_data_a

    const/4 v0, 0x0

    return-object v0

    :pswitch_7  #0x2, 0x3
    const-string v0, ""

    return-object v0

    :pswitch_data_a
    .packed-switch 0x2
        :pswitch_7  #00000002
        :pswitch_7  #00000003
    .end packed-switch
.end method

.method public getNamespace(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNamespaceCount(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNamespaceUri(I)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at depth "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mCurrentDepth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextCharacters([I)[C
    .registers 5

    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    aput v1, p1, v1

    array-length v1, v0

    const/4 v2, 0x1

    aput v1, p1, v2

    return-object v0
.end method

.method public isAttributeDefault(I)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public isEmptyElementTag()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mCurrentToken:I

    packed-switch v0, :pswitch_data_24

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Not at START_TAG"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_d  #0x2
    :try_start_d
    invoke-direct {p0}, Lcom/android/internal/util/BinaryXmlPullParser;->peekNextExternalToken()I

    move-result v0
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_11} :catch_18

    const/4 v1, 0x3

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0

    :catch_18
    move-exception v0

    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_24
    .packed-switch 0x2
        :pswitch_d  #00000002
    .end packed-switch
.end method

.method public isWhitespace()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mCurrentToken:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_2a

    :pswitch_6  #0x6
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not applicable for token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mCurrentToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_21  #0x7
    return v1

    :pswitch_22  #0x4, 0x5
    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    :pswitch_data_2a
    .packed-switch 0x4
        :pswitch_22  #00000004
        :pswitch_22  #00000005
        :pswitch_6  #00000006
        :pswitch_21  #00000007
    .end packed-switch
.end method

.method public next()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/util/BinaryXmlPullParser;->nextToken()I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    goto :goto_0

    :pswitch_8  #0x4
    invoke-direct {p0}, Lcom/android/internal/util/BinaryXmlPullParser;->consumeAdditionalText()V

    iget-object v1, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_16

    goto :goto_0

    :cond_16
    const/4 v1, 0x4

    return v1

    :pswitch_18  #0x1, 0x2, 0x3
    return v0

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_18  #00000001
        :pswitch_18  #00000002
        :pswitch_18  #00000003
        :pswitch_8  #00000004
    .end packed-switch
.end method

.method public nextTag()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/util/BinaryXmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_11

    invoke-virtual {p0}, Lcom/android/internal/util/BinaryXmlPullParser;->isWhitespace()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lcom/android/internal/util/BinaryXmlPullParser;->next()I

    move-result v0

    :cond_11
    const/4 v1, 0x2

    if-eq v0, v1, :cond_22

    const/4 v1, 0x3

    if-ne v0, v1, :cond_18

    goto :goto_22

    :cond_18
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {p0}, Lcom/android/internal/util/BinaryXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_22
    :goto_22
    return v0
.end method

.method public nextText()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/util/BinaryXmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_33

    invoke-virtual {p0}, Lcom/android/internal/util/BinaryXmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    if-ne v0, v1, :cond_24

    invoke-virtual {p0}, Lcom/android/internal/util/BinaryXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/util/BinaryXmlPullParser;->next()I

    move-result v0

    if-ne v0, v2, :cond_1a

    return-object v1

    :cond_1a
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {p0}, Lcom/android/internal/util/BinaryXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_24
    if-ne v0, v2, :cond_29

    const-string v1, ""

    return-object v1

    :cond_29
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {p0}, Lcom/android/internal/util/BinaryXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_33
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {p0}, Lcom/android/internal/util/BinaryXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextToken()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mCurrentToken:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    iget v0, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mCurrentDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mCurrentDepth:I

    :cond_b
    :try_start_b
    invoke-direct {p0}, Lcom/android/internal/util/BinaryXmlPullParser;->peekNextExternalToken()I

    move-result v0

    invoke-direct {p0}, Lcom/android/internal/util/BinaryXmlPullParser;->consumeToken()V
    :try_end_12
    .catch Ljava/io/EOFException; {:try_start_b .. :try_end_12} :catch_13

    goto :goto_16

    :catch_13
    move-exception v0

    const/4 v1, 0x1

    move v0, v1

    :goto_16
    packed-switch v0, :pswitch_data_26

    goto :goto_23

    :pswitch_1a  #0x2
    invoke-direct {p0}, Lcom/android/internal/util/BinaryXmlPullParser;->peekNextExternalToken()I

    iget v1, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mCurrentDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mCurrentDepth:I

    :goto_23
    iput v0, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mCurrentToken:I

    return v0

    :pswitch_data_26
    .packed-switch 0x2
        :pswitch_1a  #00000002
    .end packed-switch
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_e

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_e

    :cond_9
    invoke-static {}, Lcom/android/internal/util/BinaryXmlPullParser;->illegalNamespace()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_e
    :goto_e
    iget v0, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mCurrentToken:I

    if-ne v0, p1, :cond_1b

    iget-object v0, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mCurrentName:Ljava/lang/String;

    invoke-static {v0, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    return-void

    :cond_1b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {p0}, Lcom/android/internal/util/BinaryXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    if-eqz p2, :cond_15

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_15

    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_15
    :goto_15
    new-instance v0, Lcom/android/internal/util/FastDataInput;

    const v1, 0x8000

    invoke-direct {v0, p1, v1}, Lcom/android/internal/util/FastDataInput;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mIn:Lcom/android/internal/util/FastDataInput;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mCurrentToken:I

    iput v0, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mCurrentDepth:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mCurrentName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mCurrentText:Ljava/lang/String;

    iput v0, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mAttributeCount:I

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/internal/util/BinaryXmlPullParser$Attribute;

    iput-object v0, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mAttributes:[Lcom/android/internal/util/BinaryXmlPullParser$Attribute;

    const/4 v0, 0x0

    :goto_32
    iget-object v2, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mAttributes:[Lcom/android/internal/util/BinaryXmlPullParser$Attribute;

    array-length v3, v2

    if-ge v0, v3, :cond_41

    new-instance v3, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;

    invoke-direct {v3, v1}, Lcom/android/internal/util/BinaryXmlPullParser$Attribute;-><init>(Lcom/android/internal/util/BinaryXmlPullParser$Attribute-IA;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :cond_41
    const/4 v0, 0x4

    :try_start_42
    new-array v0, v0, [B

    iget-object v1, p0, Lcom/android/internal/util/BinaryXmlPullParser;->mIn:Lcom/android/internal/util/FastDataInput;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/FastDataInput;->readFully([B)V

    sget-object v1, Lcom/android/internal/util/BinaryXmlSerializer;->PROTOCOL_MAGIC_VERSION_0:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-direct {p0}, Lcom/android/internal/util/BinaryXmlPullParser;->peekNextExternalToken()I

    move-result v1

    if-nez v1, :cond_5a

    invoke-direct {p0}, Lcom/android/internal/util/BinaryXmlPullParser;->consumeToken()V

    :cond_5a
    nop

    return-void

    :cond_5c
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected magic "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/internal/util/BinaryXmlPullParser;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_79} :catch_79

    :catch_79
    move-exception v0

    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setInput(Ljava/io/Reader;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
