# classes3.dex

.class public abstract Landroid/telephony/data/DataService$DataServiceProvider;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/DataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "DataServiceProvider"
.end annotation


# instance fields
.field private final mApnUnthrottledCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/data/IDataServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mDataCallListChangedCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/data/IDataServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mSlotIndex:I

.field final synthetic this$0:Landroid/telephony/data/DataService;


# direct methods
.method static bridge synthetic -$$Nest$mregisterForApnUnthrottled(Landroid/telephony/data/DataService$DataServiceProvider;Landroid/telephony/data/IDataServiceCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/data/DataService$DataServiceProvider;->registerForApnUnthrottled(Landroid/telephony/data/IDataServiceCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterForDataCallListChanged(Landroid/telephony/data/DataService$DataServiceProvider;Landroid/telephony/data/IDataServiceCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/data/DataService$DataServiceProvider;->registerForDataCallListChanged(Landroid/telephony/data/IDataServiceCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$munregisterForApnUnthrottled(Landroid/telephony/data/DataService$DataServiceProvider;Landroid/telephony/data/IDataServiceCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/data/DataService$DataServiceProvider;->unregisterForApnUnthrottled(Landroid/telephony/data/IDataServiceCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$munregisterForDataCallListChanged(Landroid/telephony/data/DataService$DataServiceProvider;Landroid/telephony/data/IDataServiceCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/data/DataService$DataServiceProvider;->unregisterForDataCallListChanged(Landroid/telephony/data/IDataServiceCallback;)V

    return-void
.end method

.method public constructor <init>(Landroid/telephony/data/DataService;I)V
    .registers 4

    iput-object p1, p0, Landroid/telephony/data/DataService$DataServiceProvider;->this$0:Landroid/telephony/data/DataService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mDataCallListChangedCallbacks:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mApnUnthrottledCallbacks:Ljava/util/List;

    iput p2, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mSlotIndex:I

    return-void
.end method

.method private registerForApnUnthrottled(Landroid/telephony/data/IDataServiceCallback;)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mApnUnthrottledCallbacks:Ljava/util/List;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mApnUnthrottledCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private registerForDataCallListChanged(Landroid/telephony/data/IDataServiceCallback;)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mDataCallListChangedCallbacks:Ljava/util/List;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mDataCallListChangedCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private unregisterForApnUnthrottled(Landroid/telephony/data/IDataServiceCallback;)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mApnUnthrottledCallbacks:Ljava/util/List;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mApnUnthrottledCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private unregisterForDataCallListChanged(Landroid/telephony/data/IDataServiceCallback;)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mDataCallListChangedCallbacks:Ljava/util/List;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mDataCallListChangedCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method


# virtual methods
.method public cancelHandover(ILandroid/telephony/data/DataServiceCallback;)V
    .registers 6

    const-string v0, "callback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Landroid/telephony/data/DataService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelHandover: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/telephony/data/DataServiceCallback;->onHandoverCancelled(I)V

    return-void
.end method

.method public abstract close()V
.end method

.method public deactivateDataCall(IILandroid/telephony/data/DataServiceCallback;)V
    .registers 5

    if-eqz p3, :cond_6

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/telephony/data/DataServiceCallback;->onDeactivateDataCallComplete(I)V

    :cond_6
    return-void
.end method

.method public final getSlotIndex()I
    .registers 2

    iget v0, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mSlotIndex:I

    return v0
.end method

.method public final notifyApnUnthrottled(Ljava/lang/String;)V
    .registers 10

    iget-object v0, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mApnUnthrottledCallbacks:Ljava/util/List;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mApnUnthrottledCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/data/IDataServiceCallback;

    iget-object v3, p0, Landroid/telephony/data/DataService$DataServiceProvider;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v3}, Landroid/telephony/data/DataService;->-$$Nest$fgetmHandler(Landroid/telephony/data/DataService;)Landroid/telephony/data/DataService$DataServiceHandler;

    move-result-object v3

    const/16 v4, 0x10

    iget v5, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mSlotIndex:I

    const/4 v6, 0x0

    new-instance v7, Landroid/telephony/data/DataService$ApnUnthrottledIndication;

    invoke-direct {v7, p1, v2}, Landroid/telephony/data/DataService$ApnUnthrottledIndication;-><init>(Ljava/lang/String;Landroid/telephony/data/IDataServiceCallback;)V

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/telephony/data/DataService$DataServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_9

    :cond_2d
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public final notifyDataCallListChanged(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/DataCallResponse;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mDataCallListChangedCallbacks:Ljava/util/List;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mDataCallListChangedCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/data/IDataServiceCallback;

    iget-object v3, p0, Landroid/telephony/data/DataService$DataServiceProvider;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v3}, Landroid/telephony/data/DataService;->-$$Nest$fgetmHandler(Landroid/telephony/data/DataService;)Landroid/telephony/data/DataService$DataServiceHandler;

    move-result-object v3

    const/16 v4, 0xb

    iget v5, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mSlotIndex:I

    const/4 v6, 0x0

    new-instance v7, Landroid/telephony/data/DataService$DataCallListChangedIndication;

    invoke-direct {v7, p1, v2}, Landroid/telephony/data/DataService$DataCallListChangedIndication;-><init>(Ljava/util/List;Landroid/telephony/data/IDataServiceCallback;)V

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/telephony/data/DataService$DataServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_9

    :cond_2d
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public final notifyDataProfileUnthrottled(Landroid/telephony/data/DataProfile;)V
    .registers 10

    iget-object v0, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mApnUnthrottledCallbacks:Ljava/util/List;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mApnUnthrottledCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/data/IDataServiceCallback;

    iget-object v3, p0, Landroid/telephony/data/DataService$DataServiceProvider;->this$0:Landroid/telephony/data/DataService;

    invoke-static {v3}, Landroid/telephony/data/DataService;->-$$Nest$fgetmHandler(Landroid/telephony/data/DataService;)Landroid/telephony/data/DataService$DataServiceHandler;

    move-result-object v3

    const/16 v4, 0x10

    iget v5, p0, Landroid/telephony/data/DataService$DataServiceProvider;->mSlotIndex:I

    const/4 v6, 0x0

    new-instance v7, Landroid/telephony/data/DataService$ApnUnthrottledIndication;

    invoke-direct {v7, p1, v2}, Landroid/telephony/data/DataService$ApnUnthrottledIndication;-><init>(Landroid/telephony/data/DataProfile;Landroid/telephony/data/IDataServiceCallback;)V

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/telephony/data/DataService$DataServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_9

    :cond_2d
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public requestDataCallList(Landroid/telephony/data/DataServiceCallback;)V
    .registers 4

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/telephony/data/DataServiceCallback;->onRequestDataCallListComplete(ILjava/util/List;)V

    return-void
.end method

.method public setDataProfile(Ljava/util/List;ZLandroid/telephony/data/DataServiceCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/DataProfile;",
            ">;Z",
            "Landroid/telephony/data/DataServiceCallback;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_6

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/telephony/data/DataServiceCallback;->onSetDataProfileComplete(I)V

    :cond_6
    return-void
.end method

.method public setInitialAttachApn(Landroid/telephony/data/DataProfile;ZLandroid/telephony/data/DataServiceCallback;)V
    .registers 5

    if-eqz p3, :cond_6

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/telephony/data/DataServiceCallback;->onSetInitialAttachApnComplete(I)V

    :cond_6
    return-void
.end method

.method public setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/telephony/data/DataServiceCallback;)V
    .registers 20

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p11

    invoke-virtual/range {v0 .. v7}, Landroid/telephony/data/DataService$DataServiceProvider;->setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;Landroid/telephony/data/DataServiceCallback;)V

    return-void
.end method

.method public setupDataCall(ILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;Landroid/telephony/data/DataServiceCallback;)V
    .registers 10

    if-eqz p7, :cond_7

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p7, v0, v1}, Landroid/telephony/data/DataServiceCallback;->onSetupDataCallComplete(ILandroid/telephony/data/DataCallResponse;)V

    :cond_7
    return-void
.end method

.method public startHandover(ILandroid/telephony/data/DataServiceCallback;)V
    .registers 6

    const-string v0, "callback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Landroid/telephony/data/DataService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startHandover: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/telephony/data/DataServiceCallback;->onHandoverStarted(I)V

    return-void
.end method
