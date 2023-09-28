# classes4.dex

.class public Lcom/android/internal/util/FastDataInput;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/DataInput;
.implements Ljava/io/Closeable;


# static fields
.field private static final MAX_UNSIGNED_SHORT:I = 0xffff


# instance fields
.field private final mBuffer:[B

.field private final mBufferCap:I

.field private mBufferLim:I

.field private mBufferPos:I

.field private final mBufferPtr:J

.field private final mIn:Ljava/io/InputStream;

.field private final mRuntime:Ldalvik/system/VMRuntime;

.field private mStringRefCount:I

.field private mStringRefs:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/FastDataInput;->mStringRefCount:I

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/util/FastDataInput;->mStringRefs:[Ljava/lang/String;

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/FastDataInput;->mRuntime:Ldalvik/system/VMRuntime;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    iput-object v1, p0, Lcom/android/internal/util/FastDataInput;->mIn:Ljava/io/InputStream;

    const/16 v1, 0x8

    if-lt p2, v1, :cond_32

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p2}, Ldalvik/system/VMRuntime;->newNonMovableArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Lcom/android/internal/util/FastDataInput;->mBuffer:[B

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->addressOf(Ljava/lang/Object;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/util/FastDataInput;->mBufferPtr:J

    array-length v0, v1

    iput v0, p0, Lcom/android/internal/util/FastDataInput;->mBufferCap:I

    return-void

    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private fill(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/util/FastDataInput;->mBufferLim:I

    iget v1, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    sub-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/internal/util/FastDataInput;->mBuffer:[B

    const/4 v3, 0x0

    invoke-static {v2, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v3, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    iput v0, p0, Lcom/android/internal/util/FastDataInput;->mBufferLim:I

    sub-int/2addr p1, v0

    :goto_10
    if-lez p1, :cond_2f

    iget-object v1, p0, Lcom/android/internal/util/FastDataInput;->mIn:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/android/internal/util/FastDataInput;->mBuffer:[B

    iget v3, p0, Lcom/android/internal/util/FastDataInput;->mBufferLim:I

    iget v4, p0, Lcom/android/internal/util/FastDataInput;->mBufferCap:I

    sub-int/2addr v4, v3

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_29

    iget v2, p0, Lcom/android/internal/util/FastDataInput;->mBufferLim:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/internal/util/FastDataInput;->mBufferLim:I

    sub-int/2addr p1, v1

    goto :goto_10

    :cond_29
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    :cond_2f
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/util/FastDataInput;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public peekByte()B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/util/FastDataInput;->mBufferLim:I

    iget v1, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_b

    invoke-direct {p0, v1}, Lcom/android/internal/util/FastDataInput;->fill(I)V

    :cond_b
    iget-object v0, p0, Lcom/android/internal/util/FastDataInput;->mBuffer:[B

    iget v1, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public readBoolean()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/util/FastDataInput;->readByte()B

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public readByte()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/util/FastDataInput;->mBufferLim:I

    iget v1, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_b

    invoke-direct {p0, v1}, Lcom/android/internal/util/FastDataInput;->fill(I)V

    :cond_b
    iget-object v0, p0, Lcom/android/internal/util/FastDataInput;->mBuffer:[B

    iget v1, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public readChar()C
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/util/FastDataInput;->readShort()S

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/util/FastDataInput;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/util/FastDataInput;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/internal/util/FastDataInput;->readFully([BII)V

    return-void
.end method

.method public readFully([BII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/util/FastDataInput;->mBufferCap:I

    if-lt v0, p3, :cond_1b

    iget v0, p0, Lcom/android/internal/util/FastDataInput;->mBufferLim:I

    iget v1, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    sub-int/2addr v0, v1

    if-ge v0, p3, :cond_e

    invoke-direct {p0, p3}, Lcom/android/internal/util/FastDataInput;->fill(I)V

    :cond_e
    iget-object v0, p0, Lcom/android/internal/util/FastDataInput;->mBuffer:[B

    iget v1, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    goto :goto_40

    :cond_1b
    iget v0, p0, Lcom/android/internal/util/FastDataInput;->mBufferLim:I

    iget v1, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    sub-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/internal/util/FastDataInput;->mBuffer:[B

    invoke-static {v2, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    :goto_2c
    if-lez p3, :cond_40

    iget-object v1, p0, Lcom/android/internal/util/FastDataInput;->mIn:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3a

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    goto :goto_2c

    :cond_3a
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    :cond_40
    :goto_40
    return-void
.end method

.method public readInt()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/util/FastDataInput;->mBufferLim:I

    iget v1, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_b

    invoke-direct {p0, v1}, Lcom/android/internal/util/FastDataInput;->fill(I)V

    :cond_b
    iget-object v0, p0, Lcom/android/internal/util/FastDataInput;->mBuffer:[B

    iget v1, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x0

    or-int/2addr v0, v1

    return v0
.end method

.method public readInternedUTF()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/util/FastDataInput;->readUnsignedShort()I

    move-result v0

    const v1, 0xffff

    if-ne v0, v1, :cond_2c

    invoke-virtual {p0}, Lcom/android/internal/util/FastDataInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/util/FastDataInput;->mStringRefCount:I

    if-ge v3, v1, :cond_2b

    iget-object v1, p0, Lcom/android/internal/util/FastDataInput;->mStringRefs:[Ljava/lang/String;

    array-length v4, v1

    if-ne v3, v4, :cond_21

    shr-int/lit8 v4, v3, 0x1

    add-int/2addr v3, v4

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/util/FastDataInput;->mStringRefs:[Ljava/lang/String;

    :cond_21
    iget-object v1, p0, Lcom/android/internal/util/FastDataInput;->mStringRefs:[Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/util/FastDataInput;->mStringRefCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/internal/util/FastDataInput;->mStringRefCount:I

    aput-object v2, v1, v3

    :cond_2b
    return-object v2

    :cond_2c
    iget-object v1, p0, Lcom/android/internal/util/FastDataInput;->mStringRefs:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public readLine()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public readLong()J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/util/FastDataInput;->mBufferLim:I

    iget v1, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    sub-int/2addr v0, v1

    const/16 v1, 0x8

    if-ge v0, v1, :cond_c

    invoke-direct {p0, v1}, Lcom/android/internal/util/FastDataInput;->fill(I)V

    :cond_c
    iget-object v0, p0, Lcom/android/internal/util/FastDataInput;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v1

    or-int/2addr v2, v4

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x0

    or-int/2addr v2, v3

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v4

    add-int/lit8 v4, v5, 0x1

    iput v4, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v1, v5, 0x8

    or-int/2addr v1, v3

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x0

    or-int/2addr v0, v1

    int-to-long v3, v2

    const/16 v1, 0x20

    shl-long/2addr v3, v1

    int-to-long v5, v0

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    or-long/2addr v3, v5

    return-wide v3
.end method

.method public readShort()S
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/util/FastDataInput;->mBufferLim:I

    iget v1, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_b

    invoke-direct {p0, v1}, Lcom/android/internal/util/FastDataInput;->fill(I)V

    :cond_b
    iget-object v0, p0, Lcom/android/internal/util/FastDataInput;->mBuffer:[B

    iget v1, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x0

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public readUTF()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/util/FastDataInput;->readUnsignedShort()I

    move-result v0

    iget v1, p0, Lcom/android/internal/util/FastDataInput;->mBufferCap:I

    if-le v1, v0, :cond_20

    iget v1, p0, Lcom/android/internal/util/FastDataInput;->mBufferLim:I

    iget v2, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    sub-int/2addr v1, v2

    if-ge v1, v0, :cond_12

    invoke-direct {p0, v0}, Lcom/android/internal/util/FastDataInput;->fill(I)V

    :cond_12
    iget-wide v1, p0, Lcom/android/internal/util/FastDataInput;->mBufferPtr:J

    iget v3, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    invoke-static {v1, v2, v3, v0}, Landroid/util/CharsetUtils;->fromModifiedUtf8Bytes(JII)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/util/FastDataInput;->mBufferPos:I

    return-object v1

    :cond_20
    iget-object v1, p0, Lcom/android/internal/util/FastDataInput;->mRuntime:Ldalvik/system/VMRuntime;

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v2, v3}, Ldalvik/system/VMRuntime;->newNonMovableArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/internal/util/FastDataInput;->readFully([BII)V

    iget-object v3, p0, Lcom/android/internal/util/FastDataInput;->mRuntime:Ldalvik/system/VMRuntime;

    invoke-virtual {v3, v1}, Ldalvik/system/VMRuntime;->addressOf(Ljava/lang/Object;)J

    move-result-wide v3

    invoke-static {v3, v4, v2, v0}, Landroid/util/CharsetUtils;->fromModifiedUtf8Bytes(JII)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public readUnsignedByte()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/util/FastDataInput;->readByte()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    return v0
.end method

.method public readUnsignedShort()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/util/FastDataInput;->readShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    return v0
.end method

.method public skipBytes(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
