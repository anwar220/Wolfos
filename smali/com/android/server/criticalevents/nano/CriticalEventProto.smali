# classes4.dex

.class public final Lcom/android/server/criticalevents/nano/CriticalEventProto;
.super Lcom/android/framework/protobuf/nano/MessageNano;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;,
        Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;,
        Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;,
        Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;,
        Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;
    }
.end annotation


# static fields
.field public static final ANR_FIELD_NUMBER:I = 0x4

.field public static final DATA_APP:I = 0x1

.field public static final HALF_WATCHDOG_FIELD_NUMBER:I = 0x3

.field public static final JAVA_CRASH_FIELD_NUMBER:I = 0x5

.field public static final NATIVE_CRASH_FIELD_NUMBER:I = 0x6

.field public static final PROCESS_CLASS_UNKNOWN:I = 0x0

.field public static final SYSTEM_APP:I = 0x2

.field public static final SYSTEM_SERVER:I = 0x3

.field public static final WATCHDOG_FIELD_NUMBER:I = 0x2

.field private static volatile _emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto;


# instance fields
.field private eventCase_:I

.field private event_:Ljava/lang/Object;

.field public timestampMs:J


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    invoke-virtual {p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->clear()Lcom/android/server/criticalevents/nano/CriticalEventProto;

    return-void
.end method

.method public static emptyArray()[Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .registers 2

    sget-object v0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto;

    if-nez v0, :cond_15

    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/server/criticalevents/nano/CriticalEventProto;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/criticalevents/nano/CriticalEventProto;

    sput-object v1, Lcom/android/server/criticalevents/nano/CriticalEventProto;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto;

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
    sget-object v0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->_emptyArray:[Lcom/android/server/criticalevents/nano/CriticalEventProto;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventProto;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/criticalevents/nano/CriticalEventProto;

    invoke-direct {v0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/criticalevents/nano/CriticalEventProto;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->timestampMs:J

    invoke-virtual {p0}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->clearEvent()Lcom/android/server/criticalevents/nano/CriticalEventProto;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->cachedSize:I

    return-object p0
.end method

.method public clearEvent()Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    return-object p0
.end method

.method protected computeSerializedSize()I
    .registers 6

    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget-wide v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->timestampMs:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_12

    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_20

    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_20
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2e

    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2e
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3c

    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3c
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4a

    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4a
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_58

    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_58
    return v0
.end method

.method public getAnr()Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;
    .registers 3

    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    return-object v0

    :cond_a
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEventCase()I
    .registers 2

    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    return v0
.end method

.method public getHalfWatchdog()Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;
    .registers 3

    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;

    return-object v0

    :cond_a
    const/4 v0, 0x0

    return-object v0
.end method

.method public getJavaCrash()Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;
    .registers 3

    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    return-object v0

    :cond_a
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNativeCrash()Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;
    .registers 3

    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    return-object v0

    :cond_a
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWatchdog()Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;
    .registers 3

    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;

    return-object v0

    :cond_a
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasAnr()Z
    .registers 3

    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public hasHalfWatchdog()Z
    .registers 3

    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public hasJavaCrash()Z
    .registers 3

    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public hasNativeCrash()Z
    .registers 3

    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public hasWatchdog()Z
    .registers 3

    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_86

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_84

    return-object p0

    :sswitch_e
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1a

    new-instance v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;

    invoke-direct {v1}, Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;-><init>()V

    iput-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    :cond_1a
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput v2, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    goto :goto_84

    :sswitch_24
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_30

    new-instance v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;

    invoke-direct {v1}, Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;-><init>()V

    iput-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    :cond_30
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput v2, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    goto :goto_84

    :sswitch_3a
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_46

    new-instance v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    invoke-direct {v1}, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;-><init>()V

    iput-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    :cond_46
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput v2, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    goto :goto_84

    :sswitch_50
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5c

    new-instance v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;

    invoke-direct {v1}, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;-><init>()V

    iput-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    :cond_5c
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput v2, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    goto :goto_84

    :sswitch_66
    iget v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_72

    new-instance v1, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;

    invoke-direct {v1}, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;-><init>()V

    iput-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    :cond_72
    iget-object v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput v2, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    goto :goto_84

    :sswitch_7c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->timestampMs:J

    goto :goto_84

    :sswitch_83
    return-object p0

    :cond_84
    :goto_84
    goto/16 :goto_0

    :sswitch_data_86
    .sparse-switch
        0x0 -> :sswitch_83
        0x8 -> :sswitch_7c
        0x12 -> :sswitch_66
        0x1a -> :sswitch_50
        0x22 -> :sswitch_3a
        0x2a -> :sswitch_24
        0x32 -> :sswitch_e
    .end sparse-switch
.end method

.method public setAnr(Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;)Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .registers 3

    if-eqz p1, :cond_8

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    iput-object p1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    return-object p0

    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setHalfWatchdog(Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;)Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .registers 3

    if-eqz p1, :cond_8

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    iput-object p1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    return-object p0

    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setJavaCrash(Lcom/android/server/criticalevents/nano/CriticalEventProto$JavaCrash;)Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .registers 3

    if-eqz p1, :cond_8

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    iput-object p1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    return-object p0

    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setNativeCrash(Lcom/android/server/criticalevents/nano/CriticalEventProto$NativeCrash;)Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .registers 3

    if-eqz p1, :cond_8

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    iput-object p1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    return-object p0

    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setWatchdog(Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;)Lcom/android/server/criticalevents/nano/CriticalEventProto;
    .registers 3

    if-eqz p1, :cond_8

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    iput-object p1, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    return-object p0

    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->timestampMs:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_c

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_c
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_18
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_24
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_30

    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_30
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3c

    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_3c
    iget v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->eventCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_48

    iget-object v0, p0, Lcom/android/server/criticalevents/nano/CriticalEventProto;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_48
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
