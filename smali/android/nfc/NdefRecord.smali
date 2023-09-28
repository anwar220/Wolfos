# classes2.dex

.class public final Landroid/nfc/NdefRecord;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/nfc/NdefRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_BYTE_ARRAY:[B

.field private static final FLAG_CF:B = 0x20t

.field private static final FLAG_IL:B = 0x8t

.field private static final FLAG_MB:B = -0x80t

.field private static final FLAG_ME:B = 0x40t

.field private static final FLAG_SR:B = 0x10t

.field private static final MAX_PAYLOAD_SIZE:I = 0xa00000

.field public static final RTD_ALTERNATIVE_CARRIER:[B

.field public static final RTD_ANDROID_APP:[B

.field public static final RTD_HANDOVER_CARRIER:[B

.field public static final RTD_HANDOVER_REQUEST:[B

.field public static final RTD_HANDOVER_SELECT:[B

.field public static final RTD_SMART_POSTER:[B

.field public static final RTD_TEXT:[B

.field public static final RTD_URI:[B

.field public static final TNF_ABSOLUTE_URI:S = 0x3s

.field public static final TNF_EMPTY:S = 0x0s

.field public static final TNF_EXTERNAL_TYPE:S = 0x4s

.field public static final TNF_MIME_MEDIA:S = 0x2s

.field public static final TNF_RESERVED:S = 0x7s

.field public static final TNF_UNCHANGED:S = 0x6s

.field public static final TNF_UNKNOWN:S = 0x5s

.field public static final TNF_WELL_KNOWN:S = 0x1s

.field private static final URI_PREFIX_MAP:[Ljava/lang/String;


# instance fields
.field private final mId:[B

.field private final mPayload:[B

.field private final mTnf:S

.field private final mType:[B


# direct methods
.method static constructor <clinit>()V
    .registers 40

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/16 v2, 0x54

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    sput-object v1, Landroid/nfc/NdefRecord;->RTD_TEXT:[B

    new-array v0, v0, [B

    const/16 v1, 0x55

    aput-byte v1, v0, v3

    sput-object v0, Landroid/nfc/NdefRecord;->RTD_URI:[B

    const/4 v0, 0x2

    new-array v1, v0, [B

    fill-array-data v1, :array_98

    sput-object v1, Landroid/nfc/NdefRecord;->RTD_SMART_POSTER:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_9e

    sput-object v1, Landroid/nfc/NdefRecord;->RTD_ALTERNATIVE_CARRIER:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_a4

    sput-object v1, Landroid/nfc/NdefRecord;->RTD_HANDOVER_CARRIER:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_aa

    sput-object v1, Landroid/nfc/NdefRecord;->RTD_HANDOVER_REQUEST:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_b0

    sput-object v0, Landroid/nfc/NdefRecord;->RTD_HANDOVER_SELECT:[B

    const-string v0, "android.com:pkg"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Landroid/nfc/NdefRecord;->RTD_ANDROID_APP:[B

    const-string v4, ""

    const-string v5, "http://www."

    const-string v6, "https://www."

    const-string v7, "http://"

    const-string v8, "https://"

    const-string v9, "tel:"

    const-string v10, "mailto:"

    const-string v11, "ftp://anonymous:anonymous@"

    const-string v12, "ftp://ftp."

    const-string v13, "ftps://"

    const-string v14, "sftp://"

    const-string v15, "smb://"

    const-string v16, "nfs://"

    const-string v17, "ftp://"

    const-string v18, "dav://"

    const-string v19, "news:"

    const-string v20, "telnet://"

    const-string v21, "imap:"

    const-string v22, "rtsp://"

    const-string v23, "urn:"

    const-string v24, "pop:"

    const-string v25, "sip:"

    const-string v26, "sips:"

    const-string v27, "tftp:"

    const-string v28, "btspp://"

    const-string v29, "btl2cap://"

    const-string v30, "btgoep://"

    const-string v31, "tcpobex://"

    const-string v32, "irdaobex://"

    const-string v33, "file://"

    const-string v34, "urn:epc:id:"

    const-string v35, "urn:epc:tag:"

    const-string v36, "urn:epc:pat:"

    const-string v37, "urn:epc:raw:"

    const-string v38, "urn:epc:"

    const-string v39, "urn:nfc:"

    filled-new-array/range {v4 .. v39}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/nfc/NdefRecord;->URI_PREFIX_MAP:[Ljava/lang/String;

    new-array v0, v3, [B

    sput-object v0, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    new-instance v0, Landroid/nfc/NdefRecord$1;

    invoke-direct {v0}, Landroid/nfc/NdefRecord$1;-><init>()V

    sput-object v0, Landroid/nfc/NdefRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_98
    .array-data 1
        0x53t
        0x70t
    .end array-data

    nop

    :array_9e
    .array-data 1
        0x61t
        0x63t
    .end array-data

    nop

    :array_a4
    .array-data 1
        0x48t
        0x63t
    .end array-data

    nop

    :array_aa
    .array-data 1
        0x48t
        0x72t
    .end array-data

    nop

    :array_b0
    .array-data 1
        0x48t
        0x73t
    .end array-data
.end method

.method public constructor <init>(S[B[B[B)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_7

    sget-object p2, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    :cond_7
    if-nez p3, :cond_b

    sget-object p3, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    :cond_b
    if-nez p4, :cond_f

    sget-object p4, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    :cond_f
    invoke-static {p1, p2, p3, p4}, Landroid/nfc/NdefRecord;->validateTnf(S[B[B[B)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1e

    iput-short p1, p0, Landroid/nfc/NdefRecord;->mTnf:S

    iput-object p2, p0, Landroid/nfc/NdefRecord;->mType:[B

    iput-object p3, p0, Landroid/nfc/NdefRecord;->mId:[B

    iput-object p4, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    return-void

    :cond_1e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>([B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/nfc/FormatException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/nfc/NdefRecord;->parse(Ljava/nio/ByteBuffer;Z)[Landroid/nfc/NdefRecord;

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-gtz v2, :cond_2c

    const/4 v2, 0x0

    aget-object v3, v1, v2

    iget-short v3, v3, Landroid/nfc/NdefRecord;->mTnf:S

    iput-short v3, p0, Landroid/nfc/NdefRecord;->mTnf:S

    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/nfc/NdefRecord;->mType:[B

    iput-object v3, p0, Landroid/nfc/NdefRecord;->mType:[B

    aget-object v3, v1, v2

    iget-object v3, v3, Landroid/nfc/NdefRecord;->mId:[B

    iput-object v3, p0, Landroid/nfc/NdefRecord;->mId:[B

    aget-object v2, v1, v2

    iget-object v2, v2, Landroid/nfc/NdefRecord;->mPayload:[B

    iput-object v2, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    return-void

    :cond_2c
    new-instance v2, Landroid/nfc/FormatException;

    const-string v3, "data too long"

    invoke-direct {v2, v3}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static bytesToString([B)Ljava/lang/StringBuilder;
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_21

    aget-byte v4, p0, v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "%02X"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_21
    return-object v0
.end method

.method public static createApplicationRecord(Ljava/lang/String;)Landroid/nfc/NdefRecord;
    .registers 6

    if-eqz p0, :cond_20

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Landroid/nfc/NdefRecord;

    const/4 v1, 0x4

    sget-object v2, Landroid/nfc/NdefRecord;->RTD_ANDROID_APP:[B

    const/4 v3, 0x0

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v0

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "packageName is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "packageName is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createExternal(Ljava/lang/String;Ljava/lang/String;[B)Landroid/nfc/NdefRecord;
    .registers 9

    if-eqz p0, :cond_68

    if-eqz p1, :cond_60

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_58

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_50

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v0

    const/16 v5, 0x3a

    aput-byte v5, v2, v3

    array-length v3, v0

    add-int/lit8 v3, v3, 0x1

    array-length v5, v1

    invoke-static {v1, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Landroid/nfc/NdefRecord;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v2, v5, p2}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v3

    :cond_50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "type is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "domain is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_60
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_68
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "domain is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createMime(Ljava/lang/String;[B)Landroid/nfc/NdefRecord;
    .registers 7

    if-eqz p0, :cond_42

    invoke-static {p0}, Landroid/content/Intent;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3a

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_2a

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    new-instance v2, Landroid/nfc/NdefRecord;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4, p1}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v2

    :cond_2a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "mimeType must have minor type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_32
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "mimeType must have major type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mimeType is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "mimeType is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createTextRecord(Ljava/lang/String;Ljava/lang/String;)Landroid/nfc/NdefRecord;
    .registers 11

    if-eqz p1, :cond_56

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_18

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    goto :goto_26

    :cond_18
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    :goto_26
    array-length v2, v1

    const/16 v3, 0x40

    if-ge v2, v3, :cond_4e

    array-length v2, v1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    array-length v4, v0

    add-int/2addr v2, v4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    array-length v4, v1

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    new-instance v5, Landroid/nfc/NdefRecord;

    sget-object v6, Landroid/nfc/NdefRecord;->RTD_TEXT:[B

    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-direct {v5, v3, v6, v7, v8}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v5

    :cond_4e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "language code is too long, must be <64 bytes."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_56
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "text is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createUri(Landroid/net/Uri;)Landroid/nfc/NdefRecord;
    .registers 9

    if-eqz p0, :cond_51

    invoke-virtual {p0}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_49

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_12
    sget-object v3, Landroid/nfc/NdefRecord;->URI_PREFIX_MAP:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_2e

    aget-object v4, v3, v2

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2b

    int-to-byte v1, v2

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_2e
    :goto_2e
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v3, v3, [B

    const/4 v5, 0x0

    aput-byte v1, v3, v5

    array-length v6, v2

    invoke-static {v2, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v5, Landroid/nfc/NdefRecord;

    sget-object v6, Landroid/nfc/NdefRecord;->RTD_URI:[B

    const/4 v7, 0x0

    invoke-direct {v5, v4, v6, v7, v3}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v5

    :cond_49
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "uri is empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_51
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "uri is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createUri(Ljava/lang/String;)Landroid/nfc/NdefRecord;
    .registers 2

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NdefRecord;->createUri(Landroid/net/Uri;)Landroid/nfc/NdefRecord;

    move-result-object v0

    return-object v0
.end method

.method private static ensureSanePayloadSize(J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/nfc/FormatException;
        }
    .end annotation

    const-wide/32 v0, 0xa00000

    cmp-long v0, p0, v0

    if-gtz v0, :cond_8

    return-void

    :cond_8
    new-instance v0, Landroid/nfc/FormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "payload above max limit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/high16 v2, 0xa00000

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static parse(Ljava/nio/ByteBuffer;Z)[Landroid/nfc/NdefRecord;
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/nfc/FormatException;
        }
    .end annotation

    move-object/from16 v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_b
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    :goto_13
    if-nez v8, :cond_1db

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    and-int/lit8 v10, v9, -0x80

    const/4 v11, 0x1

    if-eqz v10, :cond_20

    move v10, v11

    goto :goto_21

    :cond_20
    const/4 v10, 0x0

    :goto_21
    and-int/lit8 v13, v9, 0x40

    if-eqz v13, :cond_27

    move v13, v11

    goto :goto_28

    :cond_27
    const/4 v13, 0x0

    :goto_28
    move v8, v13

    and-int/lit8 v13, v9, 0x20

    if-eqz v13, :cond_2f

    move v13, v11

    goto :goto_30

    :cond_2f
    const/4 v13, 0x0

    :goto_30
    and-int/lit8 v14, v9, 0x10

    if-eqz v14, :cond_36

    move v14, v11

    goto :goto_37

    :cond_36
    const/4 v14, 0x0

    :goto_37
    and-int/lit8 v15, v9, 0x8

    if-eqz v15, :cond_3c

    goto :goto_3d

    :cond_3c
    const/4 v11, 0x0

    :goto_3d
    and-int/lit8 v15, v9, 0x7

    int-to-short v15, v15

    if-nez v10, :cond_59

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v16

    if-nez v16, :cond_59

    if-nez v6, :cond_59

    if-eqz p1, :cond_4f

    move-object/from16 v16, v0

    goto :goto_5b

    :cond_4f
    new-instance v12, Landroid/nfc/FormatException;

    move-object/from16 v16, v0

    const-string v0, "expected MB flag"

    invoke-direct {v12, v0}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_59
    move-object/from16 v16, v0

    :goto_5b
    if-eqz v10, :cond_70

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_65

    if-eqz v6, :cond_70

    :cond_65
    if-eqz p1, :cond_68

    goto :goto_70

    :cond_68
    new-instance v0, Landroid/nfc/FormatException;

    const-string v12, "unexpected MB flag"

    invoke-direct {v0, v12}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_70
    :goto_70
    if-eqz v6, :cond_7d

    if-nez v11, :cond_75

    goto :goto_7d

    :cond_75
    new-instance v0, Landroid/nfc/FormatException;

    const-string v12, "unexpected IL flag in non-leading chunk"

    invoke-direct {v0, v12}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7d
    :goto_7d
    if-eqz v13, :cond_8a

    if-nez v8, :cond_82

    goto :goto_8a

    :cond_82
    new-instance v0, Landroid/nfc/FormatException;

    const-string v12, "unexpected ME flag in non-trailing chunk"

    invoke-direct {v0, v12}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8a
    :goto_8a
    const/4 v0, 0x6

    if-eqz v6, :cond_98

    if-ne v15, v0, :cond_90

    goto :goto_98

    :cond_90
    new-instance v0, Landroid/nfc/FormatException;

    const-string v12, "expected TNF_UNCHANGED in non-leading chunk"

    invoke-direct {v0, v12}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_98
    :goto_98
    if-nez v6, :cond_a5

    if-eq v15, v0, :cond_9d

    goto :goto_a5

    :cond_9d
    new-instance v0, Landroid/nfc/FormatException;

    const-string v12, "unexpected TNF_UNCHANGED in first chunk or unchunked record"

    invoke-direct {v0, v12}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a5
    :goto_a5
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v14, :cond_b9

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    int-to-long v3, v12

    goto :goto_c9

    :cond_b9
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    int-to-long v3, v3

    const-wide v19, 0xffffffffL

    and-long v3, v3, v19

    :goto_c9
    if-eqz v11, :cond_d2

    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    goto :goto_d3

    :cond_d2
    const/4 v12, 0x0

    :goto_d3
    if-eqz v6, :cond_e8

    if-nez v0, :cond_dc

    move/from16 v19, v7

    move/from16 v20, v8

    goto :goto_ec

    :cond_dc
    move/from16 v19, v7

    new-instance v7, Landroid/nfc/FormatException;

    move/from16 v20, v8

    const-string v8, "expected zero-length type in non-leading chunk"

    invoke-direct {v7, v8}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_e8
    move/from16 v19, v7

    move/from16 v20, v8

    :goto_ec
    if-nez v6, :cond_103

    if-lez v0, :cond_f3

    new-array v7, v0, [B

    goto :goto_f5

    :cond_f3
    sget-object v7, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    :goto_f5
    if-lez v12, :cond_fa

    new-array v8, v12, [B

    goto :goto_fc

    :cond_fa
    sget-object v8, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    :goto_fc
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_107

    :cond_103
    move-object/from16 v7, v16

    move-object/from16 v8, v17

    :goto_107
    invoke-static {v3, v4}, Landroid/nfc/NdefRecord;->ensureSanePayloadSize(J)V

    const-wide/16 v21, 0x0

    cmp-long v16, v3, v21

    if-lez v16, :cond_116

    move/from16 v21, v9

    long-to-int v9, v3

    new-array v9, v9, [B

    goto :goto_11a

    :cond_116
    move/from16 v21, v9

    sget-object v9, Landroid/nfc/NdefRecord;->EMPTY_BYTE_ARRAY:[B

    :goto_11a
    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    if-eqz v13, :cond_138

    if-nez v6, :cond_138

    if-nez v0, :cond_131

    move/from16 v22, v0

    const/4 v0, 0x5

    if-ne v15, v0, :cond_129

    goto :goto_133

    :cond_129
    new-instance v0, Landroid/nfc/FormatException;

    const-string v1, "expected non-zero type length in first chunk"

    invoke-direct {v0, v1}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_131
    move/from16 v22, v0

    :goto_133
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    move v0, v15

    goto :goto_13c

    :cond_138
    move/from16 v22, v0

    move/from16 v0, v19

    :goto_13c
    if-nez v13, :cond_140

    if-eqz v6, :cond_143

    :cond_140
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_143
    if-nez v13, :cond_19e

    if-eqz v6, :cond_19e

    const-wide/16 v3, 0x0

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_171

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [B

    move-object/from16 v17, v16

    move-object/from16 v16, v1

    move/from16 v23, v6

    move-object/from16 v1, v17

    array-length v6, v1

    move-object/from16 v17, v9

    move/from16 v24, v10

    int-to-long v9, v6

    add-long/2addr v3, v9

    move-object/from16 v1, v16

    move-object/from16 v9, v17

    move/from16 v6, v23

    move/from16 v10, v24

    goto :goto_14d

    :cond_171
    move/from16 v23, v6

    move-object/from16 v17, v9

    move/from16 v24, v10

    invoke-static {v3, v4}, Landroid/nfc/NdefRecord;->ensureSanePayloadSize(J)V

    long-to-int v1, v3

    new-array v1, v1, [B

    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_182
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_19a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    move-wide/from16 v18, v3

    array-length v3, v10

    const/4 v4, 0x0

    invoke-static {v10, v4, v1, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v10

    add-int/2addr v6, v3

    move-wide/from16 v3, v18

    goto :goto_182

    :cond_19a
    move-wide/from16 v18, v3

    move v15, v0

    goto :goto_1a6

    :cond_19e
    move/from16 v23, v6

    move-object/from16 v17, v9

    move/from16 v24, v10

    move-object/from16 v1, v17

    :goto_1a6
    if-eqz v13, :cond_1b6

    const/4 v6, 0x1

    move-object v4, v1

    move-object v3, v8

    move/from16 v8, v20

    move-object/from16 v1, p0

    move-object/from16 v25, v7

    move v7, v0

    move-object/from16 v0, v25

    goto/16 :goto_13

    :cond_1b6
    const/4 v6, 0x0

    invoke-static {v15, v7, v8, v1}, Landroid/nfc/NdefRecord;->validateTnf(S[B[B[B)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1d5

    new-instance v10, Landroid/nfc/NdefRecord;

    invoke-direct {v10, v15, v7, v8, v1}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_1c8

    goto :goto_1e5

    :cond_1c8
    move-object v4, v1

    move-object v3, v8

    move/from16 v8, v20

    move-object/from16 v1, p0

    move-object/from16 v25, v7

    move v7, v0

    move-object/from16 v0, v25

    goto/16 :goto_13

    :cond_1d5
    new-instance v10, Landroid/nfc/FormatException;

    invoke-direct {v10, v9}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1db
    .catch Ljava/nio/BufferUnderflowException; {:try_start_b .. :try_end_1db} :catch_1f3

    :cond_1db
    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move/from16 v23, v6

    move/from16 v19, v7

    :goto_1e5
    nop

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/nfc/NdefRecord;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/nfc/NdefRecord;

    return-object v0

    :catch_1f3
    move-exception v0

    new-instance v1, Landroid/nfc/FormatException;

    const-string v3, "expected more data"

    invoke-direct {v1, v3, v0}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private parseWktUri()Landroid/net/Uri;
    .registers 7

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ge v1, v3, :cond_8

    return-object v2

    :cond_8
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    and-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_3b

    sget-object v3, Landroid/nfc/NdefRecord;->URI_PREFIX_MAP:[Ljava/lang/String;

    array-length v4, v3

    if-lt v1, v4, :cond_15

    goto :goto_3b

    :cond_15
    aget-object v2, v3, v1

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x1

    array-length v5, v0

    invoke-static {v0, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3

    :cond_3b
    :goto_3b
    return-object v2
.end method

.method private toUri(Z)Landroid/net/Uri;
    .registers 9

    iget-short v0, p0, Landroid/nfc/NdefRecord;->mTnf:S

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_80

    :pswitch_6  #0x2
    goto/16 :goto_7f

    :pswitch_8  #0x4
    if-eqz p1, :cond_c

    goto/16 :goto_7f

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vnd.android.nfc://ext/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/nfc/NdefRecord;->mType:[B

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :pswitch_2d  #0x3
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/nfc/NdefRecord;->mType:[B

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object v1

    return-object v1

    :pswitch_3f  #0x1
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    sget-object v2, Landroid/nfc/NdefRecord;->RTD_SMART_POSTER:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_6a

    if-nez p1, :cond_6a

    :try_start_4b
    new-instance v0, Landroid/nfc/NdefMessage;

    iget-object v2, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    invoke-direct {v0, v2}, Landroid/nfc/NdefMessage;-><init>([B)V

    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_58
    if-ge v4, v3, :cond_67

    aget-object v5, v2, v4

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/nfc/NdefRecord;->toUri(Z)Landroid/net/Uri;

    move-result-object v6
    :try_end_61
    .catch Landroid/nfc/FormatException; {:try_start_4b .. :try_end_61} :catch_68

    if-eqz v6, :cond_64

    return-object v6

    :cond_64
    add-int/lit8 v4, v4, 0x1

    goto :goto_58

    :cond_67
    goto :goto_69

    :catch_68
    move-exception v0

    :goto_69
    goto :goto_7f

    :cond_6a
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    sget-object v2, Landroid/nfc/NdefRecord;->RTD_URI:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-direct {p0}, Landroid/nfc/NdefRecord;->parseWktUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_7e

    invoke-virtual {v0}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object v1

    :cond_7e
    return-object v1

    :cond_7f
    :goto_7f
    return-object v1

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_3f  #00000001
        :pswitch_6  #00000002
        :pswitch_2d  #00000003
        :pswitch_8  #00000004
    .end packed-switch
.end method

.method static validateTnf(S[B[B[B)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_2e

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "unexpected tnf value: 0x%02x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_15  #0x6
    const-string v0, "unexpected TNF_UNCHANGED in first chunk or logical record"

    return-object v0

    :pswitch_18  #0x5, 0x7
    array-length v1, p1

    if-eqz v1, :cond_1e

    const-string v0, "unexpected type field in TNF_UNKNOWN or TNF_RESERVEd record"

    return-object v0

    :cond_1e
    return-object v0

    :pswitch_1f  #0x1, 0x2, 0x3, 0x4
    return-object v0

    :pswitch_20  #0x0
    array-length v1, p1

    if-nez v1, :cond_2b

    array-length v1, p2

    if-nez v1, :cond_2b

    array-length v1, p3

    if-eqz v1, :cond_2a

    goto :goto_2b

    :cond_2a
    return-object v0

    :cond_2b
    :goto_2b
    const-string v0, "unexpected data in TNF_EMPTY record"

    return-object v0

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_20  #00000000
        :pswitch_1f  #00000001
        :pswitch_1f  #00000002
        :pswitch_1f  #00000003
        :pswitch_1f  #00000004
        :pswitch_18  #00000005
        :pswitch_15  #00000006
        :pswitch_18  #00000007
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .registers 5

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    const-wide v1, 0x10c00000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mId:[B

    const-wide v1, 0x10c00000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    array-length v0, v0

    const-wide v1, 0x10500000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_13

    return v0

    :cond_13
    move-object v1, p1

    check-cast v1, Landroid/nfc/NdefRecord;

    iget-object v2, p0, Landroid/nfc/NdefRecord;->mId:[B

    iget-object v3, v1, Landroid/nfc/NdefRecord;->mId:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_21

    return v0

    :cond_21
    iget-object v2, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    iget-object v3, v1, Landroid/nfc/NdefRecord;->mPayload:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_2c

    return v0

    :cond_2c
    iget-short v2, p0, Landroid/nfc/NdefRecord;->mTnf:S

    iget-short v3, v1, Landroid/nfc/NdefRecord;->mTnf:S

    if-eq v2, v3, :cond_33

    return v0

    :cond_33
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    iget-object v2, v1, Landroid/nfc/NdefRecord;->mType:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method getByteLength()I
    .registers 7

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Landroid/nfc/NdefRecord;->mId:[B

    array-length v2, v1

    add-int/2addr v0, v2

    iget-object v2, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    array-length v3, v2

    add-int/2addr v0, v3

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x100

    if-ge v2, v5, :cond_16

    move v2, v4

    goto :goto_17

    :cond_16
    move v2, v3

    :goto_17
    iget-short v5, p0, Landroid/nfc/NdefRecord;->mTnf:S

    if-nez v5, :cond_1d

    :goto_1b
    move v3, v4

    goto :goto_21

    :cond_1d
    array-length v1, v1

    if-lez v1, :cond_21

    goto :goto_1b

    :cond_21
    :goto_21
    move v1, v3

    if-nez v2, :cond_26

    add-int/lit8 v0, v0, 0x3

    :cond_26
    if-eqz v1, :cond_2a

    add-int/lit8 v0, v0, 0x1

    :cond_2a
    return v0
.end method

.method public getId()[B
    .registers 2

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mId:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getPayload()[B
    .registers 2

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getTnf()S
    .registers 2

    iget-short v0, p0, Landroid/nfc/NdefRecord;->mTnf:S

    return v0
.end method

.method public getType()[B
    .registers 2

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    const/16 v0, 0x1f

    const/4 v1, 0x1

    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/nfc/NdefRecord;->mId:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int/2addr v2, v3

    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int/2addr v1, v3

    mul-int/lit8 v2, v1, 0x1f

    iget-short v3, p0, Landroid/nfc/NdefRecord;->mTnf:S

    add-int/2addr v2, v3

    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Landroid/nfc/NdefRecord;->mType:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int/2addr v1, v3

    return v1
.end method

.method public toByteArray()[B
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getByteLength()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v1}, Landroid/nfc/NdefRecord;->writeToByteBuffer(Ljava/nio/ByteBuffer;ZZ)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public toMimeType()Ljava/lang/String;
    .registers 4

    iget-short v0, p0, Landroid/nfc/NdefRecord;->mTnf:S

    packed-switch v0, :pswitch_data_24

    goto :goto_21

    :pswitch_6  #0x2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/nfc/NdefRecord;->mType:[B

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v0}, Landroid/content/Intent;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_14  #0x1
    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    sget-object v1, Landroid/nfc/NdefRecord;->RTD_TEXT:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "text/plain"

    return-object v0

    :cond_21
    :goto_21
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_14  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-short v2, p0, Landroid/nfc/NdefRecord;->mTnf:S

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "NdefRecord tnf=%X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/nfc/NdefRecord;->mType:[B

    array-length v1, v1

    if-lez v1, :cond_2b

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/NdefRecord;->mType:[B

    invoke-static {v2}, Landroid/nfc/NdefRecord;->bytesToString([B)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_2b
    iget-object v1, p0, Landroid/nfc/NdefRecord;->mId:[B

    array-length v1, v1

    if-lez v1, :cond_3f

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/NdefRecord;->mId:[B

    invoke-static {v2}, Landroid/nfc/NdefRecord;->bytesToString([B)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_3f
    iget-object v1, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    array-length v1, v1

    if-lez v1, :cond_53

    const-string v1, " payload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    invoke-static {v2}, Landroid/nfc/NdefRecord;->bytesToString([B)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toUri()Landroid/net/Uri;
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/nfc/NdefRecord;->toUri(Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method writeToByteBuffer(Ljava/nio/ByteBuffer;ZZ)V
    .registers 10

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    array-length v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x100

    if-ge v0, v3, :cond_b

    move v0, v1

    goto :goto_c

    :cond_b
    move v0, v2

    :goto_c
    iget-short v3, p0, Landroid/nfc/NdefRecord;->mTnf:S

    if-nez v3, :cond_11

    :goto_10
    goto :goto_18

    :cond_11
    iget-object v4, p0, Landroid/nfc/NdefRecord;->mId:[B

    array-length v4, v4

    if-lez v4, :cond_17

    goto :goto_10

    :cond_17
    move v1, v2

    :goto_18
    if-eqz p2, :cond_1d

    const/16 v4, -0x80

    goto :goto_1e

    :cond_1d
    move v4, v2

    :goto_1e
    if-eqz p3, :cond_23

    const/16 v5, 0x40

    goto :goto_24

    :cond_23
    move v5, v2

    :goto_24
    or-int/2addr v4, v5

    if-eqz v0, :cond_2a

    const/16 v5, 0x10

    goto :goto_2b

    :cond_2a
    move v5, v2

    :goto_2b
    or-int/2addr v4, v5

    if-eqz v1, :cond_30

    const/16 v2, 0x8

    :cond_30
    or-int/2addr v2, v4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Landroid/nfc/NdefRecord;->mType:[B

    array-length v3, v3

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_47

    iget-object v3, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    array-length v3, v3

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_4d

    :cond_47
    iget-object v3, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    array-length v3, v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_4d
    if-eqz v1, :cond_56

    iget-object v3, p0, Landroid/nfc/NdefRecord;->mId:[B

    array-length v3, v3

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :cond_56
    iget-object v3, p0, Landroid/nfc/NdefRecord;->mType:[B

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Landroid/nfc/NdefRecord;->mId:[B

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-short v0, p0, Landroid/nfc/NdefRecord;->mTnf:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mType:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mId:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mId:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/nfc/NdefRecord;->mPayload:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
