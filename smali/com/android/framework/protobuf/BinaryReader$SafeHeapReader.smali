# classes4.dex

.class final Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;
.super Lcom/android/framework/protobuf/BinaryReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/BinaryReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SafeHeapReader"
.end annotation


# instance fields
.field private final buffer:[B

.field private final bufferIsImmutable:Z

.field private endGroupTag:I

.field private final initialPos:I

.field private limit:I

.field private pos:I

.field private tag:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Z)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader;-><init>(Lcom/android/framework/protobuf/BinaryReader$1;)V

    iput-boolean p2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->bufferIsImmutable:Z

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->initialPos:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    return-void
.end method

.method private isAtEnd()Z
    .registers 3

    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private readByte()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    if-eq v0, v1, :cond_f

    iget-object v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    aget-byte v0, v1, v0

    return v0

    :cond_f
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private readField(Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/WireFormat$FieldType;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/framework/protobuf/BinaryReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p1}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_a2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unsupported field type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_14  #0x11
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readUInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :pswitch_1d  #0x10
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readUInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_26  #0xf
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2b  #0xe
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readSInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :pswitch_34  #0xd
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readSInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_3d  #0xc
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readSFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :pswitch_46  #0xb
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readSFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_4f  #0xa
    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readMessage(Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_54  #0x9
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :pswitch_5d  #0x8
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_66  #0x7
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :pswitch_6f  #0x6
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :pswitch_78  #0x5
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_81  #0x4
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readEnum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_8a  #0x3
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :pswitch_93  #0x2
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0

    :pswitch_98  #0x1
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_98  #00000001
        :pswitch_93  #00000002
        :pswitch_8a  #00000003
        :pswitch_81  #00000004
        :pswitch_78  #00000005
        :pswitch_6f  #00000006
        :pswitch_66  #00000007
        :pswitch_5d  #00000008
        :pswitch_54  #00000009
        :pswitch_4f  #0000000a
        :pswitch_46  #0000000b
        :pswitch_3d  #0000000c
        :pswitch_34  #0000000d
        :pswitch_2b  #0000000e
        :pswitch_26  #0000000f
        :pswitch_1d  #00000010
        :pswitch_14  #00000011
    .end packed-switch
.end method

.method private readGroup(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v1

    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    :try_start_f
    invoke-interface {p1}, Lcom/android/framework/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1, p0, p2}, Lcom/android/framework/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    invoke-interface {p1, v1}, Lcom/android/framework/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_28

    if-ne v2, v3, :cond_23

    nop

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    return-object v1

    :cond_23
    :try_start_23
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_28

    :catchall_28
    move-exception v1

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    throw v1
.end method

.method private readLittleEndian32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v0

    return v0
.end method

.method private readLittleEndian32_NoCheck()I
    .registers 5

    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    iget-object v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v2, v0, 0x4

    iput v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x3

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    return v2
.end method

.method private readLittleEndian64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v0

    return-wide v0
.end method

.method private readLittleEndian64_NoCheck()J
    .registers 10

    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    iget-object v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v2, v0, 0x8

    iput v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    aget-byte v2, v1, v0

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    add-int/lit8 v6, v0, 0x1

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x2

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x3

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x4

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x5

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x28

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x6

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x30

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x7

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v4, v6

    const/16 v6, 0x38

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    return-wide v2
.end method

.method private readMessage(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    :try_start_e
    invoke-interface {p1}, Lcom/android/framework/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3, p0, p2}, Lcom/android/framework/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    invoke-interface {p1, v3}, Lcom/android/framework/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    iget v4, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_25

    if-ne v4, v2, :cond_20

    nop

    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    return-object v3

    :cond_20
    :try_start_20
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_25

    :catchall_25
    move-exception v3

    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    throw v3
.end method

.method private readVarint32()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-eq v1, v2, :cond_84

    iget-object v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    move v4, v0

    if-ltz v0, :cond_14

    iput v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return v4

    :cond_14
    sub-int/2addr v1, v3

    const/16 v0, 0x9

    if-ge v1, v0, :cond_1f

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint64SlowPath()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    :cond_1f
    add-int/lit8 v0, v3, 0x1

    aget-byte v1, v2, v3

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v1, v4

    move v3, v1

    if-gez v1, :cond_2c

    xor-int/lit8 v1, v3, -0x80

    goto :goto_81

    :cond_2c
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    shl-int/lit8 v0, v0, 0xe

    xor-int/2addr v0, v3

    move v3, v0

    if-ltz v0, :cond_3c

    xor-int/lit16 v0, v3, 0x3f80

    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_81

    :cond_3c
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0x15

    xor-int/2addr v1, v3

    move v3, v1

    if-gez v1, :cond_4b

    const v1, -0x1fc080

    xor-int/2addr v1, v3

    goto :goto_81

    :cond_4b
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    shl-int/lit8 v4, v0, 0x1c

    xor-int/2addr v3, v4

    const v4, 0xfe03f80

    xor-int/2addr v3, v4

    if-gez v0, :cond_7f

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_7c

    add-int/lit8 v1, v4, 0x1

    aget-byte v4, v2, v4

    if-gez v4, :cond_7f

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_7c

    add-int/lit8 v1, v4, 0x1

    aget-byte v4, v2, v4

    if-gez v4, :cond_7f

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v2, v1

    if-ltz v1, :cond_77

    goto :goto_7c

    :cond_77
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    :cond_7c
    :goto_7c
    move v1, v3

    move v0, v4

    goto :goto_81

    :cond_7f
    move v0, v1

    move v1, v3

    :goto_81
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return v1

    :cond_84
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method private readVarint64SlowPath()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    const/16 v3, 0x40

    if-ge v2, v3, :cond_18

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readByte()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v4, v3, 0x80

    if-nez v4, :cond_15

    return-wide v0

    :cond_15
    add-int/lit8 v2, v2, 0x7

    goto :goto_3

    :cond_18
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
.end method

.method private requireBytes(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_a

    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_a

    return-void

    :cond_a
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private requirePosition(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private requireWireType(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-ne v0, p1, :cond_9

    return-void

    :cond_9
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method private skipBytes(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void
.end method

.method private skipGroup()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v1

    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    :cond_f
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->getFieldNumber()I

    move-result v1

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1e

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->skipField()Z

    move-result v1

    if-nez v1, :cond_f

    :cond_1e
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    if-ne v1, v2, :cond_27

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    return-void

    :cond_27
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method private skipVarint()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    sub-int/2addr v0, v1

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1d

    iget-object v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v1, :cond_1d

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, v0, v2

    if-ltz v2, :cond_19

    iput v4, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_19
    add-int/lit8 v3, v3, 0x1

    move v2, v4

    goto :goto_e

    :cond_1d
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->skipVarintSlowPath()V

    return-void
.end method

.method private skipVarintSlowPath()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_f

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readByte()B

    move-result v1

    if-ltz v1, :cond_c

    return-void

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private verifyPackedFixed32Length(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    and-int/lit8 v0, p1, 0x3

    if-nez v0, :cond_8

    return-void

    :cond_8
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private verifyPackedFixed64Length(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    and-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_8

    return-void

    :cond_8
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public getFieldNumber()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    const v1, 0x7fffffff

    if-eqz v0, :cond_a

    return v1

    :cond_a
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    if-ne v0, v2, :cond_15

    return v1

    :cond_15
    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    return v0
.end method

.method public getTag()I
    .registers 2

    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    return v0
.end method

.method public getTotalBytesRead()I
    .registers 3

    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->initialPos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public readBool()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0
.end method

.method public readBoolList(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/android/framework/protobuf/BooleanArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_50

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/BooleanArrayList;

    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v3}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v3

    packed-switch v3, :pswitch_data_a0

    :pswitch_12  #0x1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :pswitch_17  #0x2
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v3

    iget v4, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v4, v3

    :goto_1e
    iget v5, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v5, v4, :cond_2f

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v5

    if-eqz v5, :cond_2a

    move v5, v1

    goto :goto_2b

    :cond_2a
    move v5, v2

    :goto_2b
    invoke-virtual {v0, v5}, Lcom/android/framework/protobuf/BooleanArrayList;->addBoolean(Z)V

    goto :goto_1e

    :cond_2f
    invoke-direct {p0, v4}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requirePosition(I)V

    nop

    goto :goto_7e

    :goto_34
    :pswitch_34  #0x0
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readBool()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/BooleanArrayList;->addBoolean(Z)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_42

    return-void

    :cond_42
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_4f

    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_4f
    goto :goto_34

    :cond_50
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_aa

    :pswitch_59  #0x1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :pswitch_5e  #0x2
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v3, v0

    :goto_65
    iget v4, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v4, v3, :cond_7a

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v4

    if-eqz v4, :cond_71

    move v4, v1

    goto :goto_72

    :cond_71
    move v4, v2

    :goto_72
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_65

    :cond_7a
    invoke-direct {p0, v3}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requirePosition(I)V

    nop

    :goto_7e
    return-void

    :goto_7f
    :pswitch_7f  #0x0
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_91

    return-void

    :cond_91
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_9e

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_9e
    goto :goto_7f

    nop

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_34  #00000000
        :pswitch_12  #00000001
        :pswitch_17  #00000002
    .end packed-switch

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_7f  #00000000
        :pswitch_59  #00000001
        :pswitch_5e  #00000002
    .end packed-switch
.end method

.method public readBytes()Lcom/android/framework/protobuf/ByteString;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    if-nez v0, :cond_d

    sget-object v1, Lcom/android/framework/protobuf/ByteString;->EMPTY:Lcom/android/framework/protobuf/ByteString;

    return-object v1

    :cond_d
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    iget-boolean v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->bufferIsImmutable:Z

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-static {v1, v2, v0}, Lcom/android/framework/protobuf/ByteString;->wrap([BII)Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    goto :goto_25

    :cond_1d
    iget-object v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-static {v1, v2, v0}, Lcom/android/framework/protobuf/ByteString;->copyFrom([BII)Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    :goto_25
    nop

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-object v1
.end method

.method public readBytesList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/framework/protobuf/ByteString;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_25

    :goto_9
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_17

    return-void

    :cond_17
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_24

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_24
    goto :goto_9

    :cond_25
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readDoubleList(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/android/framework/protobuf/DoubleArrayList;

    if-eqz v0, :cond_4c

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/DoubleArrayList;

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_9a

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :pswitch_15  #0x2
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed64Length(I)V

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    :goto_1f
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v3, v2, :cond_2f

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/framework/protobuf/DoubleArrayList;->addDouble(D)V

    goto :goto_1f

    :cond_2f
    goto :goto_78

    :goto_30
    :pswitch_30  #0x1
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/DoubleArrayList;->addDouble(D)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_3e

    return-void

    :cond_3e
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_4b

    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_4b
    goto :goto_30

    :cond_4c
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_a2

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :pswitch_5a  #0x2
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed64Length(I)V

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    :goto_64
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v2, v1, :cond_78

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_64

    :cond_78
    :goto_78
    return-void

    :goto_79
    :pswitch_79  #0x1
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_8b

    return-void

    :cond_8b
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_98

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_98
    goto :goto_79

    nop

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_30  #00000001
        :pswitch_15  #00000002
    .end packed-switch

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_79  #00000001
        :pswitch_5a  #00000002
    .end packed-switch
.end method

.method public readEnum()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    return v0
.end method

.method public readEnumList(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v0, :cond_45

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_8c

    :pswitch_10  #0x1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :pswitch_15  #0x2
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    :goto_1c
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v3, v2, :cond_28

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    goto :goto_1c

    :cond_28
    goto :goto_6a

    :goto_29
    :pswitch_29  #0x0
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readEnum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_37

    return-void

    :cond_37
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_44

    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_44
    goto :goto_29

    :cond_45
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_96

    :pswitch_4e  #0x1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :pswitch_53  #0x2
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    :goto_5a
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v2, v1, :cond_6a

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    :cond_6a
    :goto_6a
    return-void

    :goto_6b
    :pswitch_6b  #0x0
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readEnum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_7d

    return-void

    :cond_7d
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_8a

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_8a
    goto :goto_6b

    nop

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_29  #00000000
        :pswitch_10  #00000001
        :pswitch_15  #00000002
    .end packed-switch

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_6b  #00000000
        :pswitch_4e  #00000001
        :pswitch_53  #00000002
    .end packed-switch
.end method

.method public readFixed32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readFixed32List(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v0, :cond_48

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_92

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :goto_15
    :sswitch_15
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readFixed32()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_23

    return-void

    :cond_23
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_30

    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_30
    goto :goto_15

    :sswitch_31
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed32Length(I)V

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    :goto_3b
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v3, v2, :cond_47

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    goto :goto_3b

    :cond_47
    goto :goto_90

    :cond_48
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_9c

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :goto_56
    :sswitch_56
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_68

    return-void

    :cond_68
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_75

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_75
    goto :goto_56

    :sswitch_76
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed32Length(I)V

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    :goto_80
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v2, v1, :cond_90

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_80

    :cond_90
    :goto_90
    return-void

    nop

    :sswitch_data_92
    .sparse-switch
        0x2 -> :sswitch_31
        0x5 -> :sswitch_15
    .end sparse-switch

    :sswitch_data_9c
    .sparse-switch
        0x2 -> :sswitch_76
        0x5 -> :sswitch_56
    .end sparse-switch
.end method

.method public readFixed64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readFixed64List(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/android/framework/protobuf/LongArrayList;

    if-eqz v0, :cond_48

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/LongArrayList;

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_92

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :pswitch_15  #0x2
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed64Length(I)V

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    :goto_1f
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v3, v2, :cond_2b

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    goto :goto_1f

    :cond_2b
    goto :goto_70

    :goto_2c
    :pswitch_2c  #0x1
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readFixed64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_3a

    return-void

    :cond_3a
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_47

    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_47
    goto :goto_2c

    :cond_48
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_9a

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :pswitch_56  #0x2
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed64Length(I)V

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    :goto_60
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v2, v1, :cond_70

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_60

    :cond_70
    :goto_70
    return-void

    :goto_71
    :pswitch_71  #0x1
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_83

    return-void

    :cond_83
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_90

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_90
    goto :goto_71

    nop

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_2c  #00000001
        :pswitch_15  #00000002
    .end packed-switch

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_71  #00000001
        :pswitch_56  #00000002
    .end packed-switch
.end method

.method public readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readFloatList(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/android/framework/protobuf/FloatArrayList;

    if-eqz v0, :cond_4c

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/FloatArrayList;

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_9a

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :goto_15
    :sswitch_15
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/FloatArrayList;->addFloat(F)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_23

    return-void

    :cond_23
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_30

    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_30
    goto :goto_15

    :sswitch_31
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed32Length(I)V

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    :goto_3b
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v3, v2, :cond_4b

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/FloatArrayList;->addFloat(F)V

    goto :goto_3b

    :cond_4b
    goto :goto_98

    :cond_4c
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_a4

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :goto_5a
    :sswitch_5a
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_6c

    return-void

    :cond_6c
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_79

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_79
    goto :goto_5a

    :sswitch_7a
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed32Length(I)V

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    :goto_84
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v2, v1, :cond_98

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_84

    :cond_98
    :goto_98
    return-void

    nop

    :sswitch_data_9a
    .sparse-switch
        0x2 -> :sswitch_31
        0x5 -> :sswitch_15
    .end sparse-switch

    :sswitch_data_a4
    .sparse-switch
        0x2 -> :sswitch_7a
        0x5 -> :sswitch_5a
    .end sparse-switch
.end method

.method public readGroup(Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readGroup(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readGroupBySchemaWithCheck(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readGroup(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readGroupList(Ljava/util/List;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_25

    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    :goto_b
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readGroup(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_19

    return-void

    :cond_19
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    if-eq v2, v0, :cond_24

    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_24
    goto :goto_b

    :cond_25
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public readGroupList(Ljava/util/List;Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readGroupList(Ljava/util/List;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public readInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    return v0
.end method

.method public readInt32List(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v0, :cond_49

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_94

    :pswitch_10  #0x1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :pswitch_15  #0x2
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    :goto_1c
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v3, v2, :cond_28

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    goto :goto_1c

    :cond_28
    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requirePosition(I)V

    nop

    goto :goto_72

    :goto_2d
    :pswitch_2d  #0x0
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readInt32()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_3b

    return-void

    :cond_3b
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_48

    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_48
    goto :goto_2d

    :cond_49
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_9e

    :pswitch_52  #0x1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :pswitch_57  #0x2
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    :goto_5e
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v2, v1, :cond_6e

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    :cond_6e
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requirePosition(I)V

    nop

    :goto_72
    return-void

    :goto_73
    :pswitch_73  #0x0
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_85

    return-void

    :cond_85
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_92

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_92
    goto :goto_73

    nop

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_2d  #00000000
        :pswitch_10  #00000001
        :pswitch_15  #00000002
    .end packed-switch

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_73  #00000000
        :pswitch_52  #00000001
        :pswitch_57  #00000002
    .end packed-switch
.end method

.method public readInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readInt64List(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/android/framework/protobuf/LongArrayList;

    if-eqz v0, :cond_49

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/LongArrayList;

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_94

    :pswitch_10  #0x1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :pswitch_15  #0x2
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    :goto_1c
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v3, v2, :cond_28

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    goto :goto_1c

    :cond_28
    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requirePosition(I)V

    nop

    goto :goto_72

    :goto_2d
    :pswitch_2d  #0x0
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readInt64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_3b

    return-void

    :cond_3b
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_48

    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_48
    goto :goto_2d

    :cond_49
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_9e

    :pswitch_52  #0x1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :pswitch_57  #0x2
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    :goto_5e
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v2, v1, :cond_6e

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    :cond_6e
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requirePosition(I)V

    nop

    :goto_72
    return-void

    :goto_73
    :pswitch_73  #0x0
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_85

    return-void

    :cond_85
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_92

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_92
    goto :goto_73

    nop

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_2d  #00000000
        :pswitch_10  #00000001
        :pswitch_15  #00000002
    .end packed-switch

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_73  #00000000
        :pswitch_52  #00000001
        :pswitch_57  #00000002
    .end packed-switch
.end method

.method public readMap(Ljava/util/Map;Lcom/android/framework/protobuf/MapEntryLite$Metadata;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/android/framework/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    :try_start_12
    iget-object v3, p2, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->defaultKey:Ljava/lang/Object;

    iget-object v4, p2, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    :goto_16
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->getFieldNumber()I

    move-result v5

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_28

    nop

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_61

    nop

    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    nop

    return-void

    :cond_28
    const-string v6, "Unable to parse map entry."

    packed-switch v5, :pswitch_data_66

    :try_start_2d
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->skipField()Z

    move-result v7

    goto :goto_4b

    :pswitch_32  #0x2
    iget-object v7, p2, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->valueType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    iget-object v8, p2, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-direct {p0, v7, v8, p3}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readField(Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    goto :goto_4d

    :pswitch_40  #0x1
    iget-object v7, p2, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->keyType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8, v8}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readField(Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    goto :goto_4d

    :catch_49
    move-exception v7

    goto :goto_54

    :goto_4b
    if-eqz v7, :cond_4e

    :goto_4d
    goto :goto_5a

    :cond_4e
    new-instance v7, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    invoke-direct {v7, v6}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_54
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_2d .. :try_end_54} :catch_49
    .catchall {:try_start_2d .. :try_end_54} :catchall_61

    :goto_54
    :try_start_54
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->skipField()Z

    move-result v8

    if-eqz v8, :cond_5b

    :goto_5a
    goto :goto_16

    :cond_5b
    new-instance v8, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    invoke-direct {v8, v6}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_61
    .catchall {:try_start_54 .. :try_end_61} :catchall_61

    :catchall_61
    move-exception v3

    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    throw v3

    nop

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_40  #00000001
        :pswitch_32  #00000002
    .end packed-switch
.end method

.method public readMessage(Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readMessage(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readMessageBySchemaWithCheck(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readMessage(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readMessageList(Ljava/util/List;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_25

    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    :goto_b
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readMessage(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_19

    return-void

    :cond_19
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    if-eq v2, v0, :cond_24

    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_24
    goto :goto_b

    :cond_25
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public readMessageList(Ljava/util/List;Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readMessageList(Ljava/util/List;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public readSFixed32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readSFixed32List(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v0, :cond_48

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_92

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :goto_15
    :sswitch_15
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readSFixed32()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_23

    return-void

    :cond_23
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_30

    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_30
    goto :goto_15

    :sswitch_31
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed32Length(I)V

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    :goto_3b
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v3, v2, :cond_47

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    goto :goto_3b

    :cond_47
    goto :goto_90

    :cond_48
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_9c

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :goto_56
    :sswitch_56
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readSFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_68

    return-void

    :cond_68
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_75

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_75
    goto :goto_56

    :sswitch_76
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed32Length(I)V

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    :goto_80
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v2, v1, :cond_90

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian32_NoCheck()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_80

    :cond_90
    :goto_90
    return-void

    nop

    :sswitch_data_92
    .sparse-switch
        0x2 -> :sswitch_31
        0x5 -> :sswitch_15
    .end sparse-switch

    :sswitch_data_9c
    .sparse-switch
        0x2 -> :sswitch_76
        0x5 -> :sswitch_56
    .end sparse-switch
.end method

.method public readSFixed64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readSFixed64List(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/android/framework/protobuf/LongArrayList;

    if-eqz v0, :cond_48

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/LongArrayList;

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_92

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :pswitch_15  #0x2
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed64Length(I)V

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    :goto_1f
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v3, v2, :cond_2b

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    goto :goto_1f

    :cond_2b
    goto :goto_70

    :goto_2c
    :pswitch_2c  #0x1
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readSFixed64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_3a

    return-void

    :cond_3a
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_47

    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_47
    goto :goto_2c

    :cond_48
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_9a

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :pswitch_56  #0x2
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->verifyPackedFixed64Length(I)V

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    :goto_60
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v2, v1, :cond_70

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readLittleEndian64_NoCheck()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_60

    :cond_70
    :goto_70
    return-void

    :goto_71
    :pswitch_71  #0x1
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readSFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_83

    return-void

    :cond_83
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_90

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_90
    goto :goto_71

    nop

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_2c  #00000001
        :pswitch_15  #00000002
    .end packed-switch

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_71  #00000001
        :pswitch_56  #00000002
    .end packed-switch
.end method

.method public readSInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v0

    return v0
.end method

.method public readSInt32List(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v0, :cond_49

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_94

    :pswitch_10  #0x1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :pswitch_15  #0x2
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    :goto_1c
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v3, v2, :cond_2c

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v3

    invoke-static {v3}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    goto :goto_1c

    :cond_2c
    goto :goto_72

    :goto_2d
    :pswitch_2d  #0x0
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readSInt32()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_3b

    return-void

    :cond_3b
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_48

    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_48
    goto :goto_2d

    :cond_49
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_9e

    :pswitch_52  #0x1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :pswitch_57  #0x2
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    :goto_5e
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v2, v1, :cond_72

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    invoke-static {v2}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag32(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    :cond_72
    :goto_72
    return-void

    :goto_73
    :pswitch_73  #0x0
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readSInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_85

    return-void

    :cond_85
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_92

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_92
    goto :goto_73

    nop

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_2d  #00000000
        :pswitch_10  #00000001
        :pswitch_15  #00000002
    .end packed-switch

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_73  #00000000
        :pswitch_52  #00000001
        :pswitch_57  #00000002
    .end packed-switch
.end method

.method public readSInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readSInt64List(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/android/framework/protobuf/LongArrayList;

    if-eqz v0, :cond_49

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/LongArrayList;

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_94

    :pswitch_10  #0x1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :pswitch_15  #0x2
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    :goto_1c
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v3, v2, :cond_2c

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    goto :goto_1c

    :cond_2c
    goto :goto_72

    :goto_2d
    :pswitch_2d  #0x0
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readSInt64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_3b

    return-void

    :cond_3b
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_48

    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_48
    goto :goto_2d

    :cond_49
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_9e

    :pswitch_52  #0x1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :pswitch_57  #0x2
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    :goto_5e
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v2, v1, :cond_72

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/framework/protobuf/CodedInputStream;->decodeZigZag64(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    :cond_72
    :goto_72
    return-void

    :goto_73
    :pswitch_73  #0x0
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readSInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_85

    return-void

    :cond_85
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_92

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_92
    goto :goto_73

    nop

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_2d  #00000000
        :pswitch_10  #00000001
        :pswitch_15  #00000002
    .end packed-switch

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_73  #00000000
        :pswitch_52  #00000001
        :pswitch_57  #00000002
    .end packed-switch
.end method

.method public readString()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readStringInternal(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readStringInternal(Z)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    if-nez v0, :cond_d

    const-string v1, ""

    return-object v1

    :cond_d
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireBytes(I)V

    if-eqz p1, :cond_24

    iget-object v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int v3, v2, v0

    invoke-static {v1, v2, v3}, Lcom/android/framework/protobuf/Utf8;->isValidUtf8([BII)Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_24

    :cond_1f
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidUtf8()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    :cond_24
    :goto_24
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    sget-object v4, Lcom/android/framework/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-object v1
.end method

.method public readStringList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readStringListInternal(Ljava/util/List;Z)V

    return-void
.end method

.method public readStringListInternal(Ljava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4a

    instance-of v0, p1, Lcom/android/framework/protobuf/LazyStringList;

    if-eqz v0, :cond_2e

    if-nez p2, :cond_2e

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/LazyStringList;

    :goto_12
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/framework/protobuf/LazyStringList;->add(Lcom/android/framework/protobuf/ByteString;)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_20

    return-void

    :cond_20
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_2d

    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_2d
    goto :goto_12

    :cond_2e
    :goto_2e
    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readStringInternal(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_3c

    return-void

    :cond_3c
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_49

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_49
    goto :goto_2e

    :cond_4a
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public readStringListRequireUtf8(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readStringListInternal(Ljava/util/List;Z)V

    return-void
.end method

.method public readStringRequireUtf8()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readStringInternal(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    return v0
.end method

.method public readUInt32List(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v0, :cond_45

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_8c

    :pswitch_10  #0x1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :pswitch_15  #0x2
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    :goto_1c
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v3, v2, :cond_28

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    goto :goto_1c

    :cond_28
    goto :goto_6a

    :goto_29
    :pswitch_29  #0x0
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readUInt32()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_37

    return-void

    :cond_37
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_44

    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_44
    goto :goto_29

    :cond_45
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_96

    :pswitch_4e  #0x1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :pswitch_53  #0x2
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    :goto_5a
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v2, v1, :cond_6a

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    :cond_6a
    :goto_6a
    return-void

    :goto_6b
    :pswitch_6b  #0x0
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readUInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_7d

    return-void

    :cond_7d
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_8a

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_8a
    goto :goto_6b

    nop

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_29  #00000000
        :pswitch_10  #00000001
        :pswitch_15  #00000002
    .end packed-switch

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_6b  #00000000
        :pswitch_4e  #00000001
        :pswitch_53  #00000002
    .end packed-switch
.end method

.method public readUInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requireWireType(I)V

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readUInt64List(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/android/framework/protobuf/LongArrayList;

    if-eqz v0, :cond_49

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/LongArrayList;

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_94

    :pswitch_10  #0x1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :pswitch_15  #0x2
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v2, v1

    :goto_1c
    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v3, v2, :cond_28

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    goto :goto_1c

    :cond_28
    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requirePosition(I)V

    nop

    goto :goto_72

    :goto_2d
    :pswitch_2d  #0x0
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readUInt64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_3b

    return-void

    :cond_3b
    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v2

    iget v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v2, v3, :cond_48

    iput v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_48
    goto :goto_2d

    :cond_49
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_9e

    :pswitch_52  #0x1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :pswitch_57  #0x2
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    add-int/2addr v1, v0

    :goto_5e
    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    if-ge v2, v1, :cond_6e

    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    :cond_6e
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->requirePosition(I)V

    nop

    :goto_72
    return-void

    :goto_73
    :pswitch_73  #0x0
    invoke-virtual {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readUInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_85

    return-void

    :cond_85
    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    if-eq v1, v2, :cond_92

    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-void

    :cond_92
    goto :goto_73

    nop

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_2d  #00000000
        :pswitch_10  #00000001
        :pswitch_15  #00000002
    .end packed-switch

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_73  #00000000
        :pswitch_52  #00000001
        :pswitch_57  #00000002
    .end packed-switch
.end method

.method public readVarint64()J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->limit:I

    if-eq v1, v0, :cond_ca

    iget-object v2, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->buffer:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    move v4, v0

    if-ltz v0, :cond_13

    iput v3, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    int-to-long v0, v4

    return-wide v0

    :cond_13
    sub-int/2addr v1, v3

    const/16 v0, 0x9

    if-ge v1, v0, :cond_1d

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint64SlowPath()J

    move-result-wide v0

    return-wide v0

    :cond_1d
    add-int/lit8 v0, v3, 0x1

    aget-byte v1, v2, v3

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v1, v4

    move v3, v1

    if-gez v1, :cond_2c

    xor-int/lit8 v1, v3, -0x80

    int-to-long v4, v1

    goto/16 :goto_c7

    :cond_2c
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    shl-int/lit8 v0, v0, 0xe

    xor-int/2addr v0, v3

    move v3, v0

    if-ltz v0, :cond_3c

    xor-int/lit16 v0, v3, 0x3f80

    int-to-long v4, v0

    move v0, v1

    goto/16 :goto_c7

    :cond_3c
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0x15

    xor-int/2addr v1, v3

    move v3, v1

    if-gez v1, :cond_4d

    const v1, -0x1fc080

    xor-int/2addr v1, v3

    int-to-long v4, v1

    goto/16 :goto_c7

    :cond_4d
    int-to-long v4, v3

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v6, v0

    const/16 v0, 0x1c

    shl-long/2addr v6, v0

    xor-long/2addr v4, v6

    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-ltz v0, :cond_64

    const-wide/32 v4, 0xfe03f80

    xor-long/2addr v4, v6

    move v0, v1

    goto :goto_c7

    :cond_64
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v4, v1

    const/16 v1, 0x23

    shl-long/2addr v4, v1

    xor-long/2addr v4, v6

    move-wide v6, v4

    cmp-long v1, v4, v8

    if-gez v1, :cond_79

    const-wide v4, -0x7f01fc080L

    xor-long/2addr v4, v6

    goto :goto_c7

    :cond_79
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v4, v0

    const/16 v0, 0x2a

    shl-long/2addr v4, v0

    xor-long/2addr v4, v6

    move-wide v6, v4

    cmp-long v0, v4, v8

    if-ltz v0, :cond_8f

    const-wide v4, 0x3f80fe03f80L

    xor-long/2addr v4, v6

    move v0, v1

    goto :goto_c7

    :cond_8f
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v4, v1

    const/16 v1, 0x31

    shl-long/2addr v4, v1

    xor-long/2addr v4, v6

    move-wide v6, v4

    cmp-long v1, v4, v8

    if-gez v1, :cond_a4

    const-wide v4, -0x1fc07f01fc080L

    xor-long/2addr v4, v6

    goto :goto_c7

    :cond_a4
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v4, v0

    const/16 v0, 0x38

    shl-long/2addr v4, v0

    xor-long/2addr v4, v6

    const-wide v6, 0xfe03f80fe03f80L

    xor-long/2addr v4, v6

    cmp-long v0, v4, v8

    if-gez v0, :cond_c6

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v6, v1

    cmp-long v1, v6, v8

    if-ltz v1, :cond_c1

    goto :goto_c7

    :cond_c1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    :cond_c6
    move v0, v1

    :goto_c7
    iput v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->pos:I

    return-wide v4

    :cond_ca
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method public skipField()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->isAtEnd()Z

    move-result v0

    if-nez v0, :cond_35

    iget v0, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->tag:I

    iget v1, p0, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->endGroupTag:I

    if-ne v0, v1, :cond_d

    goto :goto_35

    :cond_d
    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_38

    :pswitch_15  #0x4
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :pswitch_1a  #0x5
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->skipBytes(I)V

    return v1

    :pswitch_1f  #0x3
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->skipGroup()V

    return v1

    :pswitch_23  #0x2
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->readVarint32()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->skipBytes(I)V

    return v1

    :pswitch_2b  #0x1
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->skipBytes(I)V

    return v1

    :pswitch_31  #0x0
    invoke-direct {p0}, Lcom/android/framework/protobuf/BinaryReader$SafeHeapReader;->skipVarint()V

    return v1

    :cond_35
    :goto_35
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_31  #00000000
        :pswitch_2b  #00000001
        :pswitch_23  #00000002
        :pswitch_1f  #00000003
        :pswitch_15  #00000004
        :pswitch_1a  #00000005
    .end packed-switch
.end method
