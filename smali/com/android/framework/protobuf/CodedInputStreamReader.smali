# classes4.dex

.class final Lcom/android/framework/protobuf/CodedInputStreamReader;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/framework/protobuf/Reader;


# static fields
.field private static final FIXED32_MULTIPLE_MASK:I = 0x3

.field private static final FIXED64_MULTIPLE_MASK:I = 0x7

.field private static final NEXT_TAG_UNSET:I


# instance fields
.field private endGroupTag:I

.field private final input:Lcom/android/framework/protobuf/CodedInputStream;

.field private nextTag:I

.field private tag:I


# direct methods
.method private constructor <init>(Lcom/android/framework/protobuf/CodedInputStream;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    const-string v0, "input"

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/CodedInputStream;

    iput-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    iput-object p0, v0, Lcom/android/framework/protobuf/CodedInputStream;->wrapper:Lcom/android/framework/protobuf/CodedInputStreamReader;

    return-void
.end method

.method public static forCodedInput(Lcom/android/framework/protobuf/CodedInputStream;)Lcom/android/framework/protobuf/CodedInputStreamReader;
    .registers 2

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStream;->wrapper:Lcom/android/framework/protobuf/CodedInputStreamReader;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStream;->wrapper:Lcom/android/framework/protobuf/CodedInputStreamReader;

    return-object v0

    :cond_7
    new-instance v0, Lcom/android/framework/protobuf/CodedInputStreamReader;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;-><init>(Lcom/android/framework/protobuf/CodedInputStream;)V

    return-object v0
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

    sget-object v0, Lcom/android/framework/protobuf/CodedInputStreamReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p1}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_a2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unsupported field type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_14  #0x11
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readUInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :pswitch_1d  #0x10
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readUInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_26  #0xf
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2b  #0xe
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readSInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :pswitch_34  #0xd
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readSInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_3d  #0xc
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readSFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :pswitch_46  #0xb
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readSFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_4f  #0xa
    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readMessage(Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_54  #0x9
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :pswitch_5d  #0x8
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_66  #0x7
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :pswitch_6f  #0x6
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :pswitch_78  #0x5
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_81  #0x4
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readEnum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_8a  #0x3
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :pswitch_93  #0x2
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0

    :pswitch_98  #0x1
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readBool()Z

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

    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->endGroupTag:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v1

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->endGroupTag:I

    :try_start_f
    invoke-interface {p1}, Lcom/android/framework/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1, p0, p2}, Lcom/android/framework/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    invoke-interface {p1, v1}, Lcom/android/framework/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    iget v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->endGroupTag:I
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_28

    if-ne v2, v3, :cond_23

    nop

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->endGroupTag:I

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

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->endGroupTag:I

    throw v1
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

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    iget v1, v1, Lcom/android/framework/protobuf/CodedInputStream;->recursionDepth:I

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    iget v2, v2, Lcom/android/framework/protobuf/CodedInputStream;->recursionLimit:I

    if-ge v1, v2, :cond_3c

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v1

    invoke-interface {p1}, Lcom/android/framework/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    iget v4, v3, Lcom/android/framework/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/framework/protobuf/CodedInputStream;->recursionDepth:I

    invoke-interface {p1, v2, p0, p2}, Lcom/android/framework/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    invoke-interface {p1, v2}, Lcom/android/framework/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/framework/protobuf/CodedInputStream;->checkLastTagWas(I)V

    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    iget v4, v3, Lcom/android/framework/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/android/framework/protobuf/CodedInputStream;->recursionDepth:I

    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3, v1}, Lcom/android/framework/protobuf/CodedInputStream;->popLimit(I)V

    return-object v2

    :cond_3c
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method private requirePosition(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-ne v0, p1, :cond_9

    return-void

    :cond_9
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

    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-ne v0, p1, :cond_9

    return-void

    :cond_9
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

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

    and-int/lit8 v0, p1, 0x3

    if-nez v0, :cond_5

    return-void

    :cond_5
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

    and-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public getFieldNumber()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    if-eqz v0, :cond_a

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_12

    :cond_a
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    :goto_12
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eqz v0, :cond_20

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->endGroupTag:I

    if-ne v0, v1, :cond_1b

    goto :goto_20

    :cond_1b
    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    return v0

    :cond_20
    :goto_20
    const v0, 0x7fffffff

    return v0
.end method

.method public getTag()I
    .registers 2

    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    return v0
.end method

.method public readBool()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    return v0
.end method

.method public readBoolList(Ljava/util/List;)V
    .registers 6
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

    if-eqz v0, :cond_58

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/BooleanArrayList;

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_b2

    :pswitch_10  #0x1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :pswitch_15  #0x2
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    :cond_22
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/BooleanArrayList;->addBoolean(Z)V

    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_22

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    nop

    goto :goto_8c

    :goto_38
    :pswitch_38  #0x0
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/BooleanArrayList;->addBoolean(Z)V

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_4a

    return-void

    :cond_4a
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_57

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_57
    goto :goto_38

    :cond_58
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_bc

    :pswitch_61  #0x1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :pswitch_66  #0x2
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    :cond_73
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_73

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    nop

    :goto_8c
    return-void

    :goto_8d
    :pswitch_8d  #0x0
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_a3

    return-void

    :cond_a3
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_b0

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_b0
    goto :goto_8d

    nop

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_38  #00000000
        :pswitch_10  #00000001
        :pswitch_15  #00000002
    .end packed-switch

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_8d  #00000000
        :pswitch_61  #00000001
        :pswitch_66  #00000002
    .end packed-switch
.end method

.method public readBytes()Lcom/android/framework/protobuf/ByteString;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public readBytesList(Ljava/util/List;)V
    .registers 4
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

    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_27

    :goto_9
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_19

    return-void

    :cond_19
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_26

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_26
    goto :goto_9

    :cond_27
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

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readDouble()D

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

    if-eqz v0, :cond_58

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/DoubleArrayList;

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_b2

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :pswitch_15  #0x2
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    :cond_25
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/framework/protobuf/DoubleArrayList;->addDouble(D)V

    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_25

    nop

    goto :goto_8c

    :goto_38
    :pswitch_38  #0x1
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/DoubleArrayList;->addDouble(D)V

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_4a

    return-void

    :cond_4a
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_57

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_57
    goto :goto_38

    :cond_58
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_ba

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :pswitch_66  #0x2
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    :cond_76
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_76

    nop

    :goto_8c
    return-void

    :goto_8d
    :pswitch_8d  #0x1
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_a3

    return-void

    :cond_a3
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_b0

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_b0
    goto :goto_8d

    nop

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_38  #00000001
        :pswitch_15  #00000002
    .end packed-switch

    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_8d  #00000001
        :pswitch_66  #00000002
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

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readEnum()I

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

    if-eqz v0, :cond_58

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_b2

    :pswitch_10  #0x1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :pswitch_15  #0x2
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    :cond_22
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_22

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    nop

    goto :goto_8c

    :goto_38
    :pswitch_38  #0x0
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readEnum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_4a

    return-void

    :cond_4a
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_57

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_57
    goto :goto_38

    :cond_58
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_bc

    :pswitch_61  #0x1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :pswitch_66  #0x2
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    :cond_73
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_73

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    nop

    :goto_8c
    return-void

    :goto_8d
    :pswitch_8d  #0x0
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_a3

    return-void

    :cond_a3
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_b0

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_b0
    goto :goto_8d

    nop

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_38  #00000000
        :pswitch_10  #00000001
        :pswitch_15  #00000002
    .end packed-switch

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_8d  #00000000
        :pswitch_61  #00000001
        :pswitch_66  #00000002
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

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readFixed32()I

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

    if-eqz v0, :cond_58

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_b2

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :goto_15
    :sswitch_15
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readFixed32()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_27

    return-void

    :cond_27
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_34

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_34
    goto :goto_15

    :sswitch_35
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    :cond_45
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readFixed32()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_45

    nop

    goto :goto_b0

    :cond_58
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_bc

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :goto_66
    :sswitch_66
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_7c

    return-void

    :cond_7c
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_89

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_89
    goto :goto_66

    :sswitch_8a
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    :goto_9a
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readFixed32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_b1

    nop

    :goto_b0
    return-void

    :cond_b1
    goto :goto_9a

    :sswitch_data_b2
    .sparse-switch
        0x2 -> :sswitch_35
        0x5 -> :sswitch_15
    .end sparse-switch

    :sswitch_data_bc
    .sparse-switch
        0x2 -> :sswitch_8a
        0x5 -> :sswitch_66
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

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readFixed64()J

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

    if-eqz v0, :cond_58

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/LongArrayList;

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_b2

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :pswitch_15  #0x2
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    :cond_25
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_25

    nop

    goto :goto_8c

    :goto_38
    :pswitch_38  #0x1
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_4a

    return-void

    :cond_4a
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_57

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_57
    goto :goto_38

    :cond_58
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_ba

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :pswitch_66  #0x2
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    :cond_76
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_76

    nop

    :goto_8c
    return-void

    :goto_8d
    :pswitch_8d  #0x1
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_a3

    return-void

    :cond_a3
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_b0

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_b0
    goto :goto_8d

    nop

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_38  #00000001
        :pswitch_15  #00000002
    .end packed-switch

    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_8d  #00000001
        :pswitch_66  #00000002
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

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readFloat()F

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

    if-eqz v0, :cond_58

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/FloatArrayList;

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_b2

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :goto_15
    :sswitch_15
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/FloatArrayList;->addFloat(F)V

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_27

    return-void

    :cond_27
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_34

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_34
    goto :goto_15

    :sswitch_35
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    :cond_45
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readFloat()F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/FloatArrayList;->addFloat(F)V

    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_45

    nop

    goto :goto_b0

    :cond_58
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_bc

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :goto_66
    :sswitch_66
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_7c

    return-void

    :cond_7c
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_89

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_89
    goto :goto_66

    :sswitch_8a
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    :goto_9a
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readFloat()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_b1

    nop

    :goto_b0
    return-void

    :cond_b1
    goto :goto_9a

    :sswitch_data_b2
    .sparse-switch
        0x2 -> :sswitch_35
        0x5 -> :sswitch_15
    .end sparse-switch

    :sswitch_data_bc
    .sparse-switch
        0x2 -> :sswitch_8a
        0x5 -> :sswitch_66
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

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readGroup(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

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

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readGroup(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readGroupList(Ljava/util/List;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 6
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

    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2c

    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    :goto_b
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readGroup(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-nez v1, :cond_2b

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    if-eqz v1, :cond_1f

    goto :goto_2b

    :cond_1f
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    if-eq v1, v0, :cond_2a

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_2a
    goto :goto_b

    :cond_2b
    :goto_2b
    return-void

    :cond_2c
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

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readGroupList(Ljava/util/List;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

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

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readInt32()I

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

    if-eqz v0, :cond_58

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_b2

    :pswitch_10  #0x1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :pswitch_15  #0x2
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    :cond_22
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_22

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    nop

    goto :goto_8c

    :goto_38
    :pswitch_38  #0x0
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_4a

    return-void

    :cond_4a
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_57

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_57
    goto :goto_38

    :cond_58
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_bc

    :pswitch_61  #0x1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :pswitch_66  #0x2
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    :cond_73
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_73

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    nop

    :goto_8c
    return-void

    :goto_8d
    :pswitch_8d  #0x0
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_a3

    return-void

    :cond_a3
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_b0

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_b0
    goto :goto_8d

    nop

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_38  #00000000
        :pswitch_10  #00000001
        :pswitch_15  #00000002
    .end packed-switch

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_8d  #00000000
        :pswitch_61  #00000001
        :pswitch_66  #00000002
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

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readInt64()J

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

    if-eqz v0, :cond_58

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/LongArrayList;

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_b2

    :pswitch_10  #0x1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :pswitch_15  #0x2
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    :cond_22
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_22

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    nop

    goto :goto_8c

    :goto_38
    :pswitch_38  #0x0
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_4a

    return-void

    :cond_4a
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_57

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_57
    goto :goto_38

    :cond_58
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_bc

    :pswitch_61  #0x1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :pswitch_66  #0x2
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    :cond_73
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_73

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    nop

    :goto_8c
    return-void

    :goto_8d
    :pswitch_8d  #0x0
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_a3

    return-void

    :cond_a3
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_b0

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_b0
    goto :goto_8d

    nop

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_38  #00000000
        :pswitch_10  #00000001
        :pswitch_15  #00000002
    .end packed-switch

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_8d  #00000000
        :pswitch_61  #00000001
        :pswitch_66  #00000002
    .end packed-switch
.end method

.method public readMap(Ljava/util/Map;Lcom/android/framework/protobuf/MapEntryLite$Metadata;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 12
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

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v1

    iget-object v2, p2, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->defaultKey:Ljava/lang/Object;

    iget-object v3, p2, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    :goto_14
    :try_start_14
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->getFieldNumber()I

    move-result v4

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_5f

    iget-object v5, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v5}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v5
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_69

    if-eqz v5, :cond_26

    goto :goto_5f

    :cond_26
    const-string v5, "Unable to parse map entry."

    packed-switch v4, :pswitch_data_70

    :try_start_2b
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->skipField()Z

    move-result v6

    goto :goto_49

    :pswitch_30  #0x2
    iget-object v6, p2, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->valueType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    iget-object v7, p2, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-direct {p0, v6, v7, p3}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readField(Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    goto :goto_4b

    :pswitch_3e  #0x1
    iget-object v6, p2, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->keyType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7, v7}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readField(Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    goto :goto_4b

    :catch_47
    move-exception v6

    goto :goto_52

    :goto_49
    if-eqz v6, :cond_4c

    :goto_4b
    goto :goto_58

    :cond_4c
    new-instance v6, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    invoke-direct {v6, v5}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_52
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_2b .. :try_end_52} :catch_47
    .catchall {:try_start_2b .. :try_end_52} :catchall_69

    :goto_52
    :try_start_52
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->skipField()Z

    move-result v7

    if-eqz v7, :cond_59

    :goto_58
    goto :goto_14

    :cond_59
    new-instance v7, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    invoke-direct {v7, v5}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_5f
    :goto_5f
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_62
    .catchall {:try_start_52 .. :try_end_62} :catchall_69

    iget-object v4, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v4, v1}, Lcom/android/framework/protobuf/CodedInputStream;->popLimit(I)V

    nop

    return-void

    :catchall_69
    move-exception v4

    iget-object v5, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v5, v1}, Lcom/android/framework/protobuf/CodedInputStream;->popLimit(I)V

    throw v4

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_3e  #00000001
        :pswitch_30  #00000002
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

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readMessage(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

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

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readMessage(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readMessageList(Ljava/util/List;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 6
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

    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2c

    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    :goto_b
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readMessage(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-nez v1, :cond_2b

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    if-eqz v1, :cond_1f

    goto :goto_2b

    :cond_1f
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    if-eq v1, v0, :cond_2a

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_2a
    goto :goto_b

    :cond_2b
    :goto_2b
    return-void

    :cond_2c
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

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readMessageList(Ljava/util/List;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

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

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readSFixed32()I

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

    if-eqz v0, :cond_58

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_b2

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :goto_15
    :sswitch_15
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readSFixed32()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_27

    return-void

    :cond_27
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_34

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_34
    goto :goto_15

    :sswitch_35
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    :cond_45
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readSFixed32()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_45

    nop

    goto :goto_b0

    :cond_58
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_bc

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :goto_66
    :sswitch_66
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readSFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_7c

    return-void

    :cond_7c
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_89

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_89
    goto :goto_66

    :sswitch_8a
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    :goto_9a
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readSFixed32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_b1

    nop

    :goto_b0
    return-void

    :cond_b1
    goto :goto_9a

    :sswitch_data_b2
    .sparse-switch
        0x2 -> :sswitch_35
        0x5 -> :sswitch_15
    .end sparse-switch

    :sswitch_data_bc
    .sparse-switch
        0x2 -> :sswitch_8a
        0x5 -> :sswitch_66
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

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readSFixed64()J

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

    if-eqz v0, :cond_58

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/LongArrayList;

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_b2

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :pswitch_15  #0x2
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    :cond_25
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_25

    nop

    goto :goto_8c

    :goto_38
    :pswitch_38  #0x1
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_4a

    return-void

    :cond_4a
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_57

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_57
    goto :goto_38

    :cond_58
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_ba

    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :pswitch_66  #0x2
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    :cond_76
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_76

    nop

    :goto_8c
    return-void

    :goto_8d
    :pswitch_8d  #0x1
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_a3

    return-void

    :cond_a3
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_b0

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_b0
    goto :goto_8d

    nop

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_38  #00000001
        :pswitch_15  #00000002
    .end packed-switch

    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_8d  #00000001
        :pswitch_66  #00000002
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

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readSInt32()I

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

    if-eqz v0, :cond_58

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_b2

    :pswitch_10  #0x1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :pswitch_15  #0x2
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    :cond_22
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readSInt32()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_22

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    nop

    goto :goto_8c

    :goto_38
    :pswitch_38  #0x0
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readSInt32()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_4a

    return-void

    :cond_4a
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_57

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_57
    goto :goto_38

    :cond_58
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_bc

    :pswitch_61  #0x1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :pswitch_66  #0x2
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    :cond_73
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readSInt32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_73

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    nop

    :goto_8c
    return-void

    :goto_8d
    :pswitch_8d  #0x0
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readSInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_a3

    return-void

    :cond_a3
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_b0

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_b0
    goto :goto_8d

    nop

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_38  #00000000
        :pswitch_10  #00000001
        :pswitch_15  #00000002
    .end packed-switch

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_8d  #00000000
        :pswitch_61  #00000001
        :pswitch_66  #00000002
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

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readSInt64()J

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

    if-eqz v0, :cond_58

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/LongArrayList;

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_b2

    :pswitch_10  #0x1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :pswitch_15  #0x2
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    :cond_22
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_22

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    nop

    goto :goto_8c

    :goto_38
    :pswitch_38  #0x0
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_4a

    return-void

    :cond_4a
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_57

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_57
    goto :goto_38

    :cond_58
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_bc

    :pswitch_61  #0x1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :pswitch_66  #0x2
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    :cond_73
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_73

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    nop

    :goto_8c
    return-void

    :goto_8d
    :pswitch_8d  #0x0
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_a3

    return-void

    :cond_a3
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_b0

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_b0
    goto :goto_8d

    nop

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_38  #00000000
        :pswitch_10  #00000001
        :pswitch_15  #00000002
    .end packed-switch

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_8d  #00000000
        :pswitch_61  #00000001
        :pswitch_66  #00000002
    .end packed-switch
.end method

.method public readString()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readStringListInternal(Ljava/util/List;Z)V

    return-void
.end method

.method public readStringListInternal(Ljava/util/List;Z)V
    .registers 6
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

    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_55

    instance-of v0, p1, Lcom/android/framework/protobuf/LazyStringList;

    if-eqz v0, :cond_30

    if-nez p2, :cond_30

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/LazyStringList;

    :goto_12
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/framework/protobuf/LazyStringList;->add(Lcom/android/framework/protobuf/ByteString;)V

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_22

    return-void

    :cond_22
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_2f

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_2f
    goto :goto_12

    :cond_30
    :goto_30
    if-eqz p2, :cond_37

    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    :cond_37
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readString()Ljava/lang/String;

    move-result-object v0

    :goto_3b
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_47

    return-void

    :cond_47
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_54

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_54
    goto :goto_30

    :cond_55
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

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readStringListInternal(Ljava/util/List;Z)V

    return-void
.end method

.method public readStringRequireUtf8()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

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

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

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

    if-eqz v0, :cond_58

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_b2

    :pswitch_10  #0x1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :pswitch_15  #0x2
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    :cond_22
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_22

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    nop

    goto :goto_8c

    :goto_38
    :pswitch_38  #0x0
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_4a

    return-void

    :cond_4a
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_57

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_57
    goto :goto_38

    :cond_58
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_bc

    :pswitch_61  #0x1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :pswitch_66  #0x2
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    :cond_73
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_73

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    nop

    :goto_8c
    return-void

    :goto_8d
    :pswitch_8d  #0x0
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_a3

    return-void

    :cond_a3
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_b0

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_b0
    goto :goto_8d

    nop

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_38  #00000000
        :pswitch_10  #00000001
        :pswitch_15  #00000002
    .end packed-switch

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_8d  #00000000
        :pswitch_61  #00000001
        :pswitch_66  #00000002
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

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt64()J

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

    if-eqz v0, :cond_58

    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/LongArrayList;

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_b2

    :pswitch_10  #0x1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    :pswitch_15  #0x2
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    :cond_22
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_22

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    nop

    goto :goto_8c

    :goto_38
    :pswitch_38  #0x0
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_4a

    return-void

    :cond_4a
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_57

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_57
    goto :goto_38

    :cond_58
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_bc

    :pswitch_61  #0x1
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    :pswitch_66  #0x2
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    :cond_73
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_73

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    nop

    :goto_8c
    return-void

    :goto_8d
    :pswitch_8d  #0x0
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_a3

    return-void

    :cond_a3
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_b0

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    return-void

    :cond_b0
    goto :goto_8d

    nop

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_38  #00000000
        :pswitch_10  #00000001
        :pswitch_15  #00000002
    .end packed-switch

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_8d  #00000000
        :pswitch_61  #00000001
        :pswitch_66  #00000002
    .end packed-switch
.end method

.method public shouldDiscardUnknownFields()Z
    .registers 2

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->shouldDiscardUnknownFields()Z

    move-result v0

    return v0
.end method

.method public skipField()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-nez v0, :cond_16

    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->endGroupTag:I

    if-ne v0, v1, :cond_f

    goto :goto_16

    :cond_f
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/CodedInputStream;->skipField(I)Z

    move-result v0

    return v0

    :cond_16
    :goto_16
    const/4 v0, 0x0

    return v0
.end method
