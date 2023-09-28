# classes4.dex

.class public Lcom/google/android/mms/pdu/PduParser;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEBUG:Z = false

.field private static final END_STRING_FLAG:I = 0x0

.field private static final LENGTH_QUOTE:I = 0x1f

.field private static final LOCAL_LOGV:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PduParser"

.field private static final LONG_INTEGER_LENGTH_MAX:I = 0x8

.field private static final QUOTE:I = 0x7f

.field private static final QUOTED_STRING_FLAG:I = 0x22

.field private static final SHORT_INTEGER_MAX:I = 0x7f

.field private static final SHORT_LENGTH_MAX:I = 0x1e

.field private static final TEXT_MAX:I = 0x7f

.field private static final TEXT_MIN:I = 0x20

.field private static final THE_FIRST_PART:I = 0x0

.field private static final THE_LAST_PART:I = 0x1

.field private static final TYPE_QUOTED_STRING:I = 0x1

.field private static final TYPE_TEXT_STRING:I = 0x0

.field private static final TYPE_TOKEN_STRING:I = 0x2

.field private static mStartParam:[B

.field private static mTypeParam:[B


# instance fields
.field private mBody:Lcom/google/android/mms/pdu/PduBody;

.field private mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

.field private final mParseContentDisposition:Z

.field private mPduDataStream:Ljava/io/ByteArrayInputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    nop

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    sput-object v0, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    return-void
.end method

.method public constructor <init>([BZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    iput-boolean p2, p0, Lcom/google/android/mms/pdu/PduParser;->mParseContentDisposition:Z

    return-void
.end method

.method protected static checkMandatoryHeader(Lcom/google/android/mms/pdu/PduHeaders;)Z
    .registers 14

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/16 v1, 0x8c

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v1

    const/16 v2, 0x8d

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v2

    if-nez v2, :cond_13

    return v0

    :cond_13
    const/16 v3, 0x9b

    const/16 v4, 0x95

    const/16 v5, 0x84

    const/16 v6, 0x97

    const/16 v7, 0x8b

    const/16 v8, 0x89

    const/16 v9, 0x85

    const-wide/16 v10, -0x1

    const/16 v12, 0x98

    packed-switch v1, :pswitch_data_104

    return v0

    :pswitch_29  #0x88
    invoke-virtual {p0, v9}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v4

    cmp-long v9, v10, v4

    if-nez v9, :cond_32

    return v0

    :cond_32
    invoke-virtual {p0, v8}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v8

    if-nez v8, :cond_39

    return v0

    :cond_39
    invoke-virtual {p0, v7}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v7

    if-nez v7, :cond_40

    return v0

    :cond_40
    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v3

    if-nez v3, :cond_47

    return v0

    :cond_47
    invoke-virtual {p0, v6}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v6

    if-nez v6, :cond_101

    return v0

    :pswitch_4e  #0x87
    invoke-virtual {p0, v8}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    if-nez v4, :cond_55

    return v0

    :cond_55
    invoke-virtual {p0, v7}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v5

    if-nez v5, :cond_5c

    return v0

    :cond_5c
    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v3

    if-nez v3, :cond_63

    return v0

    :cond_63
    invoke-virtual {p0, v6}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v6

    if-nez v6, :cond_101

    return v0

    :pswitch_6a  #0x86
    invoke-virtual {p0, v9}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v8

    cmp-long v3, v10, v8

    if-nez v3, :cond_73

    return v0

    :cond_73
    invoke-virtual {p0, v7}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v3

    if-nez v3, :cond_7a

    return v0

    :cond_7a
    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v4

    if-nez v4, :cond_81

    return v0

    :cond_81
    invoke-virtual {p0, v6}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    if-nez v5, :cond_101

    return v0

    :pswitch_88  #0x85
    invoke-virtual {p0, v12}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v3

    if-nez v3, :cond_101

    return v0

    :pswitch_8f  #0x84
    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v3

    if-nez v3, :cond_96

    return v0

    :cond_96
    invoke-virtual {p0, v9}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v4

    cmp-long v6, v10, v4

    if-nez v6, :cond_101

    return v0

    :pswitch_9f  #0x83
    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v3

    if-nez v3, :cond_a6

    return v0

    :cond_a6
    invoke-virtual {p0, v12}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v4

    if-nez v4, :cond_101

    return v0

    :pswitch_ad  #0x82
    const/16 v3, 0x83

    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v3

    if-nez v3, :cond_b6

    return v0

    :cond_b6
    const/16 v4, 0x88

    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v4

    cmp-long v6, v10, v4

    if-nez v6, :cond_c1

    return v0

    :cond_c1
    const/16 v6, 0x8a

    invoke-virtual {p0, v6}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v6

    if-nez v6, :cond_ca

    return v0

    :cond_ca
    const/16 v7, 0x8e

    invoke-virtual {p0, v7}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v7

    cmp-long v9, v10, v7

    if-nez v9, :cond_d5

    return v0

    :cond_d5
    invoke-virtual {p0, v12}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v9

    if-nez v9, :cond_101

    return v0

    :pswitch_dc  #0x81
    const/16 v3, 0x92

    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v3

    if-nez v3, :cond_e5

    return v0

    :cond_e5
    invoke-virtual {p0, v12}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v4

    if-nez v4, :cond_101

    return v0

    :pswitch_ec  #0x80
    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v3

    if-nez v3, :cond_f3

    return v0

    :cond_f3
    invoke-virtual {p0, v8}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    if-nez v4, :cond_fa

    return v0

    :cond_fa
    invoke-virtual {p0, v12}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v5

    if-nez v5, :cond_101

    return v0

    :cond_101
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_104
    .packed-switch 0x80
        :pswitch_ec  #00000080
        :pswitch_dc  #00000081
        :pswitch_ad  #00000082
        :pswitch_9f  #00000083
        :pswitch_8f  #00000084
        :pswitch_88  #00000085
        :pswitch_6a  #00000086
        :pswitch_4e  #00000087
        :pswitch_29  #00000088
    .end packed-switch
.end method

.method private static checkPartPosition(Lcom/google/android/mms/pdu/PduPart;)I
    .registers 5

    nop

    sget-object v0, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    const/4 v1, 0x1

    if-nez v0, :cond_b

    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    if-nez v2, :cond_b

    return v1

    :cond_b
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    const/4 v3, 0x0

    if-eqz v2, :cond_20

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v0

    if-eqz v0, :cond_1f

    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-ne v1, v2, :cond_1f

    return v3

    :cond_1f
    return v1

    :cond_20
    if-eqz v0, :cond_31

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v0

    if-eqz v0, :cond_31

    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-ne v1, v2, :cond_31

    return v3

    :cond_31
    return v1
.end method

.method protected static extractByteValue(Ljava/io/ByteArrayInputStream;)I
    .registers 3

    nop

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    nop

    and-int/lit16 v1, v0, 0xff

    return v1
.end method

.method protected static getWapString(Ljava/io/ByteArrayInputStream;I)[B
    .registers 5

    nop

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    nop

    :goto_b
    const/4 v2, -0x1

    if-eq v2, v1, :cond_2b

    if-eqz v1, :cond_2b

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1d

    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->isTokenCharacter(I)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_26

    :cond_1d
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->isText(I)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_26
    :goto_26
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    goto :goto_b

    :cond_2b
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_36

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    :cond_36
    const/4 v2, 0x0

    return-object v2
.end method

.method protected static isText(I)Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x20

    if-lt p0, v1, :cond_9

    const/16 v1, 0x7e

    if-le p0, v1, :cond_11

    :cond_9
    const/16 v1, 0x80

    if-lt p0, v1, :cond_12

    const/16 v1, 0xff

    if-gt p0, v1, :cond_12

    :cond_11
    return v0

    :cond_12
    packed-switch p0, :pswitch_data_18

    :pswitch_15  #0xb, 0xc
    const/4 v0, 0x0

    return v0

    :pswitch_17  #0x9, 0xa, 0xd
    return v0

    :pswitch_data_18
    .packed-switch 0x9
        :pswitch_17  #00000009
        :pswitch_17  #0000000a
        :pswitch_15  #0000000b
        :pswitch_15  #0000000c
        :pswitch_17  #0000000d
    .end packed-switch
.end method

.method protected static isTokenCharacter(I)Z
    .registers 3

    const/4 v0, 0x0

    const/16 v1, 0x21

    if-lt p0, v1, :cond_10

    const/16 v1, 0x7e

    if-le p0, v1, :cond_a

    goto :goto_10

    :cond_a
    sparse-switch p0, :sswitch_data_12

    const/4 v0, 0x1

    return v0

    :sswitch_f
    return v0

    :cond_10
    :goto_10
    return v0

    nop

    :sswitch_data_12
    .sparse-switch
        0x22 -> :sswitch_f
        0x28 -> :sswitch_f
        0x29 -> :sswitch_f
        0x2c -> :sswitch_f
        0x2f -> :sswitch_f
        0x3a -> :sswitch_f
        0x3b -> :sswitch_f
        0x3c -> :sswitch_f
        0x3d -> :sswitch_f
        0x3e -> :sswitch_f
        0x3f -> :sswitch_f
        0x40 -> :sswitch_f
        0x5b -> :sswitch_f
        0x5c -> :sswitch_f
        0x5d -> :sswitch_f
        0x7b -> :sswitch_f
        0x7d -> :sswitch_f
    .end sparse-switch
.end method

.method private static log(Ljava/lang/String;)V
    .registers 1

    return-void
.end method

.method protected static parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    nop

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    nop

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    and-int/lit16 v3, v2, 0xff

    const/16 v4, 0x20

    const/16 v5, 0x7f

    const/4 v6, 0x0

    if-ge v3, v4, :cond_af

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v7

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v8

    const-string v9, "PduParser"

    if-le v7, v8, :cond_4d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parseContentType: Invalid length "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " when available bytes are "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1

    :cond_4d
    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    nop

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    and-int/lit16 v1, v2, 0xff

    if-lt v1, v4, :cond_63

    if-gt v1, v5, :cond_63

    invoke-static {p0, v6}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    goto :goto_7f

    :cond_63
    if-le v1, v5, :cond_a1

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v4

    sget-object v5, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_77

    sget-object v5, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_7e

    :cond_77
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    invoke-static {p0, v6}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    :goto_7e
    nop

    :goto_7f
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v4

    sub-int v5, v8, v4

    sub-int v5, v7, v5

    if-lez v5, :cond_90

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {p0, p1, v10}, Lcom/google/android/mms/pdu/PduParser;->parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V

    :cond_90
    if-gez v5, :cond_a0

    const-string v10, "Corrupt MMS message"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v9, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v6, v9, v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    return-object v6

    :cond_a0
    goto :goto_c2

    :cond_a1
    const-string v4, "Corrupt content-type"

    invoke-static {v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    return-object v4

    :cond_af
    if-gt v3, v5, :cond_b6

    invoke-static {p0, v6}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    goto :goto_c2

    :cond_b6
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v4

    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_c2
    return-object v0
.end method

.method protected static parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    nop

    nop

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_b
    const-string v3, "Corrupt Content-Type"

    const-string v4, "PduParser"

    if-lez v2, :cond_110

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    nop

    add-int/lit8 v2, v2, -0x1

    const/16 v6, 0x7f

    const/4 v7, 0x1

    const/4 v8, 0x0

    sparse-switch v5, :sswitch_data_116

    invoke-static {p0, v2}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v7, v6, :cond_10d

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10e

    :sswitch_2b
    invoke-static {p0, v8}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    if-eqz v3, :cond_3c

    if-eqz p1, :cond_3c

    const/16 v4, 0x99

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3c
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v6, v0, v1

    sub-int/2addr v4, v6

    move v2, v4

    goto/16 :goto_10e

    :sswitch_4a
    invoke-static {p0, v8}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    if-eqz v3, :cond_5b

    if-eqz p1, :cond_5b

    const/16 v4, 0x97

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5b
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v6, v0, v1

    sub-int/2addr v4, v6

    move v2, v4

    goto/16 :goto_10e

    :sswitch_69
    invoke-virtual {p0, v7}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v3

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    const/16 v4, 0x83

    if-le v3, v6, :cond_90

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v6

    sget-object v7, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v7, v7

    if-ge v6, v7, :cond_8f

    sget-object v7, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8f
    goto :goto_9f

    :cond_90
    invoke-static {p0, v8}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    if-eqz v6, :cond_9f

    if-eqz p1, :cond_9f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9f
    :goto_9f
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v6, v0, v1

    sub-int/2addr v4, v6

    move v2, v4

    goto :goto_10e

    :sswitch_ac
    invoke-virtual {p0, v7}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v3

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    const/16 v7, 0x20

    const/16 v9, 0x81

    if-le v3, v7, :cond_be

    if-lt v3, v6, :cond_c0

    :cond_be
    if-nez v3, :cond_ee

    :cond_c0
    invoke-static {p0, v8}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    :try_start_c4
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    invoke-static {v7}, Lcom/google/android/mms/pdu/CharacterSets;->getMibEnumValue(Ljava/lang/String;)I

    move-result v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c4 .. :try_end_d8} :catch_da

    nop

    goto :goto_ed

    :catch_da
    move-exception v7

    invoke-static {v6}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p1, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_ed
    goto :goto_100

    :cond_ee
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v6

    long-to-int v4, v6

    if-eqz p1, :cond_100

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_100
    :goto_100
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v6, v0, v1

    sub-int/2addr v4, v6

    move v2, v4

    goto :goto_10e

    :cond_10d
    const/4 v2, 0x0

    :goto_10e
    goto/16 :goto_b

    :cond_110
    if-eqz v2, :cond_115

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_115
    return-void

    :sswitch_data_116
    .sparse-switch
        0x81 -> :sswitch_ac
        0x83 -> :sswitch_69
        0x85 -> :sswitch_4a
        0x89 -> :sswitch_69
        0x8a -> :sswitch_2b
        0x97 -> :sswitch_4a
        0x99 -> :sswitch_2b
    .end sparse-switch
.end method

.method protected static parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .registers 8

    nop

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    nop

    and-int/lit16 v3, v2, 0xff

    if-nez v3, :cond_18

    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    const-string v5, ""

    invoke-direct {v4, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    return-object v4

    :cond_18
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    const/16 v4, 0x20

    if-ge v3, v4, :cond_26

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    :cond_26
    const/4 v4, 0x0

    invoke-static {p0, v4}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v4

    if-eqz v1, :cond_34

    :try_start_2d
    new-instance v5, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v5, v1, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    move-object v0, v5

    goto :goto_3a

    :cond_34
    new-instance v5, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v5, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_39} :catch_3c

    move-object v0, v5

    :goto_3a
    nop

    return-object v0

    :catch_3c
    move-exception v5

    const/4 v6, 0x0

    return-object v6
.end method

.method protected static parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    .registers 4

    nop

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    nop

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    const/16 v1, 0x7f

    if-le v0, v1, :cond_17

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    int-to-long v1, v1

    return-wide v1

    :cond_17
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v1

    return-wide v1
.end method

.method protected static parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    .registers 9

    nop

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    nop

    and-int/lit16 v1, v0, 0xff

    const/16 v2, 0x8

    if-gt v1, v2, :cond_1f

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    :goto_f
    if-ge v5, v1, :cond_1e

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    nop

    shl-long/2addr v3, v2

    and-int/lit16 v6, v0, 0xff

    int-to-long v6, v6

    add-long/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_1e
    return-wide v3

    :cond_1f
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Octet count greater than 8 and I can\'t represent that!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected static parseShortInteger(Ljava/io/ByteArrayInputStream;)I
    .registers 3

    nop

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    nop

    and-int/lit8 v1, v0, 0x7f

    return v1
.end method

.method protected static parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I
    .registers 5

    nop

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_a

    return v1

    :cond_a
    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_1a

    shl-int/lit8 v0, v0, 0x7

    and-int/lit8 v3, v1, 0x7f

    or-int/2addr v0, v3

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    if-ne v1, v2, :cond_a

    return v1

    :cond_1a
    shl-int/lit8 v0, v0, 0x7

    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    return v0
.end method

.method protected static parseValueLength(Ljava/io/ByteArrayInputStream;)I
    .registers 5

    nop

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    nop

    and-int/lit16 v1, v0, 0xff

    const/16 v2, 0x1e

    if-gt v1, v2, :cond_d

    return v1

    :cond_d
    const/16 v2, 0x1f

    if-ne v1, v2, :cond_16

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v2

    return v2

    :cond_16
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Value length > LENGTH_QUOTE!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected static parseWapString(Ljava/io/ByteArrayInputStream;I)[B
    .registers 5

    nop

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    nop

    if-ne v0, p1, :cond_14

    const/16 v2, 0x22

    if-ne v2, v1, :cond_14

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    goto :goto_21

    :cond_14
    if-nez p1, :cond_1e

    const/16 v2, 0x7f

    if-ne v2, v1, :cond_1e

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    goto :goto_21

    :cond_1e
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    :goto_21
    invoke-static {p0, p1}, Lcom/google/android/mms/pdu/PduParser;->getWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    return-object v0
.end method

.method protected static skipWapValue(Ljava/io/ByteArrayInputStream;I)I
    .registers 5

    nop

    new-array v0, p1, [B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v1

    if-ge v1, p1, :cond_c

    const/4 v2, -0x1

    return v2

    :cond_c
    return v1
.end method


# virtual methods
.method public parse()Lcom/google/android/mms/pdu/GenericPdu;
    .registers 8

    iget-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    if-nez v0, :cond_f

    return-object v1

    :cond_f
    const/16 v2, 0x8c

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduParser;->checkMandatoryHeader(Lcom/google/android/mms/pdu/PduHeaders;)Z

    move-result v2

    if-nez v2, :cond_23

    const-string v2, "check mandatory headers failed!"

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v1

    :cond_23
    const/16 v2, 0x80

    if-eq v2, v0, :cond_2b

    const/16 v2, 0x84

    if-ne v2, v0, :cond_36

    :cond_2b
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    if-nez v2, :cond_36

    return-object v1

    :cond_36
    packed-switch v0, :pswitch_data_ca

    const-string v2, "Parser doesn\'t support this message type in this version!"

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v1

    :pswitch_3f  #0x88
    new-instance v1, Lcom/google/android/mms/pdu/ReadOrigInd;

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v1, v2}, Lcom/google/android/mms/pdu/ReadOrigInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    return-object v1

    :pswitch_47  #0x87
    new-instance v1, Lcom/google/android/mms/pdu/ReadRecInd;

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v1, v2}, Lcom/google/android/mms/pdu/ReadRecInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    return-object v1

    :pswitch_4f  #0x86
    new-instance v1, Lcom/google/android/mms/pdu/DeliveryInd;

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v1, v2}, Lcom/google/android/mms/pdu/DeliveryInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    return-object v1

    :pswitch_57  #0x85
    new-instance v1, Lcom/google/android/mms/pdu/AcknowledgeInd;

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v1, v2}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    return-object v1

    :pswitch_5f  #0x84
    new-instance v2, Lcom/google/android/mms/pdu/RetrieveConf;

    iget-object v3, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    iget-object v4, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v2, v3, v4}, Lcom/google/android/mms/pdu/RetrieveConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/RetrieveConf;->getContentType()[B

    move-result-object v3

    if-nez v3, :cond_6f

    return-object v1

    :cond_6f
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    const-string v5, "application/vnd.wap.multipart.mixed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a6

    const-string v5, "application/vnd.wap.multipart.related"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a6

    const-string v5, "application/vnd.wap.multipart.alternative"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8d

    goto :goto_a6

    :cond_8d
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a5

    iget-object v1, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    iget-object v6, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduBody;->removeAll()V

    iget-object v6, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    invoke-virtual {v6, v5, v1}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    return-object v2

    :cond_a5
    return-object v1

    :cond_a6
    :goto_a6
    return-object v2

    :pswitch_a7  #0x83
    new-instance v1, Lcom/google/android/mms/pdu/NotifyRespInd;

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v1, v2}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    return-object v1

    :pswitch_af  #0x82
    new-instance v1, Lcom/google/android/mms/pdu/NotificationInd;

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v1, v2}, Lcom/google/android/mms/pdu/NotificationInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    return-object v1

    :pswitch_b7  #0x81
    new-instance v1, Lcom/google/android/mms/pdu/SendConf;

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v1, v2}, Lcom/google/android/mms/pdu/SendConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    return-object v1

    :pswitch_bf  #0x80
    new-instance v1, Lcom/google/android/mms/pdu/SendReq;

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    iget-object v3, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v1, v2, v3}, Lcom/google/android/mms/pdu/SendReq;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    return-object v1

    nop

    :pswitch_data_ca
    .packed-switch 0x80
        :pswitch_bf  #00000080
        :pswitch_b7  #00000081
        :pswitch_af  #00000082
        :pswitch_a7  #00000083
        :pswitch_5f  #00000084
        :pswitch_57  #00000085
        :pswitch_4f  #00000086
        :pswitch_47  #00000087
        :pswitch_3f  #00000088
    .end packed-switch
