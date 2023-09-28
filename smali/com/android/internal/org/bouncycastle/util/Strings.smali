# classes4.dex

.class public final Lcom/android/internal/org/bouncycastle/util/Strings;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/util/Strings$StringListImpl;
    }
.end annotation


# static fields
.field private static LINE_SEPARATOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    :try_start_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/util/Strings$1;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/util/Strings$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/android/internal/org/bouncycastle/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_20

    :catch_e
    move-exception v0

    :try_start_f
    const-string v1, "%n"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/org/bouncycastle/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1a} :catch_1b

    goto :goto_20

    :catch_1b
    move-exception v1

    const-string v2, "\n"

    sput-object v2, Lcom/android/internal/org/bouncycastle/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    :goto_20
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asCharArray([B)[C
    .registers 4

    array-length v0, p0

    new-array v0, v0, [C

    const/4 v1, 0x0

    :goto_4
    array-length v2, v0

    if-eq v1, v2, :cond_11

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_11
    return-object v0
.end method

.method public static fromByteArray([B)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/util/Strings;->asCharArray([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static fromUTF8ByteArray([B)Ljava/lang/String;
    .registers 5

    array-length v0, p0

    new-array v0, v0, [C

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/util/encoders/UTF8;->transcodeToUTF16([B[C)I

    move-result v1

    if-ltz v1, :cond_10

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    :cond_10
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid UTF-8 input"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static lineSeparator()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/internal/org/bouncycastle/util/Strings;->LINE_SEPARATOR:Ljava/lang/String;

    return-object v0
.end method

.method public static newList()Lcom/android/internal/org/bouncycastle/util/StringList;
    .registers 2

    new-instance v0, Lcom/android/internal/org/bouncycastle/util/Strings$StringListImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Strings$StringListImpl;-><init>(Lcom/android/internal/org/bouncycastle/util/Strings$StringListImpl-IA;)V

    return-object v0
.end method

.method public static split(Ljava/lang/String;C)[Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x1

    :goto_6
    if-eqz v1, :cond_22

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_1d

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_21

    :cond_1d
    const/4 v1, 0x0

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_21
    goto :goto_6

    :cond_22
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_29
    array-length v4, v2

    if-eq v3, v4, :cond_37

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    :cond_37
    return-object v2
.end method

.method public static toByteArray(Ljava/lang/String;[BI)I
    .registers 8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_13

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int v3, p2, v1

    int-to-byte v4, v2

    aput-byte v4, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_13
    return v0
.end method

.method public static toByteArray(Ljava/lang/String;)[B
    .registers 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_7
    array-length v2, v0

    if-eq v1, v2, :cond_14

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v3, v2

    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_14
    return-object v0
.end method

.method public static toByteArray([C)[B
    .registers 4

    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_4
    array-length v2, v0

    if-eq v1, v2, :cond_f

    aget-char v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_f
    return-object v0
.end method

.method public static toLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    :goto_6
    array-length v3, v1

    if-eq v2, v3, :cond_1e

    aget-char v3, v1, v2

    const/16 v4, 0x41

    if-gt v4, v3, :cond_1b

    const/16 v4, 0x5a

    if-lt v4, v3, :cond_1b

    const/4 v0, 0x1

    add-int/lit8 v4, v3, -0x41

    add-int/lit8 v4, v4, 0x61

    int-to-char v4, v4

    aput-char v4, v1, v2

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1e
    if-eqz v0, :cond_26

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2

    :cond_26
    return-object p0
.end method

.method public static toUTF8ByteArray([CLjava/io/OutputStream;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    const/4 v1, 0x0

    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_8c

    aget-char v2, v0, v1

    const/16 v3, 0x80

    if-ge v2, v3, :cond_10

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    goto/16 :goto_87

    :cond_10
    const/16 v4, 0x800

    if-ge v2, v4, :cond_22

    shr-int/lit8 v4, v2, 0x6

    or-int/lit16 v4, v4, 0xc0

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    and-int/lit8 v4, v2, 0x3f

    or-int/2addr v3, v4

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    goto :goto_87

    :cond_22
    const v4, 0xd800

    if-lt v2, v4, :cond_72

    const v4, 0xdfff

    if-gt v2, v4, :cond_72

    add-int/lit8 v4, v1, 0x1

    array-length v5, v0

    const-string v6, "invalid UTF-16 codepoint"

    if-ge v4, v5, :cond_6c

    move v4, v2

    add-int/lit8 v1, v1, 0x1

    aget-char v2, v0, v1

    move v5, v2

    const v7, 0xdbff

    if-gt v4, v7, :cond_66

    and-int/lit16 v6, v4, 0x3ff

    shl-int/lit8 v6, v6, 0xa

    and-int/lit16 v7, v5, 0x3ff

    or-int/2addr v6, v7

    const/high16 v7, 0x10000

    add-int/2addr v6, v7

    shr-int/lit8 v7, v6, 0x12

    or-int/lit16 v7, v7, 0xf0

    invoke-virtual {p1, v7}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v7, v6, 0xc

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v3

    invoke-virtual {p1, v7}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v7, v6, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v3

    invoke-virtual {p1, v7}, Ljava/io/OutputStream;->write(I)V

    and-int/lit8 v7, v6, 0x3f

    or-int/2addr v3, v7

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    goto :goto_87

    :cond_66
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_6c
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_72
    shr-int/lit8 v4, v2, 0xc

    or-int/lit16 v4, v4, 0xe0

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v4, v2, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v3

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    and-int/lit8 v4, v2, 0x3f

    or-int/2addr v3, v4

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    :goto_87
    nop

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_8c
    return-void
.end method

.method public static toUTF8ByteArray(Ljava/lang/String;)[B
    .registers 2

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Strings;->toUTF8ByteArray([C)[B

    move-result-object v0

    return-object v0
.end method

.method public static toUTF8ByteArray([C)[B
    .registers 5

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_5
    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/util/Strings;->toUTF8ByteArray([CLjava/io/OutputStream;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_e

    nop

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    :catch_e
    move-exception v1

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "cannot encode string to byte array!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static toUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    :goto_6
    array-length v3, v1

    if-eq v2, v3, :cond_1e

    aget-char v3, v1, v2

    const/16 v4, 0x61

    if-gt v4, v3, :cond_1b

    const/16 v4, 0x7a

    if-lt v4, v3, :cond_1b

    const/4 v0, 0x1

    add-int/lit8 v4, v3, -0x61

    add-int/lit8 v4, v4, 0x41

    int-to-char v4, v4

    aput-char v4, v1, v2

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1e
    if-eqz v0, :cond_26

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2

    :cond_26
    return-object p0
.end method
