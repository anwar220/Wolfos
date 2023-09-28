# classes4.dex

.class public final Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;
.super Lcom/android/framework/protobuf/nano/MessageNano;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/criticalevents/nano/CriticalEventProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NativeCrash"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;


# instance fields
.field public pid:I

.field public process:Ljava/lang/String;

.field public processClass:I

.field public uid:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->clear()Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    return-void
.end method

.method public static emptyArray()[Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;
    .registers 2

    sget-object v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    if-nez v0, :cond_15

    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    sput-object v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    :cond_15
    :goto_15
    sget-object v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;
    .registers 2

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->process:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->pid:I

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->uid:I

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->processClass:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .registers 4

    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->process:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->process:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_16
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->pid:I

    if-eqz v1, :cond_20

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_20
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->uid:I

    if-eqz v1, :cond_2a

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2a
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->processClass:I

    if-eqz v1, :cond_34

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_34
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_30

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_2f

    return-object p0

    :sswitch_e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    packed-switch v1, :pswitch_data_46

    goto :goto_18

    :pswitch_16  #0x0, 0x1, 0x2, 0x3
    iput v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->processClass:I

    :goto_18
    goto :goto_2f

    :sswitch_19
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->uid:I

    goto :goto_2f

    :sswitch_20
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->pid:I

    goto :goto_2f

    :sswitch_27
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->process:Ljava/lang/String;

    goto :goto_2f

    :sswitch_2e
    return-object p0

    :cond_2f
    :goto_2f
    goto :goto_0

    :sswitch_data_30
    .sparse-switch
        0x0 -> :sswitch_2e
        0xa -> :sswitch_27
        0x10 -> :sswitch_20
        0x18 -> :sswitch_19
        0x20 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_16  #00000000
        :pswitch_16  #00000001
        :pswitch_16  #00000002
        :pswitch_16  #00000003
    .end packed-switch
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->process:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->process:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_10
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->pid:I

    if-eqz v0, :cond_18

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_18
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->uid:I

    if-eqz v0, :cond_20

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_20
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;->processClass:I

    if-eqz v0, :cond_28

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_28
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