.end method

.method protected parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;
    .registers 19

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_6

    return-object v2

    :cond_6
    const/4 v0, 0x1

    new-instance v3, Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v3}, Lcom/google/android/mms/pdu/PduHeaders;-><init>()V

    move v4, v0

    :goto_d
    if-eqz v4, :cond_468

    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    if-lez v0, :cond_468

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v5

    const/16 v6, 0x20

    const/4 v7, 0x0

    if-lt v5, v6, :cond_2e

    const/16 v6, 0x7f

    if-gt v5, v6, :cond_2e

    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    invoke-static {v1, v7}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    goto :goto_d

    :cond_2e
    const/16 v6, 0x81

    const-string v8, "/"

    const-string v10, " is not Integer-Value"

    const-string v11, "is not Octet header field!"

    const-string v12, " into the header filed: "

    const-string v13, "Set invalid Octet value: "

    const/16 v14, 0x80

    const-string v15, "is not Text-String header field!"

    const-string v7, "is not Encoded-String-Value header field!"

    const-string v9, "is not Long-Integer header field!"

    const-string/jumbo v16, "null pointer error!"

    packed-switch v5, :pswitch_data_46a

    :pswitch_48  #0xa8, 0xae, 0xb0
    const-string v0, "Unknown header"

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_466

    :pswitch_4f  #0xb2
    invoke-static {v1, v2}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    goto/16 :goto_466

    :pswitch_54  #0xad, 0xaf, 0xb3
    :try_start_54
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7, v5}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_5b
    .catch Ljava/lang/RuntimeException; {:try_start_54 .. :try_end_5b} :catch_5d

    goto/16 :goto_466

    :catch_5d
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :pswitch_73  #0xaa, 0xac
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    :try_start_79
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_7c
    .catch Ljava/lang/RuntimeException; {:try_start_79 .. :try_end_7c} :catch_7e

    goto/16 :goto_466

    :catch_7e
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :pswitch_96  #0xa4
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    goto/16 :goto_466

    :pswitch_a1  #0xa1
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    :try_start_a4
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_a7
    .catch Ljava/lang/RuntimeException; {:try_start_a4 .. :try_end_a7} :catch_c9

    nop

    :try_start_a8
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v6

    const/16 v0, 0xa1

    invoke-virtual {v3, v6, v7, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_b1
    .catch Ljava/lang/RuntimeException; {:try_start_a8 .. :try_end_b1} :catch_b3

    goto/16 :goto_466

    :catch_b3
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :catch_c9
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :pswitch_e1  #0xa0
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    :try_start_e4
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_e7
    .catch Ljava/lang/RuntimeException; {:try_start_e4 .. :try_end_e7} :catch_115

    nop

    nop

    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v6

    if-eqz v6, :cond_466

    const/16 v0, 0xa0

    :try_start_f1
    invoke-virtual {v3, v6, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_f4
    .catch Ljava/lang/NullPointerException; {:try_start_f1 .. :try_end_f4} :catch_10e
    .catch Ljava/lang/RuntimeException; {:try_start_f1 .. :try_end_f4} :catch_f6

    :goto_f4
    goto/16 :goto_466

    :catch_f6
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :catch_10e
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    invoke-static/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_f4

    :catch_115
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :pswitch_12d  #0x93, 0x96, 0x9a, 0xa6, 0xb5, 0xb6
    nop

    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v6

    if-eqz v6, :cond_466

    :try_start_134
    invoke-virtual {v3, v6, v5}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_137
    .catch Ljava/lang/NullPointerException; {:try_start_134 .. :try_end_137} :catch_151
    .catch Ljava/lang/RuntimeException; {:try_start_134 .. :try_end_137} :catch_139

    :goto_137
    goto/16 :goto_466

    :catch_139
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :catch_151
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    invoke-static/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_137

    :pswitch_158  #0x8d
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v6

    const/16 v0, 0x8d

    :try_start_15e
    invoke-virtual {v3, v6, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_161
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_15e .. :try_end_161} :catch_17b
    .catch Ljava/lang/RuntimeException; {:try_start_15e .. :try_end_161} :catch_163

    goto/16 :goto_466

    :catch_163
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :catch_17b
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :pswitch_19b  #0x8c
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v6

    packed-switch v6, :pswitch_data_4ec

    :try_start_1a2
    invoke-virtual {v3, v6, v5}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_1a5
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_1a2 .. :try_end_1a5} :catch_1c1
    .catch Ljava/lang/RuntimeException; {:try_start_1a2 .. :try_end_1a5} :catch_1a9

    goto :goto_1a7

    :pswitch_1a6  #0x89, 0x8a, 0x8b, 0x8c, 0x8d, 0x8e, 0x8f, 0x90, 0x91, 0x92, 0x93, 0x94, 0x95, 0x96, 0x97
    return-object v2

    :goto_1a7
    goto/16 :goto_466

    :catch_1a9
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :catch_1c1
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :pswitch_1e1  #0x8a
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v7

    const/16 v0, 0x8a

    if-lt v7, v14, :cond_23f

    if-ne v14, v7, :cond_1fd

    :try_start_1ee
    const-string/jumbo v6, "personal"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    goto :goto_23d

    :catch_1f9
    move-exception v0

    goto :goto_225

    :catch_1fb
    move-exception v0

    goto :goto_23a

    :cond_1fd
    if-ne v6, v7, :cond_209

    const-string v6, "advertisement"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    goto :goto_23d

    :cond_209
    const/16 v6, 0x82

    if-ne v6, v7, :cond_217

    const-string v6, "informational"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    goto :goto_23d

    :cond_217
    const/16 v6, 0x83

    if-ne v6, v7, :cond_23d

    const-string v6, "auto"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_224
    .catch Ljava/lang/NullPointerException; {:try_start_1ee .. :try_end_224} :catch_1fb
    .catch Ljava/lang/RuntimeException; {:try_start_1ee .. :try_end_224} :catch_1f9

    goto :goto_23d

    :goto_225
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :goto_23a
    invoke-static/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    :cond_23d
    :goto_23d
    goto/16 :goto_466

    :cond_23f
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    const/4 v6, 0x0

    invoke-static {v1, v6}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    if-eqz v6, :cond_26c

    :try_start_249
    invoke-virtual {v3, v6, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_24c
    .catch Ljava/lang/NullPointerException; {:try_start_249 .. :try_end_24c} :catch_265
    .catch Ljava/lang/RuntimeException; {:try_start_249 .. :try_end_24c} :catch_24d

    :goto_24c
    goto :goto_26c

    :catch_24d
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :catch_265
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    invoke-static/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_24c

    :cond_26c
    :goto_26c
    goto/16 :goto_466

    :pswitch_26e  #0x89
    const/4 v6, 0x0

    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v9

    if-ne v14, v9, :cond_2a5

    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v6

    if-eqz v6, :cond_2b2

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v10

    if-eqz v10, :cond_2a4

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v10}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_296

    const/4 v11, 0x0

    invoke-virtual {v0, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    goto :goto_297

    :cond_296
    move-object v11, v0

    :goto_297
    :try_start_297
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_29e
    .catch Ljava/lang/NullPointerException; {:try_start_297 .. :try_end_29e} :catch_29f

    goto :goto_2a4

    :catch_29f
    move-exception v0

    invoke-static/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :cond_2a4
    :goto_2a4
    goto :goto_2b2

    :cond_2a5
    :try_start_2a5
    new-instance v0, Lcom/google/android/mms/pdu/EncodedStringValue;

    const-string v8, "insert-address-token"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_2b0
    .catch Ljava/lang/NullPointerException; {:try_start_2a5 .. :try_end_2b0} :catch_2d8

    move-object v6, v0

    nop

    :cond_2b2
    :goto_2b2
    const/16 v0, 0x89

    :try_start_2b4
    invoke-virtual {v3, v6, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_2b7
    .catch Ljava/lang/NullPointerException; {:try_start_2b4 .. :try_end_2b7} :catch_2d1
    .catch Ljava/lang/RuntimeException; {:try_start_2b4 .. :try_end_2b7} :catch_2b9

    :goto_2b7
    goto/16 :goto_466

    :catch_2b9
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :catch_2d1
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    invoke-static/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_2b7

    :catch_2d8
    move-exception v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :pswitch_2ee  #0x87, 0x88, 0x9d
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v7

    :try_start_2f5
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v10
    :try_end_2f9
    .catch Ljava/lang/RuntimeException; {:try_start_2f5 .. :try_end_2f9} :catch_321

    nop

    if-ne v6, v7, :cond_304

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    add-long/2addr v10, v12

    :cond_304
    :try_start_304
    invoke-virtual {v3, v10, v11, v5}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_307
    .catch Ljava/lang/RuntimeException; {:try_start_304 .. :try_end_307} :catch_309

    goto/16 :goto_466

    :catch_309
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :catch_321
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :pswitch_339  #0x86, 0x8f, 0x90, 0x91, 0x92, 0x94, 0x95, 0x99, 0x9b, 0x9c, 0xa2, 0xa3, 0xa5, 0xa7, 0xa9, 0xab, 0xb1, 0xb4, 0xba, 0xbb, 0xbc, 0xbf
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v6

    :try_start_33d
    invoke-virtual {v3, v6, v5}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_340
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_33d .. :try_end_340} :catch_35a
    .catch Ljava/lang/RuntimeException; {:try_start_33d .. :try_end_340} :catch_342

    goto/16 :goto_466

    :catch_342
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :catch_35a
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :pswitch_37a  #0x85, 0x8e, 0x9f
    :try_start_37a
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7, v5}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_381
    .catch Ljava/lang/RuntimeException; {:try_start_37a .. :try_end_381} :catch_383

    goto/16 :goto_466

    :catch_383
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :pswitch_399  #0x84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v6, v0

    nop

    invoke-static {v1, v6}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v7

    if-eqz v7, :cond_3cb

    const/16 v0, 0x84

    :try_start_3a8
    invoke-virtual {v3, v7, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_3ab
    .catch Ljava/lang/NullPointerException; {:try_start_3a8 .. :try_end_3ab} :catch_3c4
    .catch Ljava/lang/RuntimeException; {:try_start_3a8 .. :try_end_3ab} :catch_3ac

    :goto_3ab
    goto :goto_3cb

    :catch_3ac
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :catch_3c4
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    invoke-static/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_3ab

    :cond_3cb
    :goto_3cb
    const/16 v0, 0x99

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    sput-object v0, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    const/16 v8, 0x83

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    sput-object v0, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    const/4 v0, 0x0

    move v4, v0

    goto/16 :goto_466

    :pswitch_3eb  #0x83, 0x8b, 0x98, 0x9e, 0xb7, 0xb8, 0xb9, 0xbd, 0xbe
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    if-eqz v6, :cond_466

    :try_start_3f2
    invoke-virtual {v3, v6, v5}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_3f5
    .catch Ljava/lang/NullPointerException; {:try_start_3f2 .. :try_end_3f5} :catch_40f
    .catch Ljava/lang/RuntimeException; {:try_start_3f2 .. :try_end_3f5} :catch_3f7

    :goto_3f5
    goto/16 :goto_466

    :catch_3f7
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :catch_40f
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    invoke-static/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_3f5

    :pswitch_416  #0x81, 0x82, 0x97
    nop

    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v6

    if-eqz v6, :cond_466

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v9

    if-eqz v9, :cond_443

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v9}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_435

    const/4 v10, 0x0

    invoke-virtual {v0, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    goto :goto_436

    :cond_435
    move-object v10, v0

    :goto_436
    :try_start_436
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_43d
    .catch Ljava/lang/NullPointerException; {:try_start_436 .. :try_end_43d} :catch_43e

    goto :goto_443

    :catch_43e
    move-exception v0

    invoke-static/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :cond_443
    :goto_443
    :try_start_443
    invoke-virtual {v3, v6, v5}, Lcom/google/android/mms/pdu/PduHeaders;->appendEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_446
    .catch Ljava/lang/NullPointerException; {:try_start_443 .. :try_end_446} :catch_45f
    .catch Ljava/lang/RuntimeException; {:try_start_443 .. :try_end_446} :catch_447

    :goto_446
    goto :goto_466

    :catch_447
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    return-object v2

    :catch_45f
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    invoke-static/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_446

    :cond_466
    :goto_466
    goto/16 :goto_d

    :cond_468
    return-object v3

    nop

    :pswitch_data_46a
    .packed-switch 0x81
        :pswitch_416  #00000081
        :pswitch_416  #00000082
        :pswitch_3eb  #00000083
        :pswitch_399  #00000084
        :pswitch_37a  #00000085
        :pswitch_339  #00000086
        :pswitch_2ee  #00000087
        :pswitch_2ee  #00000088
        :pswitch_26e  #00000089
        :pswitch_1e1  #0000008a
        :pswitch_3eb  #0000008b
        :pswitch_19b  #0000008c
        :pswitch_158  #0000008d
        :pswitch_37a  #0000008e
        :pswitch_339  #0000008f
        :pswitch_339  #00000090
        :pswitch_339  #00000091
        :pswitch_339  #00000092
        :pswitch_12d  #00000093
        :pswitch_339  #00000094
        :pswitch_339  #00000095
        :pswitch_12d  #00000096
        :pswitch_416  #00000097
        :pswitch_3eb  #00000098
        :pswitch_339  #00000099
        :pswitch_12d  #0000009a
        :pswitch_339  #0000009b
        :pswitch_339  #0000009c
        :pswitch_2ee  #0000009d
        :pswitch_3eb  #0000009e
        :pswitch_37a  #0000009f
        :pswitch_e1  #000000a0
        :pswitch_a1  #000000a1
        :pswitch_339  #000000a2
        :pswitch_339  #000000a3
        :pswitch_96  #000000a4
        :pswitch_339  #000000a5
        :pswitch_12d  #000000a6
        :pswitch_339  #000000a7
        :pswitch_48  #000000a8
        :pswitch_339  #000000a9
        :pswitch_73  #000000aa
        :pswitch_339  #000000ab
        :pswitch_73  #000000ac
        :pswitch_54  #000000ad
        :pswitch_48  #000000ae
        :pswitch_54  #000000af
        :pswitch_48  #000000b0
        :pswitch_339  #000000b1
        :pswitch_4f  #000000b2
        :pswitch_54  #000000b3
        :pswitch_339  #000000b4
        :pswitch_12d  #000000b5
        :pswitch_12d  #000000b6
        :pswitch_3eb  #000000b7
        :pswitch_3eb  #000000b8
        :pswitch_3eb  #000000b9
        :pswitch_339  #000000ba
        :pswitch_339  #000000bb
        :pswitch_339  #000000bc
        :pswitch_3eb  #000000bd
        :pswitch_3eb  #000000be
        :pswitch_339  #000000bf
    .end packed-switch

    :pswitch_data_4ec
    .packed-switch 0x89
        :pswitch_1a6  #00000089
        :pswitch_1a6  #0000008a
        :pswitch_1a6  #0000008b
        :pswitch_1a6  #0000008c
        :pswitch_1a6  #0000008d
        :pswitch_1a6  #0000008e
        :pswitch_1a6  #0000008f
        :pswitch_1a6  #00000090
        :pswitch_1a6  #00000091
        :pswitch_1a6  #00000092
        :pswitch_1a6  #00000093
        :pswitch_1a6  #00000094
        :pswitch_1a6  #00000095
        :pswitch_1a6  #00000096
        :pswitch_1a6  #00000097
    .end packed-switch
.end method

.method protected parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google/android/mms/pdu/PduPart;I)Z
    .registers 15

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    const/4 v1, 0x0

    move v2, p3

    :goto_9
    const-string v3, "Corrupt Part headers"

    const-string v4, "PduParser"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v2, :cond_f2

    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v7

    nop

    add-int/lit8 v2, v2, -0x1

    const/16 v8, 0x7f

    const/4 v9, -0x1

    if-le v7, v8, :cond_be

    sparse-switch v7, :sswitch_data_fa

    invoke-static {p1, v2}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v5

    if-ne v9, v5, :cond_bc

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :sswitch_2a
    invoke-static {p1, v5}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    if-eqz v3, :cond_33

    invoke-virtual {p2, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    :cond_33
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    sub-int v4, v0, v1

    sub-int v2, p3, v4

    goto/16 :goto_f0

    :sswitch_3d
    iget-boolean v3, p0, Lcom/google/android/mms/pdu/PduParser;->mParseContentDisposition:Z

    if-eqz v3, :cond_f0

    invoke-static {p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v3

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    const/16 v9, 0x80

    if-ne v8, v9, :cond_5b

    sget-object v9, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_FROM_DATA:[B

    invoke-virtual {p2, v9}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_79

    :cond_5b
    const/16 v9, 0x81

    if-ne v8, v9, :cond_65

    sget-object v9, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_ATTACHMENT:[B

    invoke-virtual {p2, v9}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_79

    :cond_65
    const/16 v9, 0x82

    if-ne v8, v9, :cond_6f

    sget-object v9, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_INLINE:[B

    invoke-virtual {p2, v9}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_79

    :cond_6f
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->reset()V

    invoke-static {p1, v6}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v9

    invoke-virtual {p2, v9}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    :goto_79
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v5

    sub-int v9, v4, v5

    if-ge v9, v3, :cond_a1

    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    const/16 v9, 0x98

    if-ne v8, v9, :cond_90

    invoke-static {p1, v6}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v9

    invoke-virtual {p2, v9}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    :cond_90
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v5

    sub-int v9, v4, v5

    if-ge v9, v3, :cond_a1

    sub-int v9, v4, v5

    sub-int v9, v3, v9

    new-array v10, v9, [B

    invoke-virtual {p1, v10, v6, v9}, Ljava/io/ByteArrayInputStream;->read([BII)I

    :cond_a1
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    sub-int v6, v0, v1

    sub-int v2, p3, v6

    goto :goto_f0

    :sswitch_aa
    invoke-static {p1, v6}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    if-eqz v3, :cond_b3

    invoke-virtual {p2, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    :cond_b3
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    sub-int v4, v0, v1

    sub-int v2, p3, v4

    goto :goto_f0

    :cond_bc
    const/4 v2, 0x0

    goto :goto_f0

    :cond_be
    const/16 v10, 0x20

    if-lt v7, v10, :cond_e5

    if-gt v7, v8, :cond_e5

    invoke-static {p1, v6}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    invoke-static {p1, v6}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v4

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([B)V

    const-string v8, "Content-Transfer-Encoding"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-ne v5, v6, :cond_dc

    invoke-virtual {p2, v4}, Lcom/google/android/mms/pdu/PduPart;->setContentTransferEncoding([B)V

    :cond_dc
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    sub-int v5, v0, v1

    sub-int v2, p3, v5

    goto :goto_f0

    :cond_e5
    invoke-static {p1, v2}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v5

    if-ne v9, v5, :cond_ef

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_ef
    const/4 v2, 0x0

    :cond_f0
    :goto_f0
    goto/16 :goto_9

    :cond_f2
    if-eqz v2, :cond_f8

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_f8
    return v5

    nop

    :sswitch_data_fa
    .sparse-switch
        0x8e -> :sswitch_aa
        0xae -> :sswitch_3d
        0xc0 -> :sswitch_2a
        0xc5 -> :sswitch_3d
    .end sparse-switch
.end method

.method protected parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_8

    return-object v2

    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v3

    new-instance v4, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v4}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    const/4 v5, 0x0

    :goto_12
    if-ge v5, v3, :cond_126

    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v6

    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v7

    new-instance v8, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v8}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v9

    if-gtz v9, :cond_28

    return-object v2

    :cond_28
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, v10}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v11

    const/4 v12, 0x0

    if-eqz v11, :cond_38

    invoke-virtual {v8, v11}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    goto :goto_43

    :cond_38
    sget-object v13, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v13, v13, v12

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    :goto_43
    const/16 v13, 0x97

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    if-eqz v13, :cond_54

    invoke-virtual {v8, v13}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    :cond_54
    const/16 v14, 0x81

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    if-eqz v14, :cond_69

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v8, v15}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    :cond_69
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v15

    sub-int v16, v9, v15

    sub-int v12, v6, v16

    if-lez v12, :cond_7a

    invoke-virtual {v0, v1, v8, v12}, Lcom/google/android/mms/pdu/PduParser;->parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google/android/mms/pdu/PduPart;I)Z

    move-result v16

    if-nez v16, :cond_7d

    return-object v2

    :cond_7a
    if-gez v12, :cond_7d

    return-object v2

    :cond_7d
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v16

    if-nez v16, :cond_a5

    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v16

    if-nez v16, :cond_a5

    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v16

    if-nez v16, :cond_a5

    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v16

    if-nez v16, :cond_a5

    nop

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    :cond_a5
    if-lez v7, :cond_10a

    new-array v2, v7, [B

    move/from16 v16, v3

    new-instance v3, Ljava/lang/String;

    move/from16 v18, v6

    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>([B)V

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6, v7}, Ljava/io/ByteArrayInputStream;->read([BII)I

    const-string v6, "application/vnd.wap.multipart.alternative"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d2

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v6}, Lcom/google/android/mms/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v6

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v8

    const/4 v0, 0x0

    goto :goto_10f

    :cond_d2
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduPart;->getContentTransferEncoding()[B

    move-result-object v0

    if-eqz v0, :cond_fa

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v19, v0

    const-string v0, "base64"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ec

    invoke-static {v2}, Lcom/google/android/mms/pdu/Base64;->decodeBase64([B)[B

    move-result-object v2

    goto :goto_fc

    :cond_ec
    const-string/jumbo v0, "quoted-printable"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fc

    invoke-static {v2}, Lcom/google/android/mms/pdu/QuotedPrintable;->decodeQuotedPrintable([B)[B

    move-result-object v2

    goto :goto_fc

    :cond_fa
    move-object/from16 v19, v0

    :cond_fc
    :goto_fc
    if-nez v2, :cond_105

    const-string v0, "Decode part data error!"

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_105
    const/4 v0, 0x0

    invoke-virtual {v8, v2}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    goto :goto_10f

    :cond_10a
    move/from16 v16, v3

    move/from16 v18, v6

    const/4 v0, 0x0

    :goto_10f
    invoke-static {v8}, Lcom/google/android/mms/pdu/PduParser;->checkPartPosition(Lcom/google/android/mms/pdu/PduPart;)I

    move-result v2

    if-nez v2, :cond_11a

    const/4 v2, 0x0

    invoke-virtual {v4, v2, v8}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    goto :goto_11d

    :cond_11a
    invoke-virtual {v4, v8}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    :goto_11d
    add-int/lit8 v5, v5, 0x1

    move-object v2, v0

    move/from16 v3, v16

    move-object/from16 v0, p0

    goto/16 :goto_12

    :cond_126
    return-object v4
.end method
